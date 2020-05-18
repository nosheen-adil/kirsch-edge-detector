library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;
use work.kirsch_synth_pkg.all;

entity kirsch is
  port(
    clk        : in  std_logic;                      
    reset      : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  unsigned(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out direction_ty;
    o_mode     : out mode_ty;
    o_row      : out unsigned(7 downto 0);
    o_col      : out unsigned(7 downto 0)
  );  
end entity;

architecture main of kirsch is
	type std_logic_vector_array is array(0 to 2) of std_logic_vector(7 downto 0);

	type direction_8 is record
		val : std_logic_vector(7 downto 0);
		ty : direction_ty;
	end record;
	type direction_10 is record
		val : std_logic_vector(9 downto 0);
		ty : direction_ty;
	end record;
	type direction_14 is record
		val : std_logic_vector(13 downto 0);
		ty : direction_ty;
	end record;
	
	signal M_a, M_b, M_c, r_a, r_b, r_c, r_d, r_e, r_f, r_g, r_h, r_i, i3, i4 : std_logic_vector(7 downto 0);
	signal M_out : std_logic_vector_array;
	signal r1, i1, i2 : direction_8;
	signal r4, r5 : direction_10;
	signal r7 : direction_14;
	signal r2 : std_logic_vector(8 downto 0);
	signal r3 : std_logic_vector(11 downto 0);
	signal r6 : std_logic_vector(12 downto 0);
	signal wr_en : std_logic_vector(0 to 2);
	signal v : std_logic_vector(0 to 7);

	component mem
		port(
			address : in unsigned(7 downto 0);
			clock : in std_logic;
			data : in std_logic_vector(7 downto 0);
			wren : in std_logic;
			q : out std_logic_vector(7 downto 0)
		);
	end component;
begin
	M_a <= M_out(1) when wr_en(0) = '1' else M_out(2) when wr_en(1) = '1' else M_out(0);
	M_b <= M_out(2) when wr_en(0) = '1' else M_out(0) when wr_en(1) = '1' else M_out(1);
	M_c <= std_logic_vector(i_pixel);
	
	mem_gen : for i in 0 to 2 generate
	begin
		m : mem
			port map(
				address => o_col,
				clock => clk,
				data => M_c,
				wren => wr_en(i),
				q => M_out(i)
			);
	end generate;

	v(0) <= i_valid;

	state : process begin
		wait until rising_edge(clk);
		if reset = '1' then
			v(1 to 7) <= (others => '0');
		else
			if v(0) = '1' and o_row >= 2 and o_col >= 2 then
				v(1) <= '1';
			else
				v(1) <= '0';
			end if;
			v(2 to 7) <= v(1 to 6);
		end if;
	end process;

	mode : process begin
		wait until rising_edge(clk);
		if reset = '1' then
			o_mode <= m_reset;
		elsif v(0) = '1' then
			if (o_mode = m_busy and o_col = (image_width - 1) and o_row = (image_height - 1)) then
				o_mode <= m_idle;
			else
				o_mode <= m_busy;
			end if;
		elsif o_mode = m_reset then
			o_mode <= m_idle;
		end if;
	end process;

	image : process begin
		wait until rising_edge(clk);
		if v(0) = '1' and o_row >= 2 then
			if o_col = 0 then
				r_a <= M_a;
				r_h <= M_b;
				r_g <= M_c;
			elsif o_col = 1 then
				r_b <= M_a;
				r_i <= M_b;
				r_f <= M_c;
			else
				r_c <= M_a;
				r_d <= M_b;
				r_e <= M_c;
			end if;
		elsif v(3) = '1' then
			r_a <= r_b;
			r_h <= r_i;
			r_g <= r_f;
			r_b <= r_c;
			r_i <= r_d;
			r_f <= r_e;
		end if;
	end process;

	counters : process begin
		wait until rising_edge(clk);
		if reset = '1' then
			o_row <= to_unsigned(0, 8);
			o_col <= to_unsigned(0, 8);
			wr_en <= "100";
		elsif v(0) = '1' then
			o_col <= o_col + 1;
			if o_mode = m_idle and o_row = (image_height - 1) then
				o_row <= o_row + 1;
			elsif o_col = (image_width - 1) and not(o_row = (image_height - 1)) then
				o_row <= o_row + 1;
				wr_en <= wr_en ror 1;
			end if;
		end if;
	end process;

	i1.val <= r_b when v(0) = '1' else r_d when v(1) = '1' else r_f when v(2) = '1' else r_h;
	i2.val <= r_g when v(0) = '1' else r_a when v(1) = '1' else r_c when v(2) = '1' else r_e;
	i1.ty <= dir_nw when v(0) = '1' else dir_ne when v(1) = '1' else dir_se when v(2) = '1' else dir_sw;
	i2.ty <= dir_w when v(0) = '1' else dir_n when v(1) = '1' else dir_e when v(2) = '1' else dir_s;
	i3 <= r_a when v(0) = '1' else r_b when v(1) = '1' else r_d when v(2) = '1' else r_f;
	i4 <= r_h when v(0) = '1' else r_c when v(1) = '1' else r_e when v(2) = '1' else r_g;

	max1 : process begin
		wait until rising_edge(clk);
		if unsigned(i2.val) >= unsigned(i1.val) then
			r1 <= i2;
		else
			r1 <= i1;
		end if;
	end process;

	add1 : process begin
		wait until rising_edge(clk);
		r2 <= std_logic_vector(unsigned('0' & i3) + unsigned('0' & i4)); 
	end process;
 
	add2 : process begin
		wait until rising_edge(clk);
		if v(1) = '1' then
			r3 <= "000" & r2;
		else
			r3 <= std_logic_vector(unsigned(r2) + unsigned(r3));
		end if;
	end process;

	add3 : process begin
		wait until rising_edge(clk);
		r4.val <= std_logic_vector(unsigned('0' & r1.val) + unsigned('0' & r2));
		r4.ty <= r1.ty;
	end process;

	max2 : process begin
		wait until rising_edge(clk);
		if v(2) = '1' then
			r5 <= r4;
		else
			if r4.val > r5.val then
				r5 <= r4;
			end if;
		end if;
	end process;

	add4 : process begin
		wait until rising_edge(clk);
		r6 <= std_logic_vector(unsigned('0' & (r3 sll 1)) + unsigned('0' & r3));
	end process;

	sub1 : process begin
		wait until rising_edge(clk);
		r7.val <= std_logic_vector(signed(("0000" & r5.val) sll 3) - signed('0' & r6));
		r7.ty <= r5.ty;
	end process;

	cmp1 : process begin
		wait until rising_edge(clk);
		o_valid <= v(7);
		if signed(r7.val) > 383 then
			o_edge <= '1';
			o_dir <= r7.ty;
		else
			o_edge <= '0';
			o_dir <= "000";
		end if;
	end process;
end architecture;
