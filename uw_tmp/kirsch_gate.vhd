
-- 
-- Definition of  kirsch
-- 
--      Sat Mar 30 21:17:22 2019
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_3_3 is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_3_3 ;

architecture BEHAVIORAL of select_3_3 is 
   component sim_select
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_4_4 is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_4_4 ;

architecture BEHAVIORAL of select_4_4 is 
   component sim_select
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_select
      generic map (size => 4) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8u_8u ;

architecture BEHAVIORAL of gt_8u_8u is 
   component sim_gt
      generic (size : integer := 8;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_gt
      generic map (size => 8,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_10u_10u is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10u_10u ;

architecture BEHAVIORAL of gt_10u_10u is 
   component sim_gt
      generic (size : integer := 10;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_gt
      generic map (size => 10,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_8u_8u ;

architecture BEHAVIORAL of and_8u_8u is 
   component sim_and
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_and
      generic map (size => 8) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_7u_7u ;

architecture BEHAVIORAL of and_7u_7u is 
   component sim_and
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_and
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_8u_8u_0_0 ;

architecture BEHAVIORAL of inc_8u_8u_0_0 is 
   component sim_inc
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_inc
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_9u_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9u_9u_9u_0_0 ;

architecture BEHAVIORAL of add_9u_9u_9u_0_0 is 
   component sim_add
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix31 : sim_add
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_11u_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_11u_11u_11u_0_0 ;

architecture BEHAVIORAL of add_11u_11u_11u_0_0 is 
   component sim_add
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix28 : sim_add
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity sub_12u_12u_12u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_12u_12u_12u_0 ;

architecture BEHAVIORAL of sub_12u_12u_12u_0 is 
   component sim_sub
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix40 : sim_sub
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   port (
      clk : IN std_logic ;
      we : IN std_logic ;
      address : IN std_logic_vector (7 DOWNTO 0) ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
end clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F ;

architecture BEHAVIORAL of clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   component sim_ram
      generic (size : integer := 8;
         sizead : integer := 8;
         numwords : integer := 256;
         use_clk : string := "true";
         use_clk2 : string := "false";
         use_data2 : string := "false";
         use_addr2 : string := "true";
         use_addr3 : string := "false";
         use_addr4 : string := "false";
         use_we : string := "true";
         use_we2 : string := "false";
         use_q2 : string := "false";
         use_raminit : string := "false") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0) ;
         clk2 : IN std_logic ;
         data2 : IN std_logic_vector (7 DOWNTO 0) ;
         addr3 : IN std_logic_vector (7 DOWNTO 0) ;
         addr4 : IN std_logic_vector (7 DOWNTO 0) ;
         we2 : IN std_logic ;
         q2 : OUT std_logic_vector (7 DOWNTO 0) ;
         q3 : OUT std_logic_vector (7 DOWNTO 0) ;
         q4 : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;type DANGLING_type is array (0 downto 0,511 downto 0) of 
   std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ix0 : sim_ram
      generic map (size => 8,
         sizead => 8,
         numwords => 256,
         use_clk => "true",
         use_clk2 => "false",
         use_data2 => "false",
         use_addr2 => "true",
         use_addr3 => "false",
         use_addr4 => "false",
         use_we => "true",
         use_we2 => "false",
         use_q2 => "false",
         use_raminit => "false") 
       port map ( clk=>clk, we=>we, address=>address, data=>data, q=>q, 
      addr2=>addr2, clk2=>DANGLING(0,0), data2(7)=>DANGLING(0,1), data2(6)=>
      DANGLING(0,2), data2(5)=>DANGLING(0,3), data2(4)=>DANGLING(0,4), 
      data2(3)=>DANGLING(0,5), data2(2)=>DANGLING(0,6), data2(1)=>
      DANGLING(0,7), data2(0)=>DANGLING(0,8), addr3(7)=>DANGLING(0,9), 
      addr3(6)=>DANGLING(0,10), addr3(5)=>DANGLING(0,11), addr3(4)=>
      DANGLING(0,12), addr3(3)=>DANGLING(0,13), addr3(2)=>DANGLING(0,14), 
      addr3(1)=>DANGLING(0,15), addr3(0)=>DANGLING(0,16), addr4(7)=>
      DANGLING(0,17), addr4(6)=>DANGLING(0,18), addr4(5)=>DANGLING(0,19), 
      addr4(4)=>DANGLING(0,20), addr4(3)=>DANGLING(0,21), addr4(2)=>
      DANGLING(0,22), addr4(1)=>DANGLING(0,23), addr4(0)=>DANGLING(0,24), 
      we2=>DANGLING(0,25), q2(7)=>DANGLING(0,26), q2(6)=>DANGLING(0,27), 
      q2(5)=>DANGLING(0,28), q2(4)=>DANGLING(0,29), q2(3)=>DANGLING(0,30), 
      q2(2)=>DANGLING(0,31), q2(1)=>DANGLING(0,32), q2(0)=>DANGLING(0,33), 
      q3(7)=>DANGLING(0,34), q3(6)=>DANGLING(0,35), q3(5)=>DANGLING(0,36), 
      q3(4)=>DANGLING(0,37), q3(3)=>DANGLING(0,38), q3(2)=>DANGLING(0,39), 
      q3(1)=>DANGLING(0,40), q3(0)=>DANGLING(0,41), q4(7)=>DANGLING(0,42), 
      q4(6)=>DANGLING(0,43), q4(5)=>DANGLING(0,44), q4(4)=>DANGLING(0,45), 
      q4(3)=>DANGLING(0,46), q4(2)=>DANGLING(0,47), q4(1)=>DANGLING(0,48), 
      q4(0)=>DANGLING(0,49));
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_6u_6u is 
   port (
      a : IN std_logic_vector (5 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_6u_6u ;

architecture BEHAVIORAL of or_6u_6u is 
   component sim_or
      generic (size : integer := 6) ;
      
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_or
      generic map (size => 6) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_12u_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_12u_12u_12u_0_0 ;

architecture BEHAVIORAL of add_12u_12u_12u_0_0 is 
   component sim_add
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix38 : sim_add
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_0_work_kirsch_main ;

architecture INTERFACE of ram_new_0_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_1_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_1_work_kirsch_main ;

architecture INTERFACE of ram_new_1_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen) ;
   mem_0 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_2_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_2_work_kirsch_main ;

architecture INTERFACE of ram_new_2_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen) ;
   mem_1 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs44_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs47_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs49_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs51_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs53_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs55_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs57_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs59_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_col : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_4_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_11u_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component ram_new_0_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_new_1_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_new_2_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal o_mode_EXMPLR200: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR201: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_col_EXMPLR202: std_logic_vector (7 DOWNTO 0) ;
   
   signal M_a: std_logic_vector (7 DOWNTO 0) ;
   
   signal M_b: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_a: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_b: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_c: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_d: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_e: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_f: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_g: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_h: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_i: std_logic_vector (7 DOWNTO 0) ;
   
   signal i3: std_logic_vector (7 DOWNTO 0) ;
   
   signal i4: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3: std_logic_vector (11 DOWNTO 0) ;
   
   signal r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal wr_en: std_logic_vector (0 TO 2) ;
   
   signal GND: std_logic ;
   
   signal v: std_logic_vector (1 TO 7) ;
   
   signal PWR, not_wr_en_0, rtlc0_P5_SS0_n20, not_rtlcn21, not_i_valid, 
      rtlc3_P5_SS0_n21, not_v_1, not_v_2, rtlc4_P8_SS0_n28, rtlc4_P9_SS0_n31, 
      rtlc5n38, rtlc6n38, rtlc9n54, rtlc9n63, rtlc10n61, rtlc10n68: 
   std_logic ;
   
   signal r_a_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_h_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_g_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_b_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_i_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_f_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_v_3, rtlc11n127, rtlc11n128, not_rtlc11n127, not_rtlc11n128, 
      rtlc11n208, not_rtlcs6, not_rtlcs4, rtlc12n129, not_rtlcs9, rtlc12n164, 
      rtlc12n265, rtlc12n284, r1_13n1ss1_10, r1_13n1ss1_9, r1_13n1ss1_8, 
      r1_13n1ss1_7, r1_13n1ss1_6, r1_13n1ss1_5, r1_13n1ss1_4, r1_13n1ss1_3, 
      rtlc13n39: std_logic ;
   
   signal r2_14n0r1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3_15n1ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r4_16n0r1: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlc17n46: std_logic ;
   
   signal r6_18n0r1: std_logic_vector (12 DOWNTO 1) ;
   
   signal r7_19n0r1_13, r7_19n0r1_12, r7_19n0r1_11, r7_19n0r1_10, 
      r7_19n0r1_9, r7_19n0r1_8, r7_19n0r1_7, not_rtlc20n75, rtlc20n72, 
      rtlc20n73, not_r7_val_13, rtlc20n75, rtlcn16, rtlcn17, rtlcn18, 
      rtlcn20, rtlcn21, rtlcn25, rtlcn28, rtlcn189, rtlcn198, not_rtlc10n68, 
      rtlcn210, not_rtlc6n38, rtlcn213, not_rtlcn198, not_rtlcs3, 
      not_rtlc12n129, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs6, 
      not_o_col_0, rtlcs8, rtlcs9, not_o_mode_1, not_o_mode_0, not_o_col_7, 
      not_o_col_6, not_o_col_5, not_o_col_4, not_o_col_3, not_o_col_2, 
      not_o_col_1, not_rtlcn25, rtlcn5470: std_logic ;
   
   signal M_out_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal M_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal M_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal r1_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal i1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal i2_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal r4_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r4_val: std_logic_vector (9 DOWNTO 0) ;
   
   signal r5_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r5_val: std_logic_vector (9 DOWNTO 0) ;
   
   signal r7_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r7_val_13, r7_val_12, r7_val_11, r7_val_10, r7_val_9, r7_val_8, 
      r7_val_7, rtlcn5502, rtlcn5503, rtlcn5505, rtlcn5507, rtlcn5509, 
      rtlcn5511, rtlcn5513, rtlcn5514, rtlcn5515, not_rtlc13n39, 
      not_rtlc17n33, rtlc4_44_and_33_nx0, rtlc_420_and_56_nx0, NOT_r6_0, 
      ix1363_nx66, ix1363_nx72, ix1363_nx78, ix1363_nx84, ix1363_nx90, 
      ix1363_nx96, ix1363_nx102, ix1363_nx108, ix1363_nx114, ix1363_nx120, 
      ix1363_nx126, ix1363_nx132: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_mode(1) <= o_mode_EXMPLR200(1) ;
   o_mode(0) <= o_mode_EXMPLR200(0) ;
   o_row(7) <= o_row_EXMPLR201(7) ;
   o_row(6) <= o_row_EXMPLR201(6) ;
   o_row(5) <= o_row_EXMPLR201(5) ;
   o_row(4) <= o_row_EXMPLR201(4) ;
   o_row(3) <= o_row_EXMPLR201(3) ;
   o_row(2) <= o_row_EXMPLR201(2) ;
   o_row(1) <= o_row_EXMPLR201(1) ;
   o_row(0) <= o_row_EXMPLR201(0) ;
   o_col(7) <= o_col_EXMPLR202(7) ;
   o_col(6) <= o_col_EXMPLR202(6) ;
   o_col(5) <= o_col_EXMPLR202(5) ;
   o_col(4) <= o_col_EXMPLR202(4) ;
   o_col(3) <= o_col_EXMPLR202(3) ;
   o_col(2) <= o_col_EXMPLR202(2) ;
   o_col(1) <= o_col_EXMPLR202(1) ;
   o_col(0) <= o_col_EXMPLR202(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   M_a_select_0Bus3_0 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(0), b(1)=>
      M_out_2(0), b(0)=>M_out_0(0), d=>M_a(0));
   M_a_select_0Bus3_1 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(1), b(1)=>
      M_out_2(1), b(0)=>M_out_0(1), d=>M_a(1));
   M_a_select_0Bus3_2 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(2), b(1)=>
      M_out_2(2), b(0)=>M_out_0(2), d=>M_a(2));
   M_a_select_0Bus3_3 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(3), b(1)=>
      M_out_2(3), b(0)=>M_out_0(3), d=>M_a(3));
   M_a_select_0Bus3_4 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(4), b(1)=>
      M_out_2(4), b(0)=>M_out_0(4), d=>M_a(4));
   M_a_select_0Bus3_5 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(5), b(1)=>
      M_out_2(5), b(0)=>M_out_0(5), d=>M_a(5));
   M_a_select_0Bus3_6 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(6), b(1)=>
      M_out_2(6), b(0)=>M_out_0(6), d=>M_a(6));
   M_a_select_0Bus3_7 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_1(7), b(1)=>
      M_out_2(7), b(0)=>M_out_0(7), d=>M_a(7));
   not_wr_en_0 <= NOT wr_en(0) ;
   rtlc0_P5_SS0_n20 <= not_wr_en_0 AND wr_en(1) ;
   M_b_select_8Bus4_0 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(0), b(1)=>
      M_out_0(0), b(0)=>M_out_1(0), d=>M_b(0));
   M_b_select_8Bus4_1 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(1), b(1)=>
      M_out_0(1), b(0)=>M_out_1(1), d=>M_b(1));
   M_b_select_8Bus4_2 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(2), b(1)=>
      M_out_0(2), b(0)=>M_out_1(2), d=>M_b(2));
   M_b_select_8Bus4_3 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(3), b(1)=>
      M_out_0(3), b(0)=>M_out_1(3), d=>M_b(3));
   M_b_select_8Bus4_4 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(4), b(1)=>
      M_out_0(4), b(0)=>M_out_1(4), d=>M_b(4));
   M_b_select_8Bus4_5 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(5), b(1)=>
      M_out_0(5), b(0)=>M_out_1(5), d=>M_b(5));
   M_b_select_8Bus4_6 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(6), b(1)=>
      M_out_0(6), b(0)=>M_out_1(6), d=>M_b(6));
   M_b_select_8Bus4_7 : select_3_3 port map ( a(2)=>wr_en(0), a(1)=>
      rtlc0_P5_SS0_n20, a(0)=>not_rtlcn21, b(2)=>M_out_2(7), b(1)=>
      M_out_0(7), b(0)=>M_out_1(7), d=>M_b(7));
   i1_val_select_16Bus31_0 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(0), b(2)=>r_d(0), b(1)=>r_f(0), b(0)=>r_h(0), d=>i1_val(0));
   i1_val_select_16Bus31_1 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(1), b(2)=>r_d(1), b(1)=>r_f(1), b(0)=>r_h(1), d=>i1_val(1));
   i1_val_select_16Bus31_2 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(2), b(2)=>r_d(2), b(1)=>r_f(2), b(0)=>r_h(2), d=>i1_val(2));
   i1_val_select_16Bus31_3 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(3), b(2)=>r_d(3), b(1)=>r_f(3), b(0)=>r_h(3), d=>i1_val(3));
   i1_val_select_16Bus31_4 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(4), b(2)=>r_d(4), b(1)=>r_f(4), b(0)=>r_h(4), d=>i1_val(4));
   i1_val_select_16Bus31_5 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(5), b(2)=>r_d(5), b(1)=>r_f(5), b(0)=>r_h(5), d=>i1_val(5));
   i1_val_select_16Bus31_6 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(6), b(2)=>r_d(6), b(1)=>r_f(6), b(0)=>r_h(6), d=>i1_val(6));
   i1_val_select_16Bus31_7 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_b(7), b(2)=>r_d(7), b(1)=>r_f(7), b(0)=>r_h(7), d=>i1_val(7));
   not_v_1 <= NOT v(1) ;
   rtlc3_P5_SS0_n21 <= not_i_valid AND v(1) ;
   i2_val_select_24Bus32_0 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(0), b(2)=>r_a(0), b(1)=>r_c(0), b(0)=>r_e(0), d=>i2_val(0));
   i2_val_select_24Bus32_1 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(1), b(2)=>r_a(1), b(1)=>r_c(1), b(0)=>r_e(1), d=>i2_val(1));
   i2_val_select_24Bus32_2 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(2), b(2)=>r_a(2), b(1)=>r_c(2), b(0)=>r_e(2), d=>i2_val(2));
   i2_val_select_24Bus32_3 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(3), b(2)=>r_a(3), b(1)=>r_c(3), b(0)=>r_e(3), d=>i2_val(3));
   i2_val_select_24Bus32_4 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(4), b(2)=>r_a(4), b(1)=>r_c(4), b(0)=>r_e(4), d=>i2_val(4));
   i2_val_select_24Bus32_5 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(5), b(2)=>r_a(5), b(1)=>r_c(5), b(0)=>r_e(5), d=>i2_val(5));
   i2_val_select_24Bus32_6 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(6), b(2)=>r_a(6), b(1)=>r_c(6), b(0)=>r_e(6), d=>i2_val(6));
   i2_val_select_24Bus32_7 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_g(7), b(2)=>r_a(7), b(1)=>r_c(7), b(0)=>r_e(7), d=>i2_val(7));
   rtlc5n38 <= i_valid OR v(1) ;
   i3_select_32Bus14_0 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(0), b(2)=>r_b(0), b(1)=>r_d(0), b(0)=>r_f(0), d=>i3(0));
   i3_select_32Bus14_1 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(1), b(2)=>r_b(1), b(1)=>r_d(1), b(0)=>r_f(1), d=>i3(1));
   i3_select_32Bus14_2 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(2), b(2)=>r_b(2), b(1)=>r_d(2), b(0)=>r_f(2), d=>i3(2));
   i3_select_32Bus14_3 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(3), b(2)=>r_b(3), b(1)=>r_d(3), b(0)=>r_f(3), d=>i3(3));
   i3_select_32Bus14_4 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(4), b(2)=>r_b(4), b(1)=>r_d(4), b(0)=>r_f(4), d=>i3(4));
   i3_select_32Bus14_5 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(5), b(2)=>r_b(5), b(1)=>r_d(5), b(0)=>r_f(5), d=>i3(5));
   i3_select_32Bus14_6 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(6), b(2)=>r_b(6), b(1)=>r_d(6), b(0)=>r_f(6), d=>i3(6));
   i3_select_32Bus14_7 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_a(7), b(2)=>r_b(7), b(1)=>r_d(7), b(0)=>r_f(7), d=>i3(7));
   i4_select_40Bus15_0 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(0), b(2)=>r_c(0), b(1)=>r_e(0), b(0)=>r_g(0), d=>i4(0));
   i4_select_40Bus15_1 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(1), b(2)=>r_c(1), b(1)=>r_e(1), b(0)=>r_g(1), d=>i4(1));
   i4_select_40Bus15_2 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(2), b(2)=>r_c(2), b(1)=>r_e(2), b(0)=>r_g(2), d=>i4(2));
   i4_select_40Bus15_3 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(3), b(2)=>r_c(3), b(1)=>r_e(3), b(0)=>r_g(3), d=>i4(3));
   i4_select_40Bus15_4 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(4), b(2)=>r_c(4), b(1)=>r_e(4), b(0)=>r_g(4), d=>i4(4));
   i4_select_40Bus15_5 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(5), b(2)=>r_c(5), b(1)=>r_e(5), b(0)=>r_g(5), d=>i4(5));
   i4_select_40Bus15_6 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(6), b(2)=>r_c(6), b(1)=>r_e(6), b(0)=>r_g(6), d=>i4(6));
   i4_select_40Bus15_7 : select_4_4 port map ( a(3)=>i_valid, a(2)=>
      rtlc3_P5_SS0_n21, a(1)=>rtlc4_P8_SS0_n28, a(0)=>rtlc4_P9_SS0_n31, b(3)
      =>r_h(7), b(2)=>r_c(7), b(1)=>r_e(7), b(0)=>r_g(7), d=>i4(7));
   rtlc9n54 <= i_valid AND rtlcn18 ;
   rtlc9n63 <= rtlc9n54 AND rtlcn20 ;
   rtlc10n61 <= rtlcs1 AND rtlcs8 ;
   rtlc10n68 <= rtlc10n61 AND rtlcs9 ;
   not_rtlcs6 <= NOT rtlcs6 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   not_v_3 <= NOT v(3) ;
   not_rtlcs9 <= NOT rtlcs9 ;
   rtlc12n164 <= rtlcs8 AND not_rtlcs9 ;
   rtlc12n129 <= rtlcs2 AND rtlcs9 ;
   rtlc13_39_gt_52 : gt_8u_8u port map ( a(7)=>i1_val(7), a(6)=>i1_val(6), 
      a(5)=>i1_val(5), a(4)=>i1_val(4), a(3)=>i1_val(3), a(2)=>i1_val(2), 
      a(1)=>i1_val(1), a(0)=>i1_val(0), b(7)=>i2_val(7), b(6)=>i2_val(6), 
      b(5)=>i2_val(5), b(4)=>i2_val(4), b(3)=>i2_val(3), b(2)=>i2_val(2), 
      b(1)=>i2_val(1), b(0)=>i2_val(0), d=>not_rtlc13n39);
   rtlc13n39 <= NOT not_rtlc13n39 ;
   rtlc17_49_gt_54 : gt_10u_10u port map ( a(9)=>r4_val(9), a(8)=>r4_val(8), 
      a(7)=>r4_val(7), a(6)=>r4_val(6), a(5)=>r4_val(5), a(4)=>r4_val(4), 
      a(3)=>r4_val(3), a(2)=>r4_val(2), a(1)=>r4_val(1), a(0)=>r4_val(0), 
      b(9)=>r5_val(9), b(8)=>r5_val(8), b(7)=>r5_val(7), b(6)=>r5_val(6), 
      b(5)=>r5_val(5), b(4)=>r5_val(4), b(3)=>r5_val(3), b(2)=>r5_val(2), 
      b(1)=>r5_val(1), b(0)=>r5_val(0), d=>not_rtlc17n33);
   not_rtlc20n75 <= NOT rtlc20n75 ;
   rtlc20n72 <= r7_val_7 AND r7_val_8 ;
   not_r7_val_13 <= NOT r7_val_13 ;
   rtlc20n75 <= rtlc20n73 AND not_r7_val_13 ;
   not_rtlcn21 <= NOT rtlcn21 ;
   rtlcn17 <= rtlc12n164 OR rtlc12n129 ;
   rtlcn21 <= wr_en(0) OR wr_en(1) ;
   rtlcn25 <= not_v_1 AND v(2) ;
   rtlcn28 <= not_v_1 AND not_v_2 ;
   rtlc6n38 <= i_valid OR rtlcn28 ;
   not_rtlc10n68 <= NOT rtlc10n68 ;
   rtlcn189 <= i_valid AND not_rtlc10n68 ;
   rtlcn210 <= not_rtlc13n39 AND rtlc5n38 ;
   not_rtlc6n38 <= NOT rtlc6n38 ;
   rtlcn213 <= rtlc13n39 AND not_rtlc6n38 ;
   rtlcn198 <= rtlcn210 OR rtlcn213 ;
   not_rtlcn198 <= NOT rtlcn198 ;
   r_a_11n3ss1(0) <= M_a(0) when rtlc9n54 = '1' else r_b(0) ;
   r_a_11n3ss1(1) <= M_a(1) when rtlc9n54 = '1' else r_b(1) ;
   r_a_11n3ss1(2) <= M_a(2) when rtlc9n54 = '1' else r_b(2) ;
   r_a_11n3ss1(3) <= M_a(3) when rtlc9n54 = '1' else r_b(3) ;
   r_a_11n3ss1(4) <= M_a(4) when rtlc9n54 = '1' else r_b(4) ;
   r_a_11n3ss1(5) <= M_a(5) when rtlc9n54 = '1' else r_b(5) ;
   r_a_11n3ss1(6) <= M_a(6) when rtlc9n54 = '1' else r_b(6) ;
   r_a_11n3ss1(7) <= M_a(7) when rtlc9n54 = '1' else r_b(7) ;
   r_h_11n3ss1(0) <= M_b(0) when rtlc9n54 = '1' else r_i(0) ;
   r_h_11n3ss1(1) <= M_b(1) when rtlc9n54 = '1' else r_i(1) ;
   r_h_11n3ss1(2) <= M_b(2) when rtlc9n54 = '1' else r_i(2) ;
   r_h_11n3ss1(3) <= M_b(3) when rtlc9n54 = '1' else r_i(3) ;
   r_h_11n3ss1(4) <= M_b(4) when rtlc9n54 = '1' else r_i(4) ;
   r_h_11n3ss1(5) <= M_b(5) when rtlc9n54 = '1' else r_i(5) ;
   r_h_11n3ss1(6) <= M_b(6) when rtlc9n54 = '1' else r_i(6) ;
   r_h_11n3ss1(7) <= M_b(7) when rtlc9n54 = '1' else r_i(7) ;
   r_g_11n3ss1(0) <= i_pixel(0) when rtlc9n54 = '1' else r_f(0) ;
   r_g_11n3ss1(1) <= i_pixel(1) when rtlc9n54 = '1' else r_f(1) ;
   r_g_11n3ss1(2) <= i_pixel(2) when rtlc9n54 = '1' else r_f(2) ;
   r_g_11n3ss1(3) <= i_pixel(3) when rtlc9n54 = '1' else r_f(3) ;
   r_g_11n3ss1(4) <= i_pixel(4) when rtlc9n54 = '1' else r_f(4) ;
   r_g_11n3ss1(5) <= i_pixel(5) when rtlc9n54 = '1' else r_f(5) ;
   r_g_11n3ss1(6) <= i_pixel(6) when rtlc9n54 = '1' else r_f(6) ;
   r_g_11n3ss1(7) <= i_pixel(7) when rtlc9n54 = '1' else r_f(7) ;
   r_b_11n3ss1(0) <= M_a(0) when rtlc9n54 = '1' else r_c(0) ;
   r_b_11n3ss1(1) <= M_a(1) when rtlc9n54 = '1' else r_c(1) ;
   r_b_11n3ss1(2) <= M_a(2) when rtlc9n54 = '1' else r_c(2) ;
   r_b_11n3ss1(3) <= M_a(3) when rtlc9n54 = '1' else r_c(3) ;
   r_b_11n3ss1(4) <= M_a(4) when rtlc9n54 = '1' else r_c(4) ;
   r_b_11n3ss1(5) <= M_a(5) when rtlc9n54 = '1' else r_c(5) ;
   r_b_11n3ss1(6) <= M_a(6) when rtlc9n54 = '1' else r_c(6) ;
   r_b_11n3ss1(7) <= M_a(7) when rtlc9n54 = '1' else r_c(7) ;
   r_i_11n3ss1(0) <= M_b(0) when rtlc9n54 = '1' else r_d(0) ;
   r_i_11n3ss1(1) <= M_b(1) when rtlc9n54 = '1' else r_d(1) ;
   r_i_11n3ss1(2) <= M_b(2) when rtlc9n54 = '1' else r_d(2) ;
   r_i_11n3ss1(3) <= M_b(3) when rtlc9n54 = '1' else r_d(3) ;
   r_i_11n3ss1(4) <= M_b(4) when rtlc9n54 = '1' else r_d(4) ;
   r_i_11n3ss1(5) <= M_b(5) when rtlc9n54 = '1' else r_d(5) ;
   r_i_11n3ss1(6) <= M_b(6) when rtlc9n54 = '1' else r_d(6) ;
   r_i_11n3ss1(7) <= M_b(7) when rtlc9n54 = '1' else r_d(7) ;
   r_f_11n3ss1(0) <= i_pixel(0) when rtlc9n54 = '1' else r_e(0) ;
   r_f_11n3ss1(1) <= i_pixel(1) when rtlc9n54 = '1' else r_e(1) ;
   r_f_11n3ss1(2) <= i_pixel(2) when rtlc9n54 = '1' else r_e(2) ;
   r_f_11n3ss1(3) <= i_pixel(3) when rtlc9n54 = '1' else r_e(3) ;
   r_f_11n3ss1(4) <= i_pixel(4) when rtlc9n54 = '1' else r_e(4) ;
   r_f_11n3ss1(5) <= i_pixel(5) when rtlc9n54 = '1' else r_e(5) ;
   r_f_11n3ss1(6) <= i_pixel(6) when rtlc9n54 = '1' else r_e(6) ;
   r_f_11n3ss1(7) <= i_pixel(7) when rtlc9n54 = '1' else r_e(7) ;
   rtlc11n127 <= not_rtlcs6 when rtlc9n54 = '1' else not_v_3 ;
   rtlc11n128 <= not_rtlcs4 when rtlc9n54 = '1' else not_v_3 ;
   r1_13n1ss1_3 <= i1_val(0) when not_rtlc13n39 = '1' else i2_val(0) ;
   r1_13n1ss1_4 <= i1_val(1) when not_rtlc13n39 = '1' else i2_val(1) ;
   r1_13n1ss1_5 <= i1_val(2) when not_rtlc13n39 = '1' else i2_val(2) ;
   r1_13n1ss1_6 <= i1_val(3) when not_rtlc13n39 = '1' else i2_val(3) ;
   r1_13n1ss1_7 <= i1_val(4) when not_rtlc13n39 = '1' else i2_val(4) ;
   r1_13n1ss1_8 <= i1_val(5) when not_rtlc13n39 = '1' else i2_val(5) ;
   r1_13n1ss1_9 <= i1_val(6) when not_rtlc13n39 = '1' else i2_val(6) ;
   r1_13n1ss1_10 <= i1_val(7) when not_rtlc13n39 = '1' else i2_val(7) ;
   rtlcn16 <= rtlcs0 OR i_valid ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc11n208 <= not_rtlcs3 AND rtlc9n54 ;
   not_rtlc11n128 <= NOT rtlc11n128 ;
   not_rtlc11n127 <= NOT rtlc11n127 ;
   not_rtlc12n129 <= NOT rtlc12n129 ;
   not_i_valid <= NOT i_valid ;
   rtlc17n46 <= not_rtlc17n33 OR v(2) ;
   not_v_2 <= NOT v(2) ;
   rtlcs4 <= o_col_EXMPLR202(0) AND rtlcs3 ;
   rtlcs6 <= not_o_col_0 AND rtlcs3 ;
   rtlc_425_and_57 : and_8u_8u port map ( a(7)=>o_col_EXMPLR202(7), a(6)=>
      o_col_EXMPLR202(6), a(5)=>o_col_EXMPLR202(5), a(4)=>o_col_EXMPLR202(4), 
      a(3)=>o_col_EXMPLR202(3), a(2)=>o_col_EXMPLR202(2), a(1)=>
      o_col_EXMPLR202(1), a(0)=>o_col_EXMPLR202(0), d=>rtlcs8);
   rtlc_426_and_58 : and_8u_8u port map ( a(7)=>o_row_EXMPLR201(7), a(6)=>
      o_row_EXMPLR201(6), a(5)=>o_row_EXMPLR201(5), a(4)=>o_row_EXMPLR201(4), 
      a(3)=>o_row_EXMPLR201(3), a(2)=>o_row_EXMPLR201(2), a(1)=>
      o_row_EXMPLR201(1), a(0)=>o_row_EXMPLR201(0), d=>rtlcs9);
   rtlcs1 <= o_mode_EXMPLR200(1) AND o_mode_EXMPLR200(0) ;
   not_o_mode_1 <= NOT o_mode_EXMPLR200(1) ;
   rtlcs0 <= not_o_mode_1 AND o_mode_EXMPLR200(0) ;
   not_o_mode_0 <= NOT o_mode_EXMPLR200(0) ;
   rtlcs2 <= o_mode_EXMPLR200(1) AND not_o_mode_0 ;
   not_o_col_7 <= NOT o_col_EXMPLR202(7) ;
   not_o_col_6 <= NOT o_col_EXMPLR202(6) ;
   not_o_col_5 <= NOT o_col_EXMPLR202(5) ;
   not_o_col_4 <= NOT o_col_EXMPLR202(4) ;
   not_o_col_3 <= NOT o_col_EXMPLR202(3) ;
   not_o_col_2 <= NOT o_col_EXMPLR202(2) ;
   not_o_col_1 <= NOT o_col_EXMPLR202(1) ;
   rtlc_441_and_59 : and_7u_7u port map ( a(6)=>not_o_col_7, a(5)=>
      not_o_col_6, a(4)=>not_o_col_5, a(3)=>not_o_col_4, a(2)=>not_o_col_3, 
      a(1)=>not_o_col_2, a(0)=>not_o_col_1, d=>rtlcs3);
   not_o_col_0 <= NOT o_col_EXMPLR202(0) ;
   not_rtlcn25 <= NOT rtlcn25 ;
   rtlc12n265 <= i_valid AND rtlcn17 ;
   modgen_counter_o_col : counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch
       port map ( clock=>clk, q(7)=>o_col_EXMPLR202(7), q(6)=>
      o_col_EXMPLR202(6), q(5)=>o_col_EXMPLR202(5), q(4)=>o_col_EXMPLR202(4), 
      q(3)=>o_col_EXMPLR202(3), q(2)=>o_col_EXMPLR202(2), q(1)=>
      o_col_EXMPLR202(1), q(0)=>o_col_EXMPLR202(0), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,0), data(6)=>DANGLING(0,1), data(5)=>
      DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)=>DANGLING(0,4), data(2)
      =>DANGLING(0,5), data(1)=>DANGLING(0,6), data(0)=>DANGLING(0,7), aset
      =>GND, sclear=>reset, updn=>PWR, cnt_en=>i_valid);
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch
       port map ( clock=>clk, q(7)=>o_row_EXMPLR201(7), q(6)=>
      o_row_EXMPLR201(6), q(5)=>o_row_EXMPLR201(5), q(4)=>o_row_EXMPLR201(4), 
      q(3)=>o_row_EXMPLR201(3), q(2)=>o_row_EXMPLR201(2), q(1)=>
      o_row_EXMPLR201(1), q(0)=>o_row_EXMPLR201(0), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,8), data(6)=>DANGLING(0,9), data(5)=>
      DANGLING(0,10), data(4)=>DANGLING(0,11), data(3)=>DANGLING(0,12), 
      data(2)=>DANGLING(0,13), data(1)=>DANGLING(0,14), data(0)=>
      DANGLING(0,15), aset=>GND, sclear=>reset, updn=>PWR, cnt_en=>
      rtlc12n265);
   r2_add8_14i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i3(7), a(6)=>
      i3(6), a(5)=>i3(5), a(4)=>i3(4), a(3)=>i3(3), a(2)=>i3(2), a(1)=>i3(1), 
      a(0)=>i3(0), b(7)=>i4(7), b(6)=>i4(6), b(5)=>i4(5), b(4)=>i4(4), b(3)
      =>i4(3), b(2)=>i4(2), b(1)=>i4(1), b(0)=>i4(0), d(7)=>r2_14n0r1(7), 
      d(6)=>r2_14n0r1(6), d(5)=>r2_14n0r1(5), d(4)=>r2_14n0r1(4), d(3)=>
      r2_14n0r1(3), d(2)=>r2_14n0r1(2), d(1)=>r2_14n0r1(1), d(0)=>
      r2_14n0r1(0), cout=>r2_14n0r1(8));
   r4_add9_16i1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      r1_val(7), a(6)=>r1_val(6), a(5)=>r1_val(5), a(4)=>r1_val(4), a(3)=>
      r1_val(3), a(2)=>r1_val(2), a(1)=>r1_val(1), a(0)=>r1_val(0), b(8)=>
      r2(8), b(7)=>r2(7), b(6)=>r2(6), b(5)=>r2(5), b(4)=>r2(4), b(3)=>r2(3), 
      b(2)=>r2(2), b(1)=>r2(1), b(0)=>r2(0), d(8)=>r4_16n0r1(8), d(7)=>
      r4_16n0r1(7), d(6)=>r4_16n0r1(6), d(5)=>r4_16n0r1(5), d(4)=>
      r4_16n0r1(4), d(3)=>r4_16n0r1(3), d(2)=>r4_16n0r1(2), d(1)=>
      r4_16n0r1(1), d(0)=>r4_16n0r1(0), cout=>r4_16n0r1(9));
   r6_add11_18i1 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>r3(10), 
      a(9)=>r3(9), a(8)=>r3(8), a(7)=>r3(7), a(6)=>r3(6), a(5)=>r3(5), a(4)
      =>r3(4), a(3)=>r3(3), a(2)=>r3(2), a(1)=>r3(1), a(0)=>r3(0), b(10)=>
      r3(11), b(9)=>r3(10), b(8)=>r3(9), b(7)=>r3(8), b(6)=>r3(7), b(5)=>
      r3(6), b(4)=>r3(5), b(3)=>r3(4), b(2)=>r3(3), b(1)=>r3(2), b(0)=>r3(1), 
      d(10)=>r6_18n0r1(11), d(9)=>r6_18n0r1(10), d(8)=>r6_18n0r1(9), d(7)=>
      r6_18n0r1(8), d(6)=>r6_18n0r1(7), d(5)=>r6_18n0r1(6), d(4)=>
      r6_18n0r1(5), d(3)=>r6_18n0r1(4), d(2)=>r6_18n0r1(3), d(1)=>
      r6_18n0r1(2), d(0)=>r6_18n0r1(1), cout=>r6_18n0r1(12));
   r7_19n0r1_13 <= NOT rtlcn5470 ;
   rtlcn5502 <= wr_en(2) OR reset ;
   rtlcn5503 <= rtlc12n284 OR reset ;
   rtlcn5511 <= not_rtlcn25 AND not_i_valid ;
   rtlcn5513 <= wr_en(1) when rtlc12n284 = '1' else wr_en(2) ;
   rtlcn5514 <= wr_en(0) when rtlc12n284 = '1' else wr_en(1) ;
   rtlcn5515 <= rtlcn5502 when rtlcn5503 = '1' else wr_en(0) ;
   DFFRSE (v(6),GND,reset,PWR,clk,v(7)) ;
   DFFRSE (v(5),GND,reset,PWR,clk,v(6)) ;
   DFFRSE (v(4),GND,reset,PWR,clk,v(5)) ;
   DFFRSE (v(3),GND,reset,PWR,clk,v(4)) ;
   DFFRSE (v(2),GND,reset,PWR,clk,v(3)) ;
   DFFRSE (v(1),GND,reset,PWR,clk,v(2)) ;
   DFFRSE (rtlc9n63,GND,reset,PWR,clk,v(1)) ;
   DFFRSE (PWR,GND,reset,rtlcn16,clk,o_mode_EXMPLR200(1)) ;
   DFFRSE (rtlcn189,reset,GND,rtlcn16,clk,o_mode_EXMPLR200(0)) ;
   DFFPCE (i_pixel(7),GND,GND,rtlc11n208,clk,r_e(7)) ;
   DFFPCE (i_pixel(6),GND,GND,rtlc11n208,clk,r_e(6)) ;
   DFFPCE (i_pixel(5),GND,GND,rtlc11n208,clk,r_e(5)) ;
   DFFPCE (i_pixel(4),GND,GND,rtlc11n208,clk,r_e(4)) ;
   DFFPCE (i_pixel(3),GND,GND,rtlc11n208,clk,r_e(3)) ;
   DFFPCE (i_pixel(2),GND,GND,rtlc11n208,clk,r_e(2)) ;
   DFFPCE (i_pixel(1),GND,GND,rtlc11n208,clk,r_e(1)) ;
   DFFPCE (i_pixel(0),GND,GND,rtlc11n208,clk,r_e(0)) ;
   DFFPCE (M_b(7),GND,GND,rtlc11n208,clk,r_d(7)) ;
   DFFPCE (M_b(6),GND,GND,rtlc11n208,clk,r_d(6)) ;
   DFFPCE (M_b(5),GND,GND,rtlc11n208,clk,r_d(5)) ;
   DFFPCE (M_b(4),GND,GND,rtlc11n208,clk,r_d(4)) ;
   DFFPCE (M_b(3),GND,GND,rtlc11n208,clk,r_d(3)) ;
   DFFPCE (M_b(2),GND,GND,rtlc11n208,clk,r_d(2)) ;
   DFFPCE (M_b(1),GND,GND,rtlc11n208,clk,r_d(1)) ;
   DFFPCE (M_b(0),GND,GND,rtlc11n208,clk,r_d(0)) ;
   DFFPCE (M_a(7),GND,GND,rtlc11n208,clk,r_c(7)) ;
   DFFPCE (M_a(6),GND,GND,rtlc11n208,clk,r_c(6)) ;
   DFFPCE (M_a(5),GND,GND,rtlc11n208,clk,r_c(5)) ;
   DFFPCE (M_a(4),GND,GND,rtlc11n208,clk,r_c(4)) ;
   DFFPCE (M_a(3),GND,GND,rtlc11n208,clk,r_c(3)) ;
   DFFPCE (M_a(2),GND,GND,rtlc11n208,clk,r_c(2)) ;
   DFFPCE (M_a(1),GND,GND,rtlc11n208,clk,r_c(1)) ;
   DFFPCE (M_a(0),GND,GND,rtlc11n208,clk,r_c(0)) ;
   DFFPCE (r_f_11n3ss1(7),GND,GND,not_rtlc11n128,clk,r_f(7)) ;
   DFFPCE (r_f_11n3ss1(6),GND,GND,not_rtlc11n128,clk,r_f(6)) ;
   DFFPCE (r_f_11n3ss1(5),GND,GND,not_rtlc11n128,clk,r_f(5)) ;
   DFFPCE (r_f_11n3ss1(4),GND,GND,not_rtlc11n128,clk,r_f(4)) ;
   DFFPCE (r_f_11n3ss1(3),GND,GND,not_rtlc11n128,clk,r_f(3)) ;
   DFFPCE (r_f_11n3ss1(2),GND,GND,not_rtlc11n128,clk,r_f(2)) ;
   DFFPCE (r_f_11n3ss1(1),GND,GND,not_rtlc11n128,clk,r_f(1)) ;
   DFFPCE (r_f_11n3ss1(0),GND,GND,not_rtlc11n128,clk,r_f(0)) ;
   DFFPCE (r_i_11n3ss1(7),GND,GND,not_rtlc11n128,clk,r_i(7)) ;
   DFFPCE (r_i_11n3ss1(6),GND,GND,not_rtlc11n128,clk,r_i(6)) ;
   DFFPCE (r_i_11n3ss1(5),GND,GND,not_rtlc11n128,clk,r_i(5)) ;
   DFFPCE (r_i_11n3ss1(4),GND,GND,not_rtlc11n128,clk,r_i(4)) ;
   DFFPCE (r_i_11n3ss1(3),GND,GND,not_rtlc11n128,clk,r_i(3)) ;
   DFFPCE (r_i_11n3ss1(2),GND,GND,not_rtlc11n128,clk,r_i(2)) ;
   DFFPCE (r_i_11n3ss1(1),GND,GND,not_rtlc11n128,clk,r_i(1)) ;
   DFFPCE (r_i_11n3ss1(0),GND,GND,not_rtlc11n128,clk,r_i(0)) ;
   DFFPCE (r_b_11n3ss1(7),GND,GND,not_rtlc11n128,clk,r_b(7)) ;
   DFFPCE (r_b_11n3ss1(6),GND,GND,not_rtlc11n128,clk,r_b(6)) ;
   DFFPCE (r_b_11n3ss1(5),GND,GND,not_rtlc11n128,clk,r_b(5)) ;
   DFFPCE (r_b_11n3ss1(4),GND,GND,not_rtlc11n128,clk,r_b(4)) ;
   DFFPCE (r_b_11n3ss1(3),GND,GND,not_rtlc11n128,clk,r_b(3)) ;
   DFFPCE (r_b_11n3ss1(2),GND,GND,not_rtlc11n128,clk,r_b(2)) ;
   DFFPCE (r_b_11n3ss1(1),GND,GND,not_rtlc11n128,clk,r_b(1)) ;
   DFFPCE (r_b_11n3ss1(0),GND,GND,not_rtlc11n128,clk,r_b(0)) ;
   DFFPCE (r_g_11n3ss1(7),GND,GND,not_rtlc11n127,clk,r_g(7)) ;
   DFFPCE (r_g_11n3ss1(6),GND,GND,not_rtlc11n127,clk,r_g(6)) ;
   DFFPCE (r_g_11n3ss1(5),GND,GND,not_rtlc11n127,clk,r_g(5)) ;
   DFFPCE (r_g_11n3ss1(4),GND,GND,not_rtlc11n127,clk,r_g(4)) ;
   DFFPCE (r_g_11n3ss1(3),GND,GND,not_rtlc11n127,clk,r_g(3)) ;
   DFFPCE (r_g_11n3ss1(2),GND,GND,not_rtlc11n127,clk,r_g(2)) ;
   DFFPCE (r_g_11n3ss1(1),GND,GND,not_rtlc11n127,clk,r_g(1)) ;
   DFFPCE (r_g_11n3ss1(0),GND,GND,not_rtlc11n127,clk,r_g(0)) ;
   DFFPCE (r_h_11n3ss1(7),GND,GND,not_rtlc11n127,clk,r_h(7)) ;
   DFFPCE (r_h_11n3ss1(6),GND,GND,not_rtlc11n127,clk,r_h(6)) ;
   DFFPCE (r_h_11n3ss1(5),GND,GND,not_rtlc11n127,clk,r_h(5)) ;
   DFFPCE (r_h_11n3ss1(4),GND,GND,not_rtlc11n127,clk,r_h(4)) ;
   DFFPCE (r_h_11n3ss1(3),GND,GND,not_rtlc11n127,clk,r_h(3)) ;
   DFFPCE (r_h_11n3ss1(2),GND,GND,not_rtlc11n127,clk,r_h(2)) ;
   DFFPCE (r_h_11n3ss1(1),GND,GND,not_rtlc11n127,clk,r_h(1)) ;
   DFFPCE (r_h_11n3ss1(0),GND,GND,not_rtlc11n127,clk,r_h(0)) ;
   DFFPCE (r_a_11n3ss1(7),GND,GND,not_rtlc11n127,clk,r_a(7)) ;
   DFFPCE (r_a_11n3ss1(6),GND,GND,not_rtlc11n127,clk,r_a(6)) ;
   DFFPCE (r_a_11n3ss1(5),GND,GND,not_rtlc11n127,clk,r_a(5)) ;
   DFFPCE (r_a_11n3ss1(4),GND,GND,not_rtlc11n127,clk,r_a(4)) ;
   DFFPCE (r_a_11n3ss1(3),GND,GND,not_rtlc11n127,clk,r_a(3)) ;
   DFFPCE (r_a_11n3ss1(2),GND,GND,not_rtlc11n127,clk,r_a(2)) ;
   DFFPCE (r_a_11n3ss1(1),GND,GND,not_rtlc11n127,clk,r_a(1)) ;
   DFFPCE (r_a_11n3ss1(0),GND,GND,not_rtlc11n127,clk,r_a(0)) ;
   DFFPC (r1_13n1ss1_10,GND,GND,clk,r1_val(7)) ;
   DFFPC (r1_13n1ss1_9,GND,GND,clk,r1_val(6)) ;
   DFFPC (r1_13n1ss1_8,GND,GND,clk,r1_val(5)) ;
   DFFPC (r1_13n1ss1_7,GND,GND,clk,r1_val(4)) ;
   DFFPC (r1_13n1ss1_6,GND,GND,clk,r1_val(3)) ;
   DFFPC (r1_13n1ss1_5,GND,GND,clk,r1_val(2)) ;
   DFFPC (r1_13n1ss1_4,GND,GND,clk,r1_val(1)) ;
   DFFPC (r1_13n1ss1_3,GND,GND,clk,r1_val(0)) ;
   DFFPC (not_rtlc13n39,GND,GND,clk,r1_ty(2)) ;
   DFFPC (not_rtlcn198,GND,GND,clk,r1_ty(0)) ;
   DFFPC (r2_14n0r1(8),GND,GND,clk,r2(8)) ;
   DFFPC (r2_14n0r1(7),GND,GND,clk,r2(7)) ;
   DFFPC (r2_14n0r1(6),GND,GND,clk,r2(6)) ;
   DFFPC (r2_14n0r1(5),GND,GND,clk,r2(5)) ;
   DFFPC (r2_14n0r1(4),GND,GND,clk,r2(4)) ;
   DFFPC (r2_14n0r1(3),GND,GND,clk,r2(3)) ;
   DFFPC (r2_14n0r1(2),GND,GND,clk,r2(2)) ;
   DFFPC (r2_14n0r1(1),GND,GND,clk,r2(1)) ;
   DFFPC (r2_14n0r1(0),GND,GND,clk,r2(0)) ;
   DFFRSE (rtlcn5505,GND,GND,PWR,clk,r3(11)) ;
   DFFRSE (rtlcn5507,GND,GND,PWR,clk,r3(10)) ;
   DFFRSE (rtlcn5509,GND,GND,PWR,clk,r3(9)) ;
   DFFPC (r3_15n1ss1(8),GND,GND,clk,r3(8)) ;
   DFFPC (r3_15n1ss1(7),GND,GND,clk,r3(7)) ;
   DFFPC (r3_15n1ss1(6),GND,GND,clk,r3(6)) ;
   DFFPC (r3_15n1ss1(5),GND,GND,clk,r3(5)) ;
   DFFPC (r3_15n1ss1(4),GND,GND,clk,r3(4)) ;
   DFFPC (r3_15n1ss1(3),GND,GND,clk,r3(3)) ;
   DFFPC (r3_15n1ss1(2),GND,GND,clk,r3(2)) ;
   DFFPC (r3_15n1ss1(1),GND,GND,clk,r3(1)) ;
   DFFPC (r3_15n1ss1(0),GND,GND,clk,r3(0)) ;
   DFFPC (r4_16n0r1(9),GND,GND,clk,r4_val(9)) ;
   DFFPC (r4_16n0r1(8),GND,GND,clk,r4_val(8)) ;
   DFFPC (r4_16n0r1(7),GND,GND,clk,r4_val(7)) ;
   DFFPC (r4_16n0r1(6),GND,GND,clk,r4_val(6)) ;
   DFFPC (r4_16n0r1(5),GND,GND,clk,r4_val(5)) ;
   DFFPC (r4_16n0r1(4),GND,GND,clk,r4_val(4)) ;
   DFFPC (r4_16n0r1(3),GND,GND,clk,r4_val(3)) ;
   DFFPC (r4_16n0r1(2),GND,GND,clk,r4_val(2)) ;
   DFFPC (r4_16n0r1(1),GND,GND,clk,r4_val(1)) ;
   DFFPC (r4_16n0r1(0),GND,GND,clk,r4_val(0)) ;
   DFFPC (r1_ty(2),GND,GND,clk,r4_ty(2)) ;
   DFFPC (r1_ty(1),GND,GND,clk,r4_ty(1)) ;
   DFFPC (r1_ty(0),GND,GND,clk,r4_ty(0)) ;
   DFFPCE (r4_val(9),GND,GND,rtlc17n46,clk,r5_val(9)) ;
   DFFPCE (r4_val(8),GND,GND,rtlc17n46,clk,r5_val(8)) ;
   DFFPCE (r4_val(7),GND,GND,rtlc17n46,clk,r5_val(7)) ;
   DFFPCE (r4_val(6),GND,GND,rtlc17n46,clk,r5_val(6)) ;
   DFFPCE (r4_val(5),GND,GND,rtlc17n46,clk,r5_val(5)) ;
   DFFPCE (r4_val(4),GND,GND,rtlc17n46,clk,r5_val(4)) ;
   DFFPCE (r4_val(3),GND,GND,rtlc17n46,clk,r5_val(3)) ;
   DFFPCE (r4_val(2),GND,GND,rtlc17n46,clk,r5_val(2)) ;
   DFFPCE (r4_val(1),GND,GND,rtlc17n46,clk,r5_val(1)) ;
   DFFPCE (r4_val(0),GND,GND,rtlc17n46,clk,r5_val(0)) ;
   DFFPCE (r4_ty(2),GND,GND,rtlc17n46,clk,r5_ty(2)) ;
   DFFPCE (r4_ty(1),GND,GND,rtlc17n46,clk,r5_ty(1)) ;
   DFFPCE (r4_ty(0),GND,GND,rtlc17n46,clk,r5_ty(0)) ;
   DFFPC (r6_18n0r1(12),GND,GND,clk,r6(12)) ;
   DFFPC (r6_18n0r1(11),GND,GND,clk,r6(11)) ;
   DFFPC (r6_18n0r1(10),GND,GND,clk,r6(10)) ;
   DFFPC (r6_18n0r1(9),GND,GND,clk,r6(9)) ;
   DFFPC (r6_18n0r1(8),GND,GND,clk,r6(8)) ;
   DFFPC (r6_18n0r1(7),GND,GND,clk,r6(7)) ;
   DFFPC (r6_18n0r1(6),GND,GND,clk,r6(6)) ;
   DFFPC (r6_18n0r1(5),GND,GND,clk,r6(5)) ;
   DFFPC (r6_18n0r1(4),GND,GND,clk,r6(4)) ;
   DFFPC (r6_18n0r1(3),GND,GND,clk,r6(3)) ;
   DFFPC (r6_18n0r1(2),GND,GND,clk,r6(2)) ;
   DFFPC (r6_18n0r1(1),GND,GND,clk,r6(1)) ;
   DFFPC (r3(0),GND,GND,clk,r6(0)) ;
   DFFPC (r7_19n0r1_13,GND,GND,clk,r7_val_13) ;
   DFFPC (r7_19n0r1_12,GND,GND,clk,r7_val_12) ;
   DFFPC (r7_19n0r1_11,GND,GND,clk,r7_val_11) ;
   DFFPC (r7_19n0r1_10,GND,GND,clk,r7_val_10) ;
   DFFPC (r7_19n0r1_9,GND,GND,clk,r7_val_9) ;
   DFFPC (r7_19n0r1_8,GND,GND,clk,r7_val_8) ;
   DFFPC (r7_19n0r1_7,GND,GND,clk,r7_val_7) ;
   DFFPC (r5_ty(2),GND,GND,clk,r7_ty(2)) ;
   DFFPC (r5_ty(1),GND,GND,clk,r7_ty(1)) ;
   DFFPC (r5_ty(0),GND,GND,clk,r7_ty(0)) ;
   DFFRSE (r7_ty(2),GND,not_rtlc20n75,PWR,clk,o_dir(2)) ;
   DFFRSE (r7_ty(1),GND,not_rtlc20n75,PWR,clk,o_dir(1)) ;
   DFFRSE (r7_ty(0),GND,not_rtlc20n75,PWR,clk,o_dir(0)) ;
   DFFPC (rtlc20n75,GND,GND,clk,o_edge) ;
   DFFPC (v(7),GND,GND,clk,o_valid) ;
   DFFRSE (rtlcn5511,GND,GND,PWR,clk,r1_ty(1)) ;
   DFFRSE (rtlcn5513,GND,reset,PWR,clk,wr_en(2)) ;
   DFFRSE (rtlcn5514,GND,reset,PWR,clk,wr_en(1)) ;
   DFFPC (rtlcn5515,GND,GND,clk,wr_en(0)) ;
   rtlc4_P8_SS0_n28 <= rtlc4_44_and_33_nx0 AND v(2) ;
   rtlc4_44_and_33_nx0 <= not_i_valid AND not_v_1 ;
   rtlc4_P9_SS0_n31 <= rtlc4_44_and_33_nx0 AND not_v_2 ;
   rtlc_420_and_56_nx0 <= i_valid AND not_rtlc12n129 ;
   rtlc12n284 <= rtlc_420_and_56_nx0 AND rtlc12n164 ;
   NOT_r6_0 <= NOT r6(0) ;
   r7_sub13_19i1 : sub_12u_12u_12u_0 port map ( cin=>NOT_r6_0, a(11)=>
      r5_val(9), a(10)=>r5_val(8), a(9)=>r5_val(7), a(8)=>r5_val(6), a(7)=>
      r5_val(5), a(6)=>r5_val(4), a(5)=>r5_val(3), a(4)=>r5_val(2), a(3)=>
      r5_val(1), a(2)=>r5_val(0), a(1)=>GND, a(0)=>GND, b(11)=>r6(12), b(10)
      =>r6(11), b(9)=>r6(10), b(8)=>r6(9), b(7)=>r6(8), b(6)=>r6(7), b(5)=>
      r6(6), b(4)=>r6(5), b(3)=>r6(4), b(2)=>r6(3), b(1)=>r6(2), b(0)=>r6(1), 
      d(11)=>r7_19n0r1_12, d(10)=>r7_19n0r1_11, d(9)=>r7_19n0r1_10, d(8)=>
      r7_19n0r1_9, d(7)=>r7_19n0r1_8, d(6)=>r7_19n0r1_7, d(5)=>
      DANGLING(0,16), d(4)=>DANGLING(0,17), d(3)=>DANGLING(0,18), d(2)=>
      DANGLING(0,19), d(1)=>DANGLING(0,20), d(0)=>DANGLING(0,21), cout=>
      rtlcn5470);
   mem : ram_new_0_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      M_out_0(7), rd_data1(6)=>M_out_0(6), rd_data1(5)=>M_out_0(5), 
      rd_data1(4)=>M_out_0(4), rd_data1(3)=>M_out_0(3), rd_data1(2)=>
      M_out_0(2), rd_data1(1)=>M_out_0(1), rd_data1(0)=>M_out_0(0), addr1(7)
      =>o_col_EXMPLR202(7), addr1(6)=>o_col_EXMPLR202(6), addr1(5)=>
      o_col_EXMPLR202(5), addr1(4)=>o_col_EXMPLR202(4), addr1(3)=>
      o_col_EXMPLR202(3), addr1(2)=>o_col_EXMPLR202(2), addr1(1)=>
      o_col_EXMPLR202(1), addr1(0)=>o_col_EXMPLR202(0), wr_clk1=>clk, 
      rd_clk1=>clk, wr_ena1=>wr_en(0), rd_ena1=>PWR, ena1=>PWR, rst1=>GND, 
      regce1=>PWR, regrst1=>GND);
   mem_0 : ram_new_1_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      M_out_1(7), rd_data1(6)=>M_out_1(6), rd_data1(5)=>M_out_1(5), 
      rd_data1(4)=>M_out_1(4), rd_data1(3)=>M_out_1(3), rd_data1(2)=>
      M_out_1(2), rd_data1(1)=>M_out_1(1), rd_data1(0)=>M_out_1(0), addr1(7)
      =>o_col_EXMPLR202(7), addr1(6)=>o_col_EXMPLR202(6), addr1(5)=>
      o_col_EXMPLR202(5), addr1(4)=>o_col_EXMPLR202(4), addr1(3)=>
      o_col_EXMPLR202(3), addr1(2)=>o_col_EXMPLR202(2), addr1(1)=>
      o_col_EXMPLR202(1), addr1(0)=>o_col_EXMPLR202(0), wr_clk1=>clk, 
      rd_clk1=>clk, wr_ena1=>wr_en(1), rd_ena1=>PWR, ena1=>PWR, rst1=>GND, 
      regce1=>PWR, regrst1=>GND);
   mem_1 : ram_new_2_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      M_out_2(7), rd_data1(6)=>M_out_2(6), rd_data1(5)=>M_out_2(5), 
      rd_data1(4)=>M_out_2(4), rd_data1(3)=>M_out_2(3), rd_data1(2)=>
      M_out_2(2), rd_data1(1)=>M_out_2(1), rd_data1(0)=>M_out_2(0), addr1(7)
      =>o_col_EXMPLR202(7), addr1(6)=>o_col_EXMPLR202(6), addr1(5)=>
      o_col_EXMPLR202(5), addr1(4)=>o_col_EXMPLR202(4), addr1(3)=>
      o_col_EXMPLR202(3), addr1(2)=>o_col_EXMPLR202(2), addr1(1)=>
      o_col_EXMPLR202(1), addr1(0)=>o_col_EXMPLR202(0), wr_clk1=>clk, 
      rd_clk1=>clk, wr_ena1=>wr_en(2), rd_ena1=>PWR, ena1=>PWR, rst1=>GND, 
      regce1=>PWR, regrst1=>GND);
   modgen_or_0 : or_7u_7u port map ( a(6)=>o_row_EXMPLR201(2), a(5)=>
      o_row_EXMPLR201(3), a(4)=>o_row_EXMPLR201(4), a(3)=>o_row_EXMPLR201(5), 
      a(2)=>o_row_EXMPLR201(6), a(1)=>o_row_EXMPLR201(7), a(0)=>
      o_row_EXMPLR201(1), d=>rtlcn18);
   modgen_or_1 : or_7u_7u port map ( a(6)=>o_col_EXMPLR202(2), a(5)=>
      o_col_EXMPLR202(3), a(4)=>o_col_EXMPLR202(4), a(3)=>o_col_EXMPLR202(5), 
      a(2)=>o_col_EXMPLR202(6), a(1)=>o_col_EXMPLR202(7), a(0)=>
      o_col_EXMPLR202(1), d=>rtlcn20);
   modgen_or_2 : or_6u_6u port map ( a(5)=>r7_val_9, a(4)=>r7_val_10, a(3)=>
      r7_val_11, a(2)=>r7_val_12, a(1)=>r7_val_13, a(0)=>rtlc20n72, d=>
      rtlc20n73);
   ix1363_modgen_add_3 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>GND, 
      a(10)=>GND, a(9)=>GND, a(8)=>r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>
      r2(5), a(4)=>r2(4), a(3)=>r2(3), a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), 
      b(11)=>ix1363_nx66, b(10)=>ix1363_nx72, b(9)=>ix1363_nx78, b(8)=>
      ix1363_nx84, b(7)=>ix1363_nx90, b(6)=>ix1363_nx96, b(5)=>ix1363_nx102, 
      b(4)=>ix1363_nx108, b(3)=>ix1363_nx114, b(2)=>ix1363_nx120, b(1)=>
      ix1363_nx126, b(0)=>ix1363_nx132, d(11)=>rtlcn5505, d(10)=>rtlcn5507, 
      d(9)=>rtlcn5509, d(8)=>r3_15n1ss1(8), d(7)=>r3_15n1ss1(7), d(6)=>
      r3_15n1ss1(6), d(5)=>r3_15n1ss1(5), d(4)=>r3_15n1ss1(4), d(3)=>
      r3_15n1ss1(3), d(2)=>r3_15n1ss1(2), d(1)=>r3_15n1ss1(1), d(0)=>
      r3_15n1ss1(0), cout=>DANGLING(0,22));
   ix1363_nx66 <= r3(11) AND not_v_1 ;
   ix1363_nx72 <= r3(10) AND not_v_1 ;
   ix1363_nx78 <= r3(9) AND not_v_1 ;
   ix1363_nx84 <= r3(8) AND not_v_1 ;
   ix1363_nx90 <= r3(7) AND not_v_1 ;
   ix1363_nx96 <= r3(6) AND not_v_1 ;
   ix1363_nx102 <= r3(5) AND not_v_1 ;
   ix1363_nx108 <= r3(4) AND not_v_1 ;
   ix1363_nx114 <= r3(3) AND not_v_1 ;
   ix1363_nx120 <= r3(2) AND not_v_1 ;
   ix1363_nx126 <= r3(1) AND not_v_1 ;
   ix1363_nx132 <= r3(0) AND not_v_1 ;
end main ;

