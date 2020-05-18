-------------------------------------------------------
-- Design Name : syn_fifo
-- Created on 06/2017
-- Notes: no read/write at the same time because 
-- of using single port memory 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity syn_fifo is
    generic (
        DATA_WIDTH :natural := 8;
        ADDR_WIDTH :natural := 8
    );
    port (
        clk      :in  std_logic; -- Clock input
        rst      :in  std_logic; -- Active high reset
        data_in  :in  std_logic_vector (DATA_WIDTH-1 downto 0); -- Data input
        rd_en    :in  std_logic; -- Read enable
        wr_en    :in  std_logic; -- Write Enable
        data_out :out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output
        empty    :out std_logic; -- FIFO empty
        full     :out std_logic  -- FIFO full
    );
end entity;
architecture main of syn_fifo is
    -------------Internal variables-------------------
    constant RAM_DEPTH :integer := 2**ADDR_WIDTH;

    signal wr_pointer       :unsigned (ADDR_WIDTH-1 downto 0);
    signal rd_pointer       :unsigned (ADDR_WIDTH-1 downto 0);
	signal pointer          :unsigned (ADDR_WIDTH-1 downto 0);
    signal status_cnt       :unsigned (ADDR_WIDTH   downto 0);
    signal q                :std_logic_vector (DATA_WIDTH-1 downto 0);
    signal q_saved          :std_logic_vector (DATA_WIDTH-1 downto 0);	
    signal rd_en_delayed    :std_logic;
    
begin
    -------------Code Start---------------------------
	mem: entity work.mem(main)
	generic map (
		data_width => DATA_WIDTH,
		addr_width => ADDR_WIDTH
	)
	port map (
		address => pointer, -- mux of wr_pointer and rd_pointer
		clock => clk,
		data => data_in, 
		wren => wr_en,
		q => q
	);
	
    full  <= '1' when (status_cnt = RAM_DEPTH) else '0';
    empty <= '1' when (status_cnt = 0) else '0';

    WRITE_POINTER:
    process begin
		wait until rising_edge(clk);
        if (rst = '1') then
            wr_pointer <= (others=>'0');
        elsif (wr_en = '1') then
			wr_pointer <= wr_pointer + 1;
        end if;
    end process;
    
    READ_POINTER:
    process begin
		wait until rising_edge(clk);
        if (rst  = '1') then
            rd_pointer <= (others=>'0');
        elsif (rd_en = '1') then
            rd_pointer <= rd_pointer + 1;
        end if;
    end process;
	
	pointer <= unsigned(wr_pointer) when(wr_en = '1') else unsigned(rd_pointer); 
	
	process
	begin 
	  wait until rising_edge(clk);
	  rd_en_delayed <= rd_en; 
	end process;
	
	process
	begin
	  wait until rising_edge(clk);
	  if rd_en_delayed = '1' then 
	     q_saved <= q;
	  end if;
	end process;
	
	-- keep the data at the output port until used, 
    READ_DATA:
	data_out <= q when (rd_en_delayed = '1') else q_saved;

    STATUS_COUNTER:
    process begin
		wait until rising_edge(clk);
        if (rst = '1') then
            status_cnt <= (others=>'0');
        -- Read but no write.
        elsif ((rd_en = '1') and (wr_en = '0') and (status_cnt /= 0)) then
            status_cnt <= status_cnt - 1;
        -- Write but no read.
        elsif ((wr_en = '1') and(rd_en = '0') and (full = '0')) then
            status_cnt <= status_cnt + 1;
        end if;
    end process;

    
end architecture;
