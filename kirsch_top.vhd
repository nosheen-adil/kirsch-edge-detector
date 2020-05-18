-------------------------------------------------------------------------------
-- top_kirsch.vhd
-- top level code for kirsch edge detector
-------------------------------------------------------------------------------
-- NOTE
--   - pb are active lo
-- 
-------------------------------------------------------------------------------
-- Bo Yang
-- 06/2017
-- Adding read, write FIFO
-- one of the purposes is to read and write in a chunk of data 
-- that is bigger than 1 byte each time. 
-- ---------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.kirsch_synth_pkg.all;

entity kirsch_top is
  generic (
        DATA_WIDTH :natural := 8;
        ADDR_WIDTH :natural := 8
  );
  port (
    --------------------------------------------------
    reset_n    : in  std_logic;
    clk        : in  std_logic;
    --------------------------------------------------
    uart_rx    : in  std_logic;  -- uart receive
    uart_tx    : out std_logic;  -- uart transmit
    --------------------------------------------------
    sw         : in  std_logic_vector( 7 downto 0 );
    pb         : in  std_logic_vector( 3 downto 0 );
    --------------------------------------------------
    seg7_en    : out std_logic_vector( 1 downto 0 ); 
    seg7_data  : out std_logic_vector( 7 downto 0 );
    --------------------------------------------------
    led        : out std_logic_vector( 7 downto 0 )
    --------------------------------------------------
  );
end entity;


architecture main of kirsch_top is

  signal reset          : std_logic;
  signal k_i_valid      : std_logic;
  signal k_i_pixel      : unsigned( 7 downto 0 );
  signal k_o_valid      : std_logic;
  signal k_o_edge       : std_logic;
  signal k_o_dir        : direction_ty;
  signal k_o_mode       : mode_ty;
  signal k_o_row        : unsigned(7 downto 0);
  signal k_o_col        : unsigned(7 downto 0);  
  signal k_o_data       : std_logic_vector(7 downto 0);

  signal tx_is_loopback : std_logic;
  signal tx_valid       : std_logic;
  signal tx_busy_delayed: std_logic;
  signal tx_busy        : std_logic;
  signal rx_valid       : std_logic;
  signal rx_error       : std_logic;
       
       
  signal seg7_num       : unsigned(7 downto 0);
  signal seg7_pts       : std_logic_vector( 1 downto 0 );

  signal uart_reset     : std_logic;
  signal reset_count    : unsigned( 10 downto 0 );
  
  signal uart_pixel     : std_logic_vector(7 downto 0);

  signal k_i_valid_delayed : std_logic;

  -- pb0 
  signal pb0_delayed    : std_logic;
  signal pb0_r_edge     : std_logic;

  -- write fifo
  signal wb_full        : std_logic;
  signal wb_empty       : std_logic;
  
  -- read fifo
  signal rb_full          : std_logic;
  signal rb_empty         : std_logic;
  signal rb_i_valid       : std_logic;
  signal rb_i_data        : std_logic_vector(7 downto 0);
  signal rb_o_data        : std_logic_vector(7 downto 0);
  signal rb_rd_en         : std_logic;
  signal rb_rd_en_delayed : std_logic;
  signal rb_rd_en_true    : std_logic;
  signal wait_for_tx_valid: std_logic;
  signal wait_for_tx_valid_delayed : std_logic;
  
  begin

	-- kirsch <- write_fifo <- uart receiving data
	write_fifo: entity work.syn_fifo(main)
	generic map (
		DATA_WIDTH => DATA_WIDTH,
		ADDR_WIDTH => ADDR_WIDTH
	)
	port map (
		clk => clk,
		rst => reset,
		data_in => uart_pixel,
		rd_en => k_i_valid, 
		wr_en => rx_valid, 
		unsigned(data_out) => k_i_pixel, 
		empty => wb_empty,
		full => wb_full
	);
	
	-- kirsch -> read_fifo -> uart sending data
	read_fifo: entity work.syn_fifo(main)
	generic map (
		DATA_WIDTH => DATA_WIDTH,
		ADDR_WIDTH => ADDR_WIDTH
	)
	port map (
		clk => clk,
		rst => reset,
		data_in => rb_i_data,
		rd_en => rb_rd_en_true, --tx_valid, 
		wr_en => rb_i_valid, 
		data_out => rb_o_data, -- tx_data, 
		empty => rb_empty,
		full => rb_full
	);
	
  process	
  begin 
    wait until rising_edge(clk);
    pb0_delayed <= pb(0);
  end process;
  pb0_r_edge <= '1' when (pb0_delayed = '0' and pb(0) = '1') else '0';  
  -- reset after pb0 released, has to reset fifo
  reset      <= not( reset_n ); --  or pb0_r_edge;
  
  ------------------------------------------------------------  
  rb_i_valid <= k_o_valid when (tx_is_loopback = '0') else k_i_valid_delayed;
  rb_i_data  <= k_o_data when (tx_is_loopback = '0') else std_logic_vector(k_i_pixel);
  ------------------------------------------------------------
  -- delay reset to the uart so that the uart has time to send
  -- reset='1' back to the PC before the uart enters reset state

  process begin
    wait until rising_edge( clk );
    if reset = '0' then
      reset_count <= ( others => '0' );
    else
      reset_count <= reset_count + 1;
    end if;
  end process;

  process begin
    wait until rising_edge( clk );
    if reset = '0' then
      uart_reset <= '0';
    elsif reset_count = 2 ** reset_count'length - 1 then
      uart_reset <= '1';
    end if;
  end process;
    
  ------------------------------------------------------------
  
  u_uart: entity work.uart( main )
    port map (
      ----------------------------------------      
      clk      => clk,
      rst      => uart_reset,
      baud     => '1', -- baud = 115 kbps
      ----------------------------------------      
      rx       => uart_rx,
      rxrdy    => rx_valid,
      dout     => uart_pixel,
      rxerr    => rx_error,
      ----------------------------------------      
      ld       => tx_valid,
      din      => rb_o_data,
      tx       => uart_tx,
      txbusy   => tx_busy
    );

  ------------------------------------------------------------
  -- notes: because the baude rate is much lower than the frequency 
  -- fpga works at, there is no need to worry that 
  -- there are fewer than 3 bubbles between valid parcels
  k_i_valid <= not wb_empty and not rx_valid; 
  
  process	
  begin
	wait until rising_edge(clk);
	k_i_valid_delayed <= k_i_valid; 
  end process;
  ------------------------------------------------------------
  u_kirsch: entity work.kirsch(main)
    port map(
      clk           => clk,
      reset         => reset,
      i_valid       => k_i_valid_delayed and pb(0), 
      i_pixel       => k_i_pixel,
      o_valid       => k_o_valid,
      o_edge        => k_o_edge,
      o_dir         => k_o_dir,
      o_mode        => k_o_mode,
      o_row         => k_o_row,
      o_col         => k_o_col
    );

  ------------------------------------------------------------
  
  k_o_data( 7 )          <= reset;
  k_o_data( 6 )          <= rx_error;
  k_o_data( 5 downto 4 ) <= k_o_mode;
  k_o_data( 3 )          <= k_o_edge;
  k_o_data( 2 downto 0 ) <= k_o_dir;

  ------------------------------------------------------------
  -- data loopback when pb(0) is pushed
  -- for debugging purposes, use sw(7) for loopback
  -- tx_is_loopback <= not pb(0) or sw(7);
  --  led(7) <= sw(7);
  ------------------------------------------------------------
  tx_is_loopback <= not pb(0);
  ------------------------------------------------------------ 
  process begin
    wait until rising_edge(clk);
    tx_busy_delayed <= tx_busy;
  end process;
  ------------------------------------------------------------
  -- don't read from fifo (rb_rd_en_true = '1') until the 
  -- current data on fifo output port is sent (tx_valid = '1')
  process
  begin
    wait until rising_edge(clk);
	if reset = '1' then 
	  wait_for_tx_valid <= '0';
	elsif rb_rd_en_true = '1' then 
      wait_for_tx_valid <= '1';
    elsif tx_valid = '1' then 
	  wait_for_tx_valid <= '0';
	end if;
  end process;
  process	
  begin
	wait until rising_edge(clk);
	if reset = '1'  then 
	  wait_for_tx_valid_delayed <= '0';
	else 
      wait_for_tx_valid_delayed <= wait_for_tx_valid;
	end if;
  end process;	
 
  process	
  begin
	wait until rising_edge(clk);
	if (reset = '1') then
	  rb_rd_en <= '0';
	elsif (rb_rd_en = '1') then
	  rb_rd_en <= '0';
	elsif (tx_busy = '0' and tx_busy_delayed = '0' and rb_empty = '0') then
	  rb_rd_en <= '1';
	end if;
  end process;  
  rb_rd_en_true <= rb_rd_en and not rb_i_valid and not wait_for_tx_valid_delayed; 
  ------------------------------------------------------------    
  process	
  begin
	wait until rising_edge(clk);
    rb_rd_en_delayed <= rb_rd_en_true;
  end process;
  ------------------------------------------------------------
  -- reset forces tx_valid, so that the PC can detect that we've hit
  -- reset even if there aren't any pixels being sent
  -- tx_valid
  process	
  begin
	wait until rising_edge(clk);
	if (reset = '1') then
	  tx_valid <= '1';	
    else 
      tx_valid <= rb_rd_en_delayed;
	end if;
  end process; 
  ------------------------------------------------------------
  
  seg7_pts  <= k_o_mode;
  seg7_num  <= k_o_row;

  u_seg7 : entity work.num_seg7( main )
    port map
      ( clk    => clk
      , reset  => reset
      -- , i_num  => unsigned( seg7_num )
	  -- DEBUG
	  , i_num  => unsigned( seg7_num ) -- unsigned(rb_o_data_saved) -- dbg_counter(7 downto 0)-- unsigned( seg7_num ) -- unsigned(rb_o_data_saved)  -- unsigned( seg7_num ) -- unsigned(rb_o_data_saved) -- unsigned(rb_o_data)
      , i_pts  => seg7_pts
      , o_en   => seg7_en
      , o_char => seg7_data
      );
  
  ------------------------------------------------------------
end architecture;

