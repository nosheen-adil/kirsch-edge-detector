
-- 
-- Definition of  kirsch_top
-- 
--      Thu Mar 28 13:15:40 2019
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

entity and_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_9u_9u ;

architecture BEHAVIORAL of and_9u_9u is 
   component sim_and
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_and
      generic map (size => 9) 
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

entity inc_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_9u_9u_0_0 ;

architecture BEHAVIORAL of inc_9u_9u_0_0 is 
   component sim_inc
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix23 : sim_inc
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_9u_9u_0_0 ;

architecture BEHAVIORAL of dec_9u_9u_0_0 is 
   component sim_dec
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix23 : sim_dec
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

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

entity mux_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_3u_3u ;

architecture BEHAVIORAL of mux_3u_3u is 
   component sim_mux
      generic (size : integer := 3;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_mux
      generic map (size => 3,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_4u_4u ;

architecture BEHAVIORAL of mux_4u_4u is 
   component sim_mux
      generic (size : integer := 4;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_mux
      generic map (size => 4,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_11u_11u_0_0 ;

architecture BEHAVIORAL of inc_11u_11u_0_0 is 
   component sim_inc
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix27 : sim_inc
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_12u_12u_0_0 ;

architecture BEHAVIORAL of inc_12u_12u_0_0 is 
   component sim_inc
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_inc
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_4u_4u_0_0 ;

architecture BEHAVIORAL of dec_4u_4u_0_0 is 
   component sim_dec
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_dec
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_4u_4u_0_0 ;

architecture BEHAVIORAL of inc_4u_4u_0_0 is 
   component sim_inc
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_inc
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_8u_8u ;

architecture BEHAVIORAL of eq_8u_8u is 
   component sim_eq
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_eq
      generic map (size => 8) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_9u_9u ;

architecture BEHAVIORAL of eq_9u_9u is 
   component sim_eq
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix15 : sim_eq
      generic map (size => 9) 
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

entity and_11u_11u is 
   port (
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_11u_11u ;

architecture BEHAVIORAL of and_11u_11u is 
   component sim_and
      generic (size : integer := 11) ;
      
      port (
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix16 : sim_and
      generic map (size => 11) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_work_mem_8_8_main is 
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
end ram_new_0_work_mem_8_8_main ;

architecture INTERFACE_unfold_1 of ram_new_0_work_mem_8_8_main is 
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
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_1 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mem_8_8 is 
   port (
      address : IN std_logic_vector (7 DOWNTO 0) ;
      clock : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      wren : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end mem_8_8 ;

architecture main of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
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
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_1);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 is 
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

entity counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 is 
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

entity counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 ;

architecture INTERFACE of 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 is 
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
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component dec_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, 
      nx44, sclear_and_0_dup_151, sclear_and_1_dup_152, sclear_and_2_dup_153, 
      sclear_and_3_dup_154, sclear_and_4_dup_155, sclear_and_5_dup_156, 
      sclear_and_6_dup_157, sclear_and_7_dup_158, sclear_and_8_dup_159, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, dec_d_0, dec_d_1, dec_d_2, dec_d_3, dec_d_4, dec_d_5, dec_d_6, 
      dec_d_7, dec_d_8, incdec_mux_0_dup_113, incdec_mux_1_dup_114, 
      incdec_mux_2_dup_115, incdec_mux_3_dup_116, incdec_mux_4_dup_117, 
      incdec_mux_5_dup_118, incdec_mux_6_dup_119, incdec_mux_7_dup_120, 
      incdec_mux_8_dup_121, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(8) <= nx39 ;
   q(7) <= nx38 ;
   q(6) <= nx37 ;
   q(5) <= nx36 ;
   q(4) <= nx35 ;
   q(3) <= nx34 ;
   q(2) <= nx33 ;
   q(1) <= nx32 ;
   q(0) <= nx31 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx44 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_8_dup_159,GND,GND,nx44,clock,nx39) ;
   DFFPCE (sclear_and_7_dup_158,GND,GND,nx44,clock,nx38) ;
   DFFPCE (sclear_and_6_dup_157,GND,GND,nx44,clock,nx37) ;
   DFFPCE (sclear_and_5_dup_156,GND,GND,nx44,clock,nx36) ;
   DFFPCE (sclear_and_4_dup_155,GND,GND,nx44,clock,nx35) ;
   DFFPCE (sclear_and_3_dup_154,GND,GND,nx44,clock,nx34) ;
   DFFPCE (sclear_and_2_dup_153,GND,GND,nx44,clock,nx33) ;
   DFFPCE (sclear_and_1_dup_152,GND,GND,nx44,clock,nx32) ;
   DFFPCE (sclear_and_0_dup_151,GND,GND,nx44,clock,nx31) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, 
      d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   dec : dec_9u_9u_0_0 port map ( cin=>GND, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>dec_d_8, d(7)=>dec_d_7, d(6)=>dec_d_6, d(5)=>dec_d_5, 
      d(4)=>dec_d_4, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,1));
   incdec_mux_0_dup_113 <= inc_d_0 when updn = '1' else dec_d_0 ;
   incdec_mux_1_dup_114 <= inc_d_1 when updn = '1' else dec_d_1 ;
   incdec_mux_2_dup_115 <= inc_d_2 when updn = '1' else dec_d_2 ;
   incdec_mux_3_dup_116 <= inc_d_3 when updn = '1' else dec_d_3 ;
   incdec_mux_4_dup_117 <= inc_d_4 when updn = '1' else dec_d_4 ;
   incdec_mux_5_dup_118 <= inc_d_5 when updn = '1' else dec_d_5 ;
   incdec_mux_6_dup_119 <= inc_d_6 when updn = '1' else dec_d_6 ;
   incdec_mux_7_dup_120 <= inc_d_7 when updn = '1' else dec_d_7 ;
   incdec_mux_8_dup_121 <= inc_d_8 when updn = '1' else dec_d_8 ;
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_151 <= incdec_mux_0_dup_113 AND NOT_sclear ;
   sclear_and_1_dup_152 <= incdec_mux_1_dup_114 AND NOT_sclear ;
   sclear_and_2_dup_153 <= incdec_mux_2_dup_115 AND NOT_sclear ;
   sclear_and_3_dup_154 <= incdec_mux_3_dup_116 AND NOT_sclear ;
   sclear_and_4_dup_155 <= incdec_mux_4_dup_117 AND NOT_sclear ;
   sclear_and_5_dup_156 <= incdec_mux_5_dup_118 AND NOT_sclear ;
   sclear_and_6_dup_157 <= incdec_mux_6_dup_119 AND NOT_sclear ;
   sclear_and_7_dup_158 <= incdec_mux_7_dup_120 AND NOT_sclear ;
   sclear_and_8_dup_159 <= incdec_mux_8_dup_121 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity syn_fifo_8_8 is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      data_in : IN std_logic_vector (7 DOWNTO 0) ;
      rd_en : IN std_logic ;
      wr_en : IN std_logic ;
      data_out : OUT std_logic_vector (7 DOWNTO 0) ;
      empty : OUT std_logic ;
      full : OUT std_logic) ;
end syn_fifo_8_8 ;

architecture main_unfold_1 of syn_fifo_8_8 is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8
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
   component counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8
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
   component counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
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
   for mem : mem_8_8 use entity work.mem_8_8(main);
   for modgen_counter_wr_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8(INTERFACE);
   for modgen_counter_rd_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8(INTERFACE);
   for modgen_counter_status_cnt : 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 use entity work.
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8(INTERFACE);
   signal empty_EXMPLR146, full_EXMPLR147: std_logic ;
   
   signal wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal q: std_logic_vector (7 DOWNTO 0) ;
   
   signal q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_en_delayed, GND, PWR, not_empty, not_wr_en, rtlc8n63, rtlc8n72, 
      not_rd_en, rtlc8n91, not_full, rtlc8n93, not_rtlc8n72, rtlcn0, 
      not_status_cnt_7, not_status_cnt_6, not_status_cnt_5, not_status_cnt_4, 
      not_status_cnt_3, not_status_cnt_2, not_status_cnt_1, not_status_cnt_0, 
      not_status_cnt_8: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   empty <= empty_EXMPLR146 ;
   full <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   mem : mem_8_8 port map ( address(7)=>pointer(7), address(6)=>pointer(6), 
      address(5)=>pointer(5), address(4)=>pointer(4), address(3)=>pointer(3), 
      address(2)=>pointer(2), address(1)=>pointer(1), address(0)=>pointer(0), 
      clock=>clk, data(7)=>data_in(7), data(6)=>data_in(6), data(5)=>
      data_in(5), data(4)=>data_in(4), data(3)=>data_in(3), data(2)=>
      data_in(2), data(1)=>data_in(1), data(0)=>data_in(0), wren=>wr_en, 
      q(7)=>q(7), q(6)=>q(6), q(5)=>q(5), q(4)=>q(4), q(3)=>q(3), q(2)=>q(2), 
      q(1)=>q(1), q(0)=>q(0));
   not_empty <= NOT empty_EXMPLR146 ;
   not_wr_en <= NOT wr_en ;
   not_rtlc8n72 <= NOT rtlc8n72 ;
   rtlc8n91 <= wr_en AND not_rd_en ;
   rtlc8n93 <= rtlc8n91 AND not_full ;
   rtlc8n63 <= rd_en AND not_wr_en ;
   rtlc8n72 <= rtlc8n63 AND not_empty ;
   not_rd_en <= NOT rd_en ;
   not_full <= NOT full_EXMPLR147 ;
   rtlcn0 <= rtlc8n93 OR rtlc8n72 ;
   pointer(0) <= wr_pointer(0) when wr_en = '1' else rd_pointer(0) ;
   pointer(1) <= wr_pointer(1) when wr_en = '1' else rd_pointer(1) ;
   pointer(2) <= wr_pointer(2) when wr_en = '1' else rd_pointer(2) ;
   pointer(3) <= wr_pointer(3) when wr_en = '1' else rd_pointer(3) ;
   pointer(4) <= wr_pointer(4) when wr_en = '1' else rd_pointer(4) ;
   pointer(5) <= wr_pointer(5) when wr_en = '1' else rd_pointer(5) ;
   pointer(6) <= wr_pointer(6) when wr_en = '1' else rd_pointer(6) ;
   pointer(7) <= wr_pointer(7) when wr_en = '1' else rd_pointer(7) ;
   data_out(0) <= q(0) when rd_en_delayed = '1' else q_saved(0) ;
   data_out(1) <= q(1) when rd_en_delayed = '1' else q_saved(1) ;
   data_out(2) <= q(2) when rd_en_delayed = '1' else q_saved(2) ;
   data_out(3) <= q(3) when rd_en_delayed = '1' else q_saved(3) ;
   data_out(4) <= q(4) when rd_en_delayed = '1' else q_saved(4) ;
   data_out(5) <= q(5) when rd_en_delayed = '1' else q_saved(5) ;
   data_out(6) <= q(6) when rd_en_delayed = '1' else q_saved(6) ;
   data_out(7) <= q(7) when rd_en_delayed = '1' else q_saved(7) ;
   not_status_cnt_7 <= NOT status_cnt(7) ;
   not_status_cnt_6 <= NOT status_cnt(6) ;
   not_status_cnt_5 <= NOT status_cnt(5) ;
   not_status_cnt_4 <= NOT status_cnt(4) ;
   not_status_cnt_3 <= NOT status_cnt(3) ;
   not_status_cnt_2 <= NOT status_cnt(2) ;
   not_status_cnt_1 <= NOT status_cnt(1) ;
   not_status_cnt_0 <= NOT status_cnt(0) ;
   full_and_0 : and_9u_9u port map ( a(8)=>status_cnt(8), a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>full_EXMPLR147);
   not_status_cnt_8 <= NOT status_cnt(8) ;
   empty_and_1 : and_9u_9u port map ( a(8)=>not_status_cnt_8, a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>empty_EXMPLR146);
   modgen_counter_wr_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>wr_pointer(7), q(6)=>wr_pointer(6), q(5)=>wr_pointer(5), 
      q(4)=>wr_pointer(4), q(3)=>wr_pointer(3), q(2)=>wr_pointer(2), q(1)=>
      wr_pointer(1), q(0)=>wr_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,0), data(6)=>DANGLING(0,1), data(5)=>
      DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)=>DANGLING(0,4), data(2)
      =>DANGLING(0,5), data(1)=>DANGLING(0,6), data(0)=>DANGLING(0,7), aset
      =>GND, sclear=>rst, updn=>PWR, cnt_en=>wr_en);
   modgen_counter_rd_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>rd_pointer(7), q(6)=>rd_pointer(6), q(5)=>rd_pointer(5), 
      q(4)=>rd_pointer(4), q(3)=>rd_pointer(3), q(2)=>rd_pointer(2), q(1)=>
      rd_pointer(1), q(0)=>rd_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,8), data(6)=>DANGLING(0,9), data(5)=>
      DANGLING(0,10), data(4)=>DANGLING(0,11), data(3)=>DANGLING(0,12), 
      data(2)=>DANGLING(0,13), data(1)=>DANGLING(0,14), data(0)=>
      DANGLING(0,15), aset=>GND, sclear=>rst, updn=>PWR, cnt_en=>rd_en);
   modgen_counter_status_cnt : 
      counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 port map ( clock
      =>clk, q(8)=>status_cnt(8), q(7)=>status_cnt(7), q(6)=>status_cnt(6), 
      q(5)=>status_cnt(5), q(4)=>status_cnt(4), q(3)=>status_cnt(3), q(2)=>
      status_cnt(2), q(1)=>status_cnt(1), q(0)=>status_cnt(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(8)=>DANGLING(0,16), data(7)=>
      DANGLING(0,17), data(6)=>DANGLING(0,18), data(5)=>DANGLING(0,19), 
      data(4)=>DANGLING(0,20), data(3)=>DANGLING(0,21), data(2)=>
      DANGLING(0,22), data(1)=>DANGLING(0,23), data(0)=>DANGLING(0,24), aset
      =>GND, sclear=>rst, updn=>not_rtlc8n72, cnt_en=>rtlcn0);
   DFFPC (rd_en,GND,GND,clk,rd_en_delayed) ;
   DFFPCE (q(7),GND,GND,rd_en_delayed,clk,q_saved(7)) ;
   DFFPCE (q(6),GND,GND,rd_en_delayed,clk,q_saved(6)) ;
   DFFPCE (q(5),GND,GND,rd_en_delayed,clk,q_saved(5)) ;
   DFFPCE (q(4),GND,GND,rd_en_delayed,clk,q_saved(4)) ;
   DFFPCE (q(3),GND,GND,rd_en_delayed,clk,q_saved(3)) ;
   DFFPCE (q(2),GND,GND,rd_en_delayed,clk,q_saved(2)) ;
   DFFPCE (q(1),GND,GND,rd_en_delayed,clk,q_saved(1)) ;
   DFFPCE (q(0),GND,GND,rd_en_delayed,clk,q_saved(0)) ;
end main_unfold_1 ;


architecture INTERFACE of ram_new_0_work_mem_8_8_main is 
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
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;


architecture main_unfold_4 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
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
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_4 ;


architecture INTERFACE_unfold_1 of 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 is 
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
end INTERFACE_unfold_1 ;


architecture INTERFACE_unfold_1 of 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 is 
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
end INTERFACE_unfold_1 ;


architecture INTERFACE_unfold_1 of 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 is 
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
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component dec_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, 
      nx44, sclear_and_0_dup_151, sclear_and_1_dup_152, sclear_and_2_dup_153, 
      sclear_and_3_dup_154, sclear_and_4_dup_155, sclear_and_5_dup_156, 
      sclear_and_6_dup_157, sclear_and_7_dup_158, sclear_and_8_dup_159, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, dec_d_0, dec_d_1, dec_d_2, dec_d_3, dec_d_4, dec_d_5, dec_d_6, 
      dec_d_7, dec_d_8, incdec_mux_0_dup_113, incdec_mux_1_dup_114, 
      incdec_mux_2_dup_115, incdec_mux_3_dup_116, incdec_mux_4_dup_117, 
      incdec_mux_5_dup_118, incdec_mux_6_dup_119, incdec_mux_7_dup_120, 
      incdec_mux_8_dup_121, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(8) <= nx39 ;
   q(7) <= nx38 ;
   q(6) <= nx37 ;
   q(5) <= nx36 ;
   q(4) <= nx35 ;
   q(3) <= nx34 ;
   q(2) <= nx33 ;
   q(1) <= nx32 ;
   q(0) <= nx31 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx44 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_8_dup_159,GND,GND,nx44,clock,nx39) ;
   DFFPCE (sclear_and_7_dup_158,GND,GND,nx44,clock,nx38) ;
   DFFPCE (sclear_and_6_dup_157,GND,GND,nx44,clock,nx37) ;
   DFFPCE (sclear_and_5_dup_156,GND,GND,nx44,clock,nx36) ;
   DFFPCE (sclear_and_4_dup_155,GND,GND,nx44,clock,nx35) ;
   DFFPCE (sclear_and_3_dup_154,GND,GND,nx44,clock,nx34) ;
   DFFPCE (sclear_and_2_dup_153,GND,GND,nx44,clock,nx33) ;
   DFFPCE (sclear_and_1_dup_152,GND,GND,nx44,clock,nx32) ;
   DFFPCE (sclear_and_0_dup_151,GND,GND,nx44,clock,nx31) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, 
      d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   dec : dec_9u_9u_0_0 port map ( cin=>GND, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>dec_d_8, d(7)=>dec_d_7, d(6)=>dec_d_6, d(5)=>dec_d_5, 
      d(4)=>dec_d_4, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,1));
   incdec_mux_0_dup_113 <= inc_d_0 when updn = '1' else dec_d_0 ;
   incdec_mux_1_dup_114 <= inc_d_1 when updn = '1' else dec_d_1 ;
   incdec_mux_2_dup_115 <= inc_d_2 when updn = '1' else dec_d_2 ;
   incdec_mux_3_dup_116 <= inc_d_3 when updn = '1' else dec_d_3 ;
   incdec_mux_4_dup_117 <= inc_d_4 when updn = '1' else dec_d_4 ;
   incdec_mux_5_dup_118 <= inc_d_5 when updn = '1' else dec_d_5 ;
   incdec_mux_6_dup_119 <= inc_d_6 when updn = '1' else dec_d_6 ;
   incdec_mux_7_dup_120 <= inc_d_7 when updn = '1' else dec_d_7 ;
   incdec_mux_8_dup_121 <= inc_d_8 when updn = '1' else dec_d_8 ;
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_151 <= incdec_mux_0_dup_113 AND NOT_sclear ;
   sclear_and_1_dup_152 <= incdec_mux_1_dup_114 AND NOT_sclear ;
   sclear_and_2_dup_153 <= incdec_mux_2_dup_115 AND NOT_sclear ;
   sclear_and_3_dup_154 <= incdec_mux_3_dup_116 AND NOT_sclear ;
   sclear_and_4_dup_155 <= incdec_mux_4_dup_117 AND NOT_sclear ;
   sclear_and_5_dup_156 <= incdec_mux_5_dup_118 AND NOT_sclear ;
   sclear_and_6_dup_157 <= incdec_mux_6_dup_119 AND NOT_sclear ;
   sclear_and_7_dup_158 <= incdec_mux_7_dup_120 AND NOT_sclear ;
   sclear_and_8_dup_159 <= incdec_mux_8_dup_121 AND NOT_sclear ;
end INTERFACE_unfold_1 ;


architecture main_unfold_1927_0 of syn_fifo_8_8 is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8
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
   component counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8
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
   component counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
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
   for mem : mem_8_8 use entity work.mem_8_8(main_unfold_4);
   for modgen_counter_wr_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8(INTERFACE_unfold_1);
   
   for modgen_counter_rd_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8(INTERFACE_unfold_1);
   
   for modgen_counter_status_cnt : 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 use entity work.
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8(INTERFACE_unfold_1
   );
   signal empty_EXMPLR238, full_EXMPLR239: std_logic ;
   
   signal wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal q: std_logic_vector (7 DOWNTO 0) ;
   
   signal q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_en_delayed, GND, PWR, not_empty, not_wr_en, rtlc8n63, rtlc8n72, 
      not_rd_en, rtlc8n91, not_full, rtlc8n93, not_rtlc8n72, rtlcn0, 
      not_status_cnt_7, not_status_cnt_6, not_status_cnt_5, not_status_cnt_4, 
      not_status_cnt_3, not_status_cnt_2, not_status_cnt_1, not_status_cnt_0, 
      not_status_cnt_8: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   empty <= empty_EXMPLR238 ;
   full <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   mem : mem_8_8 port map ( address(7)=>pointer(7), address(6)=>pointer(6), 
      address(5)=>pointer(5), address(4)=>pointer(4), address(3)=>pointer(3), 
      address(2)=>pointer(2), address(1)=>pointer(1), address(0)=>pointer(0), 
      clock=>clk, data(7)=>data_in(7), data(6)=>data_in(6), data(5)=>
      data_in(5), data(4)=>data_in(4), data(3)=>data_in(3), data(2)=>
      data_in(2), data(1)=>data_in(1), data(0)=>data_in(0), wren=>wr_en, 
      q(7)=>q(7), q(6)=>q(6), q(5)=>q(5), q(4)=>q(4), q(3)=>q(3), q(2)=>q(2), 
      q(1)=>q(1), q(0)=>q(0));
   not_empty <= NOT empty_EXMPLR238 ;
   not_wr_en <= NOT wr_en ;
   not_rtlc8n72 <= NOT rtlc8n72 ;
   rtlc8n91 <= wr_en AND not_rd_en ;
   rtlc8n93 <= rtlc8n91 AND not_full ;
   rtlc8n63 <= rd_en AND not_wr_en ;
   rtlc8n72 <= rtlc8n63 AND not_empty ;
   not_rd_en <= NOT rd_en ;
   not_full <= NOT full_EXMPLR239 ;
   rtlcn0 <= rtlc8n93 OR rtlc8n72 ;
   pointer(0) <= wr_pointer(0) when wr_en = '1' else rd_pointer(0) ;
   pointer(1) <= wr_pointer(1) when wr_en = '1' else rd_pointer(1) ;
   pointer(2) <= wr_pointer(2) when wr_en = '1' else rd_pointer(2) ;
   pointer(3) <= wr_pointer(3) when wr_en = '1' else rd_pointer(3) ;
   pointer(4) <= wr_pointer(4) when wr_en = '1' else rd_pointer(4) ;
   pointer(5) <= wr_pointer(5) when wr_en = '1' else rd_pointer(5) ;
   pointer(6) <= wr_pointer(6) when wr_en = '1' else rd_pointer(6) ;
   pointer(7) <= wr_pointer(7) when wr_en = '1' else rd_pointer(7) ;
   data_out(0) <= q(0) when rd_en_delayed = '1' else q_saved(0) ;
   data_out(1) <= q(1) when rd_en_delayed = '1' else q_saved(1) ;
   data_out(2) <= q(2) when rd_en_delayed = '1' else q_saved(2) ;
   data_out(3) <= q(3) when rd_en_delayed = '1' else q_saved(3) ;
   data_out(4) <= q(4) when rd_en_delayed = '1' else q_saved(4) ;
   data_out(5) <= q(5) when rd_en_delayed = '1' else q_saved(5) ;
   data_out(6) <= q(6) when rd_en_delayed = '1' else q_saved(6) ;
   data_out(7) <= q(7) when rd_en_delayed = '1' else q_saved(7) ;
   not_status_cnt_7 <= NOT status_cnt(7) ;
   not_status_cnt_6 <= NOT status_cnt(6) ;
   not_status_cnt_5 <= NOT status_cnt(5) ;
   not_status_cnt_4 <= NOT status_cnt(4) ;
   not_status_cnt_3 <= NOT status_cnt(3) ;
   not_status_cnt_2 <= NOT status_cnt(2) ;
   not_status_cnt_1 <= NOT status_cnt(1) ;
   not_status_cnt_0 <= NOT status_cnt(0) ;
   full_and_0 : and_9u_9u port map ( a(8)=>status_cnt(8), a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>full_EXMPLR239);
   not_status_cnt_8 <= NOT status_cnt(8) ;
   empty_and_1 : and_9u_9u port map ( a(8)=>not_status_cnt_8, a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>empty_EXMPLR238);
   modgen_counter_wr_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>wr_pointer(7), q(6)=>wr_pointer(6), q(5)=>wr_pointer(5), 
      q(4)=>wr_pointer(4), q(3)=>wr_pointer(3), q(2)=>wr_pointer(2), q(1)=>
      wr_pointer(1), q(0)=>wr_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,0), data(6)=>DANGLING(0,1), data(5)=>
      DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)=>DANGLING(0,4), data(2)
      =>DANGLING(0,5), data(1)=>DANGLING(0,6), data(0)=>DANGLING(0,7), aset
      =>GND, sclear=>rst, updn=>PWR, cnt_en=>wr_en);
   modgen_counter_rd_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>rd_pointer(7), q(6)=>rd_pointer(6), q(5)=>rd_pointer(5), 
      q(4)=>rd_pointer(4), q(3)=>rd_pointer(3), q(2)=>rd_pointer(2), q(1)=>
      rd_pointer(1), q(0)=>rd_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,8), data(6)=>DANGLING(0,9), data(5)=>
      DANGLING(0,10), data(4)=>DANGLING(0,11), data(3)=>DANGLING(0,12), 
      data(2)=>DANGLING(0,13), data(1)=>DANGLING(0,14), data(0)=>
      DANGLING(0,15), aset=>GND, sclear=>rst, updn=>PWR, cnt_en=>rd_en);
   modgen_counter_status_cnt : 
      counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 port map ( clock
      =>clk, q(8)=>status_cnt(8), q(7)=>status_cnt(7), q(6)=>status_cnt(6), 
      q(5)=>status_cnt(5), q(4)=>status_cnt(4), q(3)=>status_cnt(3), q(2)=>
      status_cnt(2), q(1)=>status_cnt(1), q(0)=>status_cnt(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(8)=>DANGLING(0,16), data(7)=>
      DANGLING(0,17), data(6)=>DANGLING(0,18), data(5)=>DANGLING(0,19), 
      data(4)=>DANGLING(0,20), data(3)=>DANGLING(0,21), data(2)=>
      DANGLING(0,22), data(1)=>DANGLING(0,23), data(0)=>DANGLING(0,24), aset
      =>GND, sclear=>rst, updn=>not_rtlc8n72, cnt_en=>rtlcn0);
   DFFPC (rd_en,GND,GND,clk,rd_en_delayed) ;
   DFFPCE (q(7),GND,GND,rd_en_delayed,clk,q_saved(7)) ;
   DFFPCE (q(6),GND,GND,rd_en_delayed,clk,q_saved(6)) ;
   DFFPCE (q(5),GND,GND,rd_en_delayed,clk,q_saved(5)) ;
   DFFPCE (q(4),GND,GND,rd_en_delayed,clk,q_saved(4)) ;
   DFFPCE (q(3),GND,GND,rd_en_delayed,clk,q_saved(3)) ;
   DFFPCE (q(2),GND,GND,rd_en_delayed,clk,q_saved(2)) ;
   DFFPCE (q(1),GND,GND,rd_en_delayed,clk,q_saved(1)) ;
   DFFPCE (q(0),GND,GND,rd_en_delayed,clk,q_saved(0)) ;
end main_unfold_1927_0 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11_cx3_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11_cx3_uart ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11_cx3_uart is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,aclear,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,aclear,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,aclear,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,aclear,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12_cx4_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12_cx4_uart ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12_cx4_uart is 
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
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, 
      nx49, nx50, nx51, sclear_and_0_dup_147, sclear_and_1_dup_148, 
      sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
      sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
      sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
      sclear_and_11_dup_158, inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, 
      inc_d_5, inc_d_6, inc_d_7, inc_d_8, inc_d_9, inc_d_10, inc_d_11, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(11) <= nx51 ;
   q(10) <= nx50 ;
   q(9) <= nx49 ;
   q(8) <= nx48 ;
   q(7) <= nx47 ;
   q(6) <= nx46 ;
   q(5) <= nx45 ;
   q(4) <= nx44 ;
   q(3) <= nx43 ;
   q(2) <= nx42 ;
   q(1) <= nx41 ;
   q(0) <= nx40 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_11_dup_158,GND,aclear,clock,nx51) ;
   DFFPC (sclear_and_10_dup_157,GND,aclear,clock,nx50) ;
   DFFPC (sclear_and_9_dup_156,GND,aclear,clock,nx49) ;
   DFFPC (sclear_and_8_dup_155,GND,aclear,clock,nx48) ;
   DFFPC (sclear_and_7_dup_154,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_6_dup_153,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_5_dup_152,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_4_dup_151,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_3_dup_150,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_2_dup_149,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_1_dup_148,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_0_dup_147,GND,aclear,clock,nx40) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx51, a(10)=>nx50, a(9)
      =>nx49, a(8)=>nx48, a(7)=>nx47, a(6)=>nx46, a(5)=>nx45, a(4)=>nx44, 
      a(3)=>nx43, a(2)=>nx42, a(1)=>nx41, a(0)=>nx40, d(11)=>inc_d_11, d(10)
      =>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, 
      d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>
      inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_147 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_148 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_149 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_150 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_151 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_152 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_153 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_154 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_155 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_156 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_157 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_158 <= inc_d_11 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart ;

architecture INTERFACE of 
   counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart is 
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
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx17, nx18, nx19, nx20, nx22, sload_mux_0_dup_53, 
      sload_mux_1_dup_54, sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0, 
      dec_d_1, dec_d_2, dec_d_3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sload ;
   nx22 <= clk_en AND nx20 ;
   DFFPCE (sload_mux_3_dup_56,GND,aclear,nx22,clock,nx19) ;
   DFFPCE (sload_mux_2_dup_55,GND,aclear,nx22,clock,nx18) ;
   DFFPCE (sload_mux_1_dup_54,GND,aclear,nx22,clock,nx17) ;
   DFFPCE (sload_mux_0_dup_53,GND,aclear,nx22,clock,nx16) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,0));
   sload_mux_0_dup_53 <= data(0) when sload = '1' else dec_d_0 ;
   sload_mux_1_dup_54 <= data(1) when sload = '1' else dec_d_1 ;
   sload_mux_2_dup_55 <= data(2) when sload = '1' else dec_d_2 ;
   sload_mux_3_dup_56 <= data(3) when sload = '1' else dec_d_3 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx16, nx17, nx18, nx19, nx24, nx26, sclear_and_0_dup_59, 
      sclear_and_1_dup_60, sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx24 <= cnt_en OR sclear ;
   nx26 <= nx24 AND clk_en ;
   DFFPCE (sclear_and_3_dup_62,GND,aclear,nx26,clock,nx19) ;
   DFFPCE (sclear_and_2_dup_61,GND,aclear,nx26,clock,nx18) ;
   DFFPCE (sclear_and_1_dup_60,GND,aclear,nx26,clock,nx17) ;
   DFFPCE (sclear_and_0_dup_59,GND,aclear,nx26,clock,nx16) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_59 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_60 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_61 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_62 <= inc_d_3 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uart is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end uart ;

architecture main_unfold_1641 of uart is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11_cx3_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12_cx4_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   signal RxRDY_EXMPLR343: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxDivisor_4: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, rtlc8n72: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, 
      not_TxFSM_1, not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, 
      rtlc14n234, not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, 
      not_rtlc14n167, not_rtlcn24, not_Rx_r, not_Rx, rtlc17n282, rtlc17n287, 
      not_TopRx, rtlc17n335, rtlc17n414, not_rtlc17n287, rtlc17n432, 
      not_rtlcn26, rtlcn20, rtlcn22, rtlcn24, rtlcn26, not_TxFSM_0, rtlcn52, 
      rtlcn58, rtlcn63, rtlcn68, rtlcn72, rtlcn78, rtlcn86, rtlcn92, 
      not_rtlcn132, not_RxFSM_0, not_rtlcs5, rtlcn113, rtlcn114, rtlcn115, 
      rtlcn116, not_rtlcs4, not_rtlc14n289, rtlcn132, not_RxFSM_4, rtlcs0, 
      rtlcs1, rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, 
      not_RxBitCnt_0, not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, not_rtlc17n335, rtlcs6, rtlcs7, rtlc14_109_or_2_nx0: 
   std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   RxRDY <= RxRDY_EXMPLR343 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n72 <= RxFSM(0) OR rtlcs0 ;
   rtlc14n289 <= rtlcs4 OR rtlc14n218 ;
   rtlc14n163 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n223 <= not_TopTx AND TxFSM(1) ;
   rtlc14n218 <= TxFSM(1) AND TxFSM(0) ;
   not_rtlc14_X_0_n224 <= NOT rtlc14_X_0_n224 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n234 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n282 <= not_TopRx OR not_Rx_r ;
   not_TopRx <= NOT TopRx ;
   rtlc17n335 <= not_TopRx AND RxFSM(3) ;
   not_Rx <= NOT Rx ;
   not_rtlcn20 <= NOT rtlcn20 ;
   rtlcn20 <= TxFSM(1) OR TxFSM(0) ;
   rtlc_82_select_3 : select_3_3 port map ( a(2)=>RxFSM(0), a(1)=>
      not_rtlcn132, a(0)=>RxFSM(5), b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>
      not_Rx, d=>rtlcn26);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_127_mux_5 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n167);
   rtlc_128_mux_6 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn22);
   rtlc_129_mux_7 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n163, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn24);
   not_Rx_r <= NOT Rx_r ;
   not_LD <= NOT LD ;
   not_RxFSM_0 <= NOT RxFSM(0) ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn52 <= not_rtlcs5 AND RxFSM(2) ;
   rtlcn113 <= not_Rx_r AND RxFSM(1) ;
   rtlcn58 <= RxFSM(3) OR rtlcn113 ;
   rtlcn114 <= RxFSM(4) AND Rx_r ;
   rtlcn63 <= RxFSM(5) OR rtlcn114 ;
   rtlcn68 <= rtlcs5 AND RxFSM(2) ;
   rtlcn72 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn115 <= RxFSM(4) AND not_Rx_r ;
   rtlcn116 <= Rx_r AND RxFSM(1) ;
   rtlcn78 <= rtlcn115 OR rtlcn116 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   rtlcn86 <= LD OR not_rtlcs4 ;
   not_rtlc14n289 <= NOT rtlc14n289 ;
   not_rtlcn132 <= NOT rtlcn132 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(4) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(6) ;
   not_rtlcn24 <= NOT rtlcn24 ;
   not_rtlc14n167 <= NOT rtlc14n167 ;
   not_rtlcn22 <= NOT rtlcn22 ;
   not_rtlcn26 <= NOT rtlcn26 ;
   rtlc17n432 <= RxRDY_EXMPLR343 OR RxFSM(5) ;
   not_RxFSM_4 <= NOT RxFSM(4) ;
   not_rtlc17n287 <= NOT rtlc17n287 ;
   rtlcn132 <= RxFSM(0) OR RxFSM(5) ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_356_and_9 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_366_and_10 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   rtlc17n287 <= rtlc17n282 OR not_RxFSM_4 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_377_and_11 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_382_and_12 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlc17n414 <= TopRx AND RxFSM(3) ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11_cx3_uart
       port map ( clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>
      RxDiv(8), q(7)=>RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>
      RxDiv(4), q(3)=>RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>
      RxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(10)=>
      DANGLING(0,0), data(9)=>DANGLING(0,1), data(8)=>DANGLING(0,2), data(7)
      =>DANGLING(0,3), data(6)=>DANGLING(0,4), data(5)=>DANGLING(0,5), 
      data(4)=>DANGLING(0,6), data(3)=>DANGLING(0,7), data(2)=>DANGLING(0,8), 
      data(1)=>DANGLING(0,9), data(0)=>DANGLING(0,10), aset=>GND, sclear=>
      rtlc8n72, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12_cx4_uart
       port map ( clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>
      TxDiv(9), q(8)=>TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>
      TxDiv(5), q(4)=>TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>
      TxDiv(1), q(0)=>TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, 
      data(11)=>DANGLING(0,11), data(10)=>DANGLING(0,12), data(9)=>
      DANGLING(0,13), data(8)=>DANGLING(0,14), data(7)=>DANGLING(0,15), 
      data(6)=>DANGLING(0,16), data(5)=>DANGLING(0,17), data(4)=>
      DANGLING(0,18), data(3)=>DANGLING(0,19), data(2)=>DANGLING(0,20), 
      data(1)=>DANGLING(0,21), data(0)=>DANGLING(0,22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : 
      counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart port map ( 
      clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>TxBitCnt(1), 
      q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n224, aclear=>RST, sload=>
      rtlc14n234, data(3)=>PWR, data(2)=>GND, data(1)=>GND, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   not_rtlc17n335 <= NOT rtlc17n335 ;
   modgen_counter_RxBitCnt : 
      counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart port map ( 
      clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>RxBitCnt(1), 
      q(0)=>RxBitCnt(0), clk_en=>not_rtlc17n335, aclear=>RST, sload=>GND, 
      data(3)=>DANGLING(0,23), data(2)=>DANGLING(0,24), data(1)=>
      DANGLING(0,25), data(0)=>DANGLING(0,26), aset=>GND, sclear=>RxFSM(0), 
      updn=>PWR, cnt_en=>RxFSM(3));
   rtlceq_s14_eq_13 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>RxDivisor_4, 
      b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, b(2)=>RxDivisor_4, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_14 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      RxDivisor_4, b(5)=>RxDivisor_4, b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, 
      b(2)=>GND, b(1)=>GND, b(0)=>RxDivisor_4, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,RxDivisor_4) ;
   DFFPC (rtlcn72,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n289,GND,RST,not_rtlcn24,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn24,CLK,TxFSM(0)) ;
   DFFPC (rtlcn86,GND,RST,CLK,TxBusy) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n167,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n167,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n167,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n167,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n167,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n167,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n167,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n167,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn22,CLK,Tx) ;
   DFFPCE (rtlcn78,GND,RST,not_rtlcn26,CLK,RxFSM(5)) ;
   DFFPCE (rtlcn68,GND,RST,not_rtlcn26,CLK,RxFSM(4)) ;
   DFFPCE (rtlcn52,GND,RST,not_rtlcn26,CLK,RxFSM(3)) ;
   DFFPCE (rtlcn58,GND,RST,not_rtlcn26,CLK,RxFSM(2)) ;
   DFFPCE (RxFSM(0),GND,RST,not_rtlcn26,CLK,RxFSM(1)) ;
   DFFPCE (rtlcn63,RST,GND,not_rtlcn26,CLK,RxFSM(0)) ;
   DFFPCE (RxFSM(5),GND,RST,rtlc17n432,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n287,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n287,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n287,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n287,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n287,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n287,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n287,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n287,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n414,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n414,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n414,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n414,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n414,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n414,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n414,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n414,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn92,GND,RST,CLK,RxRDY_EXMPLR343) ;
   rtlc14_109_or_2_nx0 <= rtlc14n218 OR not_rtlcn20 ;
   rtlc14_X_0_n224 <= rtlc14_109_or_2_nx0 OR rtlc14n223 ;
   rtlcn92 <= rtlcn114 AND TopRx ;
end main_unfold_1641 ;


architecture INTERFACE_unfold_2 of ram_new_0_work_mem_8_8_main is 
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
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_2 ;


architecture main_unfold_1 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
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
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_2);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_1 ;


architecture INTERFACE_unfold_3 of ram_new_0_work_mem_8_8_main is 
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
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_3 ;


architecture main_unfold_2 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
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
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_3);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_2 ;


architecture INTERFACE_unfold_4 of ram_new_0_work_mem_8_8_main is 
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
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_4 ;


architecture main_unfold_3 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
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
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_4);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_3 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx7_kirsch is 
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
end counter_up_cnt_en_sclear_clock_0_8_cx7_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx7_kirsch is 
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

entity counter_up_cnt_en_sclear_clock_0_8_cx8_kirsch is 
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
end counter_up_cnt_en_sclear_clock_0_8_cx8_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx8_kirsch is 
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

architecture main_unfold_1777 of kirsch is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
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
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
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
   component counter_up_cnt_en_sclear_clock_0_8_cx7_kirsch
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
   component counter_up_cnt_en_sclear_clock_0_8_cx8_kirsch
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
   for mem_gen_0_m : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for mem_gen_1_m : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for mem_gen_2_m : mem_8_8 use entity work.mem_8_8(main_unfold_3);
   signal o_mode_EXMPLR615: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR616: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_col_EXMPLR617: std_logic_vector (7 DOWNTO 0) ;
   
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
   
   signal r3_15n1s1: std_logic_vector (11 DOWNTO 0) ;
   
   signal r4_16n0r1: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlc17n46: std_logic ;
   
   signal r6_18n0r1: std_logic_vector (12 DOWNTO 1) ;
   
   signal r7_19n0r1_13, r7_19n0r1_12, r7_19n0r1_11, r7_19n0r1_10, 
      r7_19n0r1_9, r7_19n0r1_8, r7_19n0r1_7, not_rtlc20n126, rtlc20n123, 
      rtlc20n124, not_r7_val_13, rtlc20n126, rtlcn16, rtlcn17, rtlcn18, 
      rtlcn20, rtlcn21, rtlcn25, rtlcn28, rtlcn194, rtlcn203, not_rtlc10n68, 
      rtlcn215, not_rtlc6n38, rtlcn218, not_rtlcn203, not_rtlcs3, 
      not_rtlc12n129, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs6, 
      not_o_col_0, rtlcs8, rtlcs9, not_o_mode_1, not_o_mode_0, not_o_col_7, 
      not_o_col_6, not_o_col_5, not_o_col_4, not_o_col_3, not_o_col_2, 
      not_o_col_1, not_rtlcn25, rtlcn5533: std_logic ;
   
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
      r7_val_7, not_rtlc13n39, not_rtlc17n33, rtlc4_44_and_48_nx0, 
      rtlc_422_and_71_nx0, NOT_r6_0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_mode(1) <= o_mode_EXMPLR615(1) ;
   o_mode(0) <= o_mode_EXMPLR615(0) ;
   o_row(7) <= o_row_EXMPLR616(7) ;
   o_row(6) <= o_row_EXMPLR616(6) ;
   o_row(5) <= o_row_EXMPLR616(5) ;
   o_row(4) <= o_row_EXMPLR616(4) ;
   o_row(3) <= o_row_EXMPLR616(3) ;
   o_row(2) <= o_row_EXMPLR616(2) ;
   o_row(1) <= o_row_EXMPLR616(1) ;
   o_row(0) <= o_row_EXMPLR616(0) ;
   o_col(7) <= GND ;
   o_col(6) <= GND ;
   o_col(5) <= GND ;
   o_col(4) <= GND ;
   o_col(3) <= GND ;
   o_col(2) <= GND ;
   o_col(1) <= GND ;
   o_col(0) <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   mem_gen_0_m : mem_8_8 port map ( address(7)=>o_col_EXMPLR617(7), 
      address(6)=>o_col_EXMPLR617(6), address(5)=>o_col_EXMPLR617(5), 
      address(4)=>o_col_EXMPLR617(4), address(3)=>o_col_EXMPLR617(3), 
      address(2)=>o_col_EXMPLR617(2), address(1)=>o_col_EXMPLR617(1), 
      address(0)=>o_col_EXMPLR617(0), clock=>clk, data(7)=>i_pixel(7), 
      data(6)=>i_pixel(6), data(5)=>i_pixel(5), data(4)=>i_pixel(4), data(3)
      =>i_pixel(3), data(2)=>i_pixel(2), data(1)=>i_pixel(1), data(0)=>
      i_pixel(0), wren=>wr_en(0), q(7)=>M_out_0(7), q(6)=>M_out_0(6), q(5)=>
      M_out_0(5), q(4)=>M_out_0(4), q(3)=>M_out_0(3), q(2)=>M_out_0(2), q(1)
      =>M_out_0(1), q(0)=>M_out_0(0));
   mem_gen_1_m : mem_8_8 port map ( address(7)=>o_col_EXMPLR617(7), 
      address(6)=>o_col_EXMPLR617(6), address(5)=>o_col_EXMPLR617(5), 
      address(4)=>o_col_EXMPLR617(4), address(3)=>o_col_EXMPLR617(3), 
      address(2)=>o_col_EXMPLR617(2), address(1)=>o_col_EXMPLR617(1), 
      address(0)=>o_col_EXMPLR617(0), clock=>clk, data(7)=>i_pixel(7), 
      data(6)=>i_pixel(6), data(5)=>i_pixel(5), data(4)=>i_pixel(4), data(3)
      =>i_pixel(3), data(2)=>i_pixel(2), data(1)=>i_pixel(1), data(0)=>
      i_pixel(0), wren=>wr_en(1), q(7)=>M_out_1(7), q(6)=>M_out_1(6), q(5)=>
      M_out_1(5), q(4)=>M_out_1(4), q(3)=>M_out_1(3), q(2)=>M_out_1(2), q(1)
      =>M_out_1(1), q(0)=>M_out_1(0));
   mem_gen_2_m : mem_8_8 port map ( address(7)=>o_col_EXMPLR617(7), 
      address(6)=>o_col_EXMPLR617(6), address(5)=>o_col_EXMPLR617(5), 
      address(4)=>o_col_EXMPLR617(4), address(3)=>o_col_EXMPLR617(3), 
      address(2)=>o_col_EXMPLR617(2), address(1)=>o_col_EXMPLR617(1), 
      address(0)=>o_col_EXMPLR617(0), clock=>clk, data(7)=>i_pixel(7), 
      data(6)=>i_pixel(6), data(5)=>i_pixel(5), data(4)=>i_pixel(4), data(3)
      =>i_pixel(3), data(2)=>i_pixel(2), data(1)=>i_pixel(1), data(0)=>
      i_pixel(0), wren=>wr_en(2), q(7)=>M_out_2(7), q(6)=>M_out_2(6), q(5)=>
      M_out_2(5), q(4)=>M_out_2(4), q(3)=>M_out_2(3), q(2)=>M_out_2(2), q(1)
      =>M_out_2(1), q(0)=>M_out_2(0));
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
   rtlc13_39_gt_67 : gt_8u_8u port map ( a(7)=>i1_val(7), a(6)=>i1_val(6), 
      a(5)=>i1_val(5), a(4)=>i1_val(4), a(3)=>i1_val(3), a(2)=>i1_val(2), 
      a(1)=>i1_val(1), a(0)=>i1_val(0), b(7)=>i2_val(7), b(6)=>i2_val(6), 
      b(5)=>i2_val(5), b(4)=>i2_val(4), b(3)=>i2_val(3), b(2)=>i2_val(2), 
      b(1)=>i2_val(1), b(0)=>i2_val(0), d=>not_rtlc13n39);
   rtlc13n39 <= NOT not_rtlc13n39 ;
   r3_add12_15i1 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>GND, 
      a(10)=>GND, a(9)=>GND, a(8)=>r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>
      r2(5), a(4)=>r2(4), a(3)=>r2(3), a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), 
      b(11)=>r3(11), b(10)=>r3(10), b(9)=>r3(9), b(8)=>r3(8), b(7)=>r3(7), 
      b(6)=>r3(6), b(5)=>r3(5), b(4)=>r3(4), b(3)=>r3(3), b(2)=>r3(2), b(1)
      =>r3(1), b(0)=>r3(0), d(11)=>r3_15n1s1(11), d(10)=>r3_15n1s1(10), d(9)
      =>r3_15n1s1(9), d(8)=>r3_15n1s1(8), d(7)=>r3_15n1s1(7), d(6)=>
      r3_15n1s1(6), d(5)=>r3_15n1s1(5), d(4)=>r3_15n1s1(4), d(3)=>
      r3_15n1s1(3), d(2)=>r3_15n1s1(2), d(1)=>r3_15n1s1(1), d(0)=>
      r3_15n1s1(0), cout=>DANGLING(0,0));
   rtlc17_49_gt_69 : gt_10u_10u port map ( a(9)=>r4_val(9), a(8)=>r4_val(8), 
      a(7)=>r4_val(7), a(6)=>r4_val(6), a(5)=>r4_val(5), a(4)=>r4_val(4), 
      a(3)=>r4_val(3), a(2)=>r4_val(2), a(1)=>r4_val(1), a(0)=>r4_val(0), 
      b(9)=>r5_val(9), b(8)=>r5_val(8), b(7)=>r5_val(7), b(6)=>r5_val(6), 
      b(5)=>r5_val(5), b(4)=>r5_val(4), b(3)=>r5_val(3), b(2)=>r5_val(2), 
      b(1)=>r5_val(1), b(0)=>r5_val(0), d=>not_rtlc17n33);
   not_rtlc20n126 <= NOT rtlc20n126 ;
   rtlc20n123 <= r7_val_7 AND r7_val_8 ;
   not_r7_val_13 <= NOT r7_val_13 ;
   rtlc20n126 <= rtlc20n124 AND not_r7_val_13 ;
   not_rtlcn21 <= NOT rtlcn21 ;
   rtlcn17 <= rtlc12n164 OR rtlc12n129 ;
   rtlcn21 <= wr_en(0) OR wr_en(1) ;
   rtlcn25 <= not_v_1 AND v(2) ;
   rtlcn28 <= not_v_1 AND not_v_2 ;
   rtlc6n38 <= i_valid OR rtlcn28 ;
   not_rtlc10n68 <= NOT rtlc10n68 ;
   rtlcn194 <= i_valid AND not_rtlc10n68 ;
   rtlcn215 <= not_rtlc13n39 AND rtlc5n38 ;
   not_rtlc6n38 <= NOT rtlc6n38 ;
   rtlcn218 <= rtlc13n39 AND not_rtlc6n38 ;
   rtlcn203 <= rtlcn215 OR rtlcn218 ;
   not_rtlcn203 <= NOT rtlcn203 ;
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
   r3_15n1ss1(0) <= r2(0) when v(1) = '1' else r3_15n1s1(0) ;
   r3_15n1ss1(1) <= r2(1) when v(1) = '1' else r3_15n1s1(1) ;
   r3_15n1ss1(2) <= r2(2) when v(1) = '1' else r3_15n1s1(2) ;
   r3_15n1ss1(3) <= r2(3) when v(1) = '1' else r3_15n1s1(3) ;
   r3_15n1ss1(4) <= r2(4) when v(1) = '1' else r3_15n1s1(4) ;
   r3_15n1ss1(5) <= r2(5) when v(1) = '1' else r3_15n1s1(5) ;
   r3_15n1ss1(6) <= r2(6) when v(1) = '1' else r3_15n1s1(6) ;
   r3_15n1ss1(7) <= r2(7) when v(1) = '1' else r3_15n1s1(7) ;
   r3_15n1ss1(8) <= r2(8) when v(1) = '1' else r3_15n1s1(8) ;
   rtlcn16 <= rtlcs0 OR i_valid ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc11n208 <= not_rtlcs3 AND rtlc9n54 ;
   not_rtlc11n128 <= NOT rtlc11n128 ;
   not_rtlc11n127 <= NOT rtlc11n127 ;
   not_rtlc12n129 <= NOT rtlc12n129 ;
   not_i_valid <= NOT i_valid ;
   rtlc17n46 <= not_rtlc17n33 OR v(2) ;
   not_v_2 <= NOT v(2) ;
   rtlcs4 <= o_col_EXMPLR617(0) AND rtlcs3 ;
   rtlcs6 <= not_o_col_0 AND rtlcs3 ;
   rtlc_427_and_72 : and_8u_8u port map ( a(7)=>o_col_EXMPLR617(7), a(6)=>
      o_col_EXMPLR617(6), a(5)=>o_col_EXMPLR617(5), a(4)=>o_col_EXMPLR617(4), 
      a(3)=>o_col_EXMPLR617(3), a(2)=>o_col_EXMPLR617(2), a(1)=>
      o_col_EXMPLR617(1), a(0)=>o_col_EXMPLR617(0), d=>rtlcs8);
   rtlc_428_and_73 : and_8u_8u port map ( a(7)=>o_row_EXMPLR616(7), a(6)=>
      o_row_EXMPLR616(6), a(5)=>o_row_EXMPLR616(5), a(4)=>o_row_EXMPLR616(4), 
      a(3)=>o_row_EXMPLR616(3), a(2)=>o_row_EXMPLR616(2), a(1)=>
      o_row_EXMPLR616(1), a(0)=>o_row_EXMPLR616(0), d=>rtlcs9);
   rtlcs1 <= o_mode_EXMPLR615(1) AND o_mode_EXMPLR615(0) ;
   not_o_mode_1 <= NOT o_mode_EXMPLR615(1) ;
   rtlcs0 <= not_o_mode_1 AND o_mode_EXMPLR615(0) ;
   not_o_mode_0 <= NOT o_mode_EXMPLR615(0) ;
   rtlcs2 <= o_mode_EXMPLR615(1) AND not_o_mode_0 ;
   not_o_col_7 <= NOT o_col_EXMPLR617(7) ;
   not_o_col_6 <= NOT o_col_EXMPLR617(6) ;
   not_o_col_5 <= NOT o_col_EXMPLR617(5) ;
   not_o_col_4 <= NOT o_col_EXMPLR617(4) ;
   not_o_col_3 <= NOT o_col_EXMPLR617(3) ;
   not_o_col_2 <= NOT o_col_EXMPLR617(2) ;
   not_o_col_1 <= NOT o_col_EXMPLR617(1) ;
   rtlc_443_and_74 : and_7u_7u port map ( a(6)=>not_o_col_7, a(5)=>
      not_o_col_6, a(4)=>not_o_col_5, a(3)=>not_o_col_4, a(2)=>not_o_col_3, 
      a(1)=>not_o_col_2, a(0)=>not_o_col_1, d=>rtlcs3);
   not_o_col_0 <= NOT o_col_EXMPLR617(0) ;
   not_rtlcn25 <= NOT rtlcn25 ;
   rtlc12n265 <= i_valid AND rtlcn17 ;
   modgen_counter_o_col : counter_up_cnt_en_sclear_clock_0_8_cx7_kirsch
       port map ( clock=>clk, q(7)=>o_col_EXMPLR617(7), q(6)=>
      o_col_EXMPLR617(6), q(5)=>o_col_EXMPLR617(5), q(4)=>o_col_EXMPLR617(4), 
      q(3)=>o_col_EXMPLR617(3), q(2)=>o_col_EXMPLR617(2), q(1)=>
      o_col_EXMPLR617(1), q(0)=>o_col_EXMPLR617(0), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,1), data(6)=>DANGLING(0,2), data(5)=>
      DANGLING(0,3), data(4)=>DANGLING(0,4), data(3)=>DANGLING(0,5), data(2)
      =>DANGLING(0,6), data(1)=>DANGLING(0,7), data(0)=>DANGLING(0,8), aset
      =>GND, sclear=>reset, updn=>PWR, cnt_en=>i_valid);
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8_cx8_kirsch
       port map ( clock=>clk, q(7)=>o_row_EXMPLR616(7), q(6)=>
      o_row_EXMPLR616(6), q(5)=>o_row_EXMPLR616(5), q(4)=>o_row_EXMPLR616(4), 
      q(3)=>o_row_EXMPLR616(3), q(2)=>o_row_EXMPLR616(2), q(1)=>
      o_row_EXMPLR616(1), q(0)=>o_row_EXMPLR616(0), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,9), data(6)=>DANGLING(0,10), data(5)=>
      DANGLING(0,11), data(4)=>DANGLING(0,12), data(3)=>DANGLING(0,13), 
      data(2)=>DANGLING(0,14), data(1)=>DANGLING(0,15), data(0)=>
      DANGLING(0,16), aset=>GND, sclear=>reset, updn=>PWR, cnt_en=>
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
   r7_19n0r1_13 <= NOT rtlcn5533 ;
   DFFRSE (v(6),GND,reset,PWR,clk,v(7)) ;
   DFFRSE (v(5),GND,reset,PWR,clk,v(6)) ;
   DFFRSE (v(4),GND,reset,PWR,clk,v(5)) ;
   DFFRSE (v(3),GND,reset,PWR,clk,v(4)) ;
   DFFRSE (v(2),GND,reset,PWR,clk,v(3)) ;
   DFFRSE (v(1),GND,reset,PWR,clk,v(2)) ;
   DFFRSE (rtlc9n63,GND,reset,PWR,clk,v(1)) ;
   DFFRSE (PWR,GND,reset,rtlcn16,clk,o_mode_EXMPLR615(1)) ;
   DFFRSE (rtlcn194,reset,GND,rtlcn16,clk,o_mode_EXMPLR615(0)) ;
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
   DFFRSE (wr_en(1),GND,reset,rtlc12n284,clk,wr_en(2)) ;
   DFFRSE (wr_en(0),GND,reset,rtlc12n284,clk,wr_en(1)) ;
   DFFRSE (wr_en(2),reset,GND,rtlc12n284,clk,wr_en(0)) ;
   DFFPC (r1_13n1ss1_10,GND,GND,clk,r1_val(7)) ;
   DFFPC (r1_13n1ss1_9,GND,GND,clk,r1_val(6)) ;
   DFFPC (r1_13n1ss1_8,GND,GND,clk,r1_val(5)) ;
   DFFPC (r1_13n1ss1_7,GND,GND,clk,r1_val(4)) ;
   DFFPC (r1_13n1ss1_6,GND,GND,clk,r1_val(3)) ;
   DFFPC (r1_13n1ss1_5,GND,GND,clk,r1_val(2)) ;
   DFFPC (r1_13n1ss1_4,GND,GND,clk,r1_val(1)) ;
   DFFPC (r1_13n1ss1_3,GND,GND,clk,r1_val(0)) ;
   DFFPC (not_rtlc13n39,GND,GND,clk,r1_ty(2)) ;
   DFFPC (not_rtlcn203,GND,GND,clk,r1_ty(0)) ;
   DFFPC (r2_14n0r1(8),GND,GND,clk,r2(8)) ;
   DFFPC (r2_14n0r1(7),GND,GND,clk,r2(7)) ;
   DFFPC (r2_14n0r1(6),GND,GND,clk,r2(6)) ;
   DFFPC (r2_14n0r1(5),GND,GND,clk,r2(5)) ;
   DFFPC (r2_14n0r1(4),GND,GND,clk,r2(4)) ;
   DFFPC (r2_14n0r1(3),GND,GND,clk,r2(3)) ;
   DFFPC (r2_14n0r1(2),GND,GND,clk,r2(2)) ;
   DFFPC (r2_14n0r1(1),GND,GND,clk,r2(1)) ;
   DFFPC (r2_14n0r1(0),GND,GND,clk,r2(0)) ;
   DFFRSE (r3_15n1s1(11),GND,v(1),PWR,clk,r3(11)) ;
   DFFRSE (r3_15n1s1(10),GND,v(1),PWR,clk,r3(10)) ;
   DFFRSE (r3_15n1s1(9),GND,v(1),PWR,clk,r3(9)) ;
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
   DFFRSE (r7_ty(2),GND,not_rtlc20n126,PWR,clk,o_dir(2)) ;
   DFFRSE (r7_ty(1),GND,not_rtlc20n126,PWR,clk,o_dir(1)) ;
   DFFRSE (r7_ty(0),GND,not_rtlc20n126,PWR,clk,o_dir(0)) ;
   DFFPC (rtlc20n126,GND,GND,clk,o_edge) ;
   DFFPC (v(7),GND,GND,clk,o_valid) ;
   DFFRSE (not_rtlcn25,GND,i_valid,PWR,clk,r1_ty(1)) ;
   rtlc4_P8_SS0_n28 <= rtlc4_44_and_48_nx0 AND v(2) ;
   rtlc4_44_and_48_nx0 <= not_i_valid AND not_v_1 ;
   rtlc4_P9_SS0_n31 <= rtlc4_44_and_48_nx0 AND not_v_2 ;
   rtlc_422_and_71_nx0 <= i_valid AND not_rtlc12n129 ;
   rtlc12n284 <= rtlc_422_and_71_nx0 AND rtlc12n164 ;
   NOT_r6_0 <= NOT r6(0) ;
   r7_sub13_19i1 : sub_12u_12u_12u_0 port map ( cin=>NOT_r6_0, a(11)=>
      r5_val(9), a(10)=>r5_val(8), a(9)=>r5_val(7), a(8)=>r5_val(6), a(7)=>
      r5_val(5), a(6)=>r5_val(4), a(5)=>r5_val(3), a(4)=>r5_val(2), a(3)=>
      r5_val(1), a(2)=>r5_val(0), a(1)=>GND, a(0)=>GND, b(11)=>r6(12), b(10)
      =>r6(11), b(9)=>r6(10), b(8)=>r6(9), b(7)=>r6(8), b(6)=>r6(7), b(5)=>
      r6(6), b(4)=>r6(5), b(3)=>r6(4), b(2)=>r6(3), b(1)=>r6(2), b(0)=>r6(1), 
      d(11)=>r7_19n0r1_12, d(10)=>r7_19n0r1_11, d(9)=>r7_19n0r1_10, d(8)=>
      r7_19n0r1_9, d(7)=>r7_19n0r1_8, d(6)=>r7_19n0r1_7, d(5)=>
      DANGLING(0,17), d(4)=>DANGLING(0,18), d(3)=>DANGLING(0,19), d(2)=>
      DANGLING(0,20), d(1)=>DANGLING(0,21), d(0)=>DANGLING(0,22), cout=>
      rtlcn5533);
   modgen_or_0 : or_7u_7u port map ( a(6)=>o_row_EXMPLR616(2), a(5)=>
      o_row_EXMPLR616(3), a(4)=>o_row_EXMPLR616(4), a(3)=>o_row_EXMPLR616(5), 
      a(2)=>o_row_EXMPLR616(6), a(1)=>o_row_EXMPLR616(7), a(0)=>
      o_row_EXMPLR616(1), d=>rtlcn18);
   modgen_or_1 : or_7u_7u port map ( a(6)=>o_col_EXMPLR617(2), a(5)=>
      o_col_EXMPLR617(3), a(4)=>o_col_EXMPLR617(4), a(3)=>o_col_EXMPLR617(5), 
      a(2)=>o_col_EXMPLR617(6), a(1)=>o_col_EXMPLR617(7), a(0)=>
      o_col_EXMPLR617(1), d=>rtlcn20);
   modgen_or_2 : or_6u_6u port map ( a(5)=>r7_val_9, a(4)=>r7_val_10, a(3)=>
      r7_val_11, a(2)=>r7_val_12, a(1)=>r7_val_13, a(0)=>rtlc20n123, d=>
      rtlc20n124);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top ;

architecture INTERFACE of 
   counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal nx22, nx24, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   nx22 <= '0' ;
   nx24 <= '1' ;
   DFFPCE (sclear_and_10_dup_146,nx22,nx22,clk_en,clock,nx47) ;
   DFFPCE (sclear_and_9_dup_145,nx22,nx22,clk_en,clock,nx46) ;
   DFFPCE (sclear_and_8_dup_144,nx22,nx22,clk_en,clock,nx45) ;
   DFFPCE (sclear_and_7_dup_143,nx22,nx22,clk_en,clock,nx44) ;
   DFFPCE (sclear_and_6_dup_142,nx22,nx22,clk_en,clock,nx43) ;
   DFFPCE (sclear_and_5_dup_141,nx22,nx22,clk_en,clock,nx42) ;
   DFFPCE (sclear_and_4_dup_140,nx22,nx22,clk_en,clock,nx41) ;
   DFFPCE (sclear_and_3_dup_139,nx22,nx22,clk_en,clock,nx40) ;
   DFFPCE (sclear_and_2_dup_138,nx22,nx22,clk_en,clock,nx39) ;
   DFFPCE (sclear_and_1_dup_137,nx22,nx22,clk_en,clock,nx38) ;
   DFFPCE (sclear_and_0_dup_136,nx22,nx22,clk_en,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>nx24, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_11_cx9_dual_seg7 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_11_cx9_dual_seg7 ;

architecture INTERFACE of counter_up_sclear_clock_0_11_cx9_dual_seg7 is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,GND,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,GND,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,GND,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,GND,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,GND,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,GND,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,GND,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,GND,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,GND,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,GND,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,GND,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity dual_seg7_notri is 
   port (
      p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
      p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
      p_clk : IN std_logic ;
      p_i_chars : IN std_logic_vector (13 DOWNTO 0) ;
      p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
      p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
      p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
      p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
      p_reset : IN std_logic ;
      p_o_en : OUT std_logic_vector (1 DOWNTO 0)) ;
end dual_seg7_notri ;

architecture main of dual_seg7_notri is 
   component counter_up_sclear_clock_0_11_cx9_dual_seg7
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
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
   signal muxed_char: std_logic_vector (6 DOWNTO 6) ;
   
   signal muxed_char_5, muxed_char_4, muxed_char_3, muxed_char_2, 
      muxed_char_1, muxed_char_0, muxed_char_7, 
      o_char_rtlc6_o_char_1_TE_rtlcGen0, o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      o_char_rtlc6_o_char_6_TE_rtlcGen4, prev_reset, rtlc4n29, 
      not_prev_reset, load_reg, prev_char0_en: std_logic ;
   
   signal o_en: std_logic_vector (1 DOWNTO 0) ;
   
   signal GND, PWR: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   p_o_en(0) <= o_en(0) ;
   p_o_en(1) <= o_en(1) ;
   PWR <= '1' ;
   GND <= '0' ;
   o_en(0) <= NOT o_en(1) ;
   load_reg <= o_en(0) XOR prev_char0_en ;
   rtlc4n29 <= p_reset AND not_prev_reset ;
   not_prev_reset <= NOT prev_reset ;
   p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 <= NOT 
   o_char_rtlc6_o_char_6_TE_rtlcGen4 ;
   p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 <= NOT 
   o_char_rtlc6_o_char_5_TE_rtlcGen2 ;
   p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 <= NOT 
   o_char_rtlc6_o_char_1_TE_rtlcGen0 ;
   muxed_char_7 <= p_i_pts(1) when o_en(1) = '1' else p_i_pts(0) ;
   muxed_char_0 <= p_i_chars(1) when o_en(1) = '1' else p_i_chars(0) ;
   muxed_char_1 <= p_i_chars(3) when o_en(1) = '1' else p_i_chars(2) ;
   muxed_char_2 <= p_i_chars(5) when o_en(1) = '1' else p_i_chars(4) ;
   muxed_char_3 <= p_i_chars(7) when o_en(1) = '1' else p_i_chars(6) ;
   muxed_char_4 <= p_i_chars(9) when o_en(1) = '1' else p_i_chars(8) ;
   muxed_char_5 <= p_i_chars(11) when o_en(1) = '1' else p_i_chars(10) ;
   muxed_char(6) <= p_i_chars(13) when o_en(1) = '1' else p_i_chars(12) ;
   modgen_counter_count : counter_up_sclear_clock_0_11_cx9_dual_seg7
       port map ( clock=>p_clk, q(10)=>o_en(1), q(9)=>DANGLING(0,0), q(8)=>
      DANGLING(0,1), q(7)=>DANGLING(0,2), q(6)=>DANGLING(0,3), q(5)=>
      DANGLING(0,4), q(4)=>DANGLING(0,5), q(3)=>DANGLING(0,6), q(2)=>
      DANGLING(0,7), q(1)=>DANGLING(0,8), q(0)=>DANGLING(0,9), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(10)=>DANGLING(0,10), data(9)=>
      DANGLING(0,11), data(8)=>DANGLING(0,12), data(7)=>DANGLING(0,13), 
      data(6)=>DANGLING(0,14), data(5)=>DANGLING(0,15), data(4)=>
      DANGLING(0,16), data(3)=>DANGLING(0,17), data(2)=>DANGLING(0,18), 
      data(1)=>DANGLING(0,19), data(0)=>DANGLING(0,20), aset=>GND, sclear=>
      rtlc4n29, updn=>PWR, cnt_en=>PWR);
   DFFPC (p_reset,GND,GND,p_clk,prev_reset) ;
   DFFPC (o_en(0),GND,GND,p_clk,prev_char0_en) ;
   DFFPCE (muxed_char_7,GND,GND,load_reg,p_clk,p_o_char_2(6)) ;
   DFFPCE (muxed_char_4,GND,GND,load_reg,p_clk,p_o_char_1(4)) ;
   DFFPCE (muxed_char_3,GND,GND,load_reg,p_clk,p_o_char_1(3)) ;
   DFFPCE (muxed_char_2,GND,GND,load_reg,p_clk,p_o_char_1(2)) ;
   DFFPCE (muxed_char_0,GND,GND,load_reg,p_clk,p_o_char_2(7)) ;
   DFFPCE (muxed_char(6),GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_6_TE_rtlcGen4) ;
   DFFPCE (muxed_char_5,GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_5_TE_rtlcGen2) ;
   DFFPCE (muxed_char_1,GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_1_TE_rtlcGen0) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity num_seg7_notri is 
   port (
      p_o_en : OUT std_logic_vector (1 DOWNTO 0) ;
      p_reset : IN std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
      p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
      p_clk : IN std_logic ;
      p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
      p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
      p_i_num : IN std_logic_vector (7 DOWNTO 0)) ;
end num_seg7_notri ;

architecture main of num_seg7_notri is 
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component dual_seg7_notri
      port (
         p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
         p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
         p_clk : IN std_logic ;
         p_i_chars : IN std_logic_vector (13 DOWNTO 0) ;
         p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
         p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
         p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
         p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
         p_reset : IN std_logic ;
         p_o_en : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   signal rtlcP3: std_logic_vector (13 DOWNTO 0) ;
   
   signal rtlcs1, not_rtlcn77, rtlcn77, not_rtlcs1, not_rtlcn61, not_rtlcn64, 
      not_rtlcn58, rtlcn64, rtlcn61, not_i_num_4, rtlcn58, not_i_num_5, 
      rtlcs0, not_rtlcn20, rtlcn20, not_rtlcs0, not_rtlcn4, not_rtlcn7, 
      not_rtlcn1, GND, rtlcn7, rtlcn4, not_i_num_0, rtlcn1, not_i_num_1, PWR
   : std_logic ;

begin
   PWR <= '1' ;
   not_i_num_1 <= NOT p_i_num(1) ;
   rtlcn1 <= not_i_num_1 AND p_i_num(0) ;
   not_i_num_0 <= NOT p_i_num(0) ;
   rtlcn4 <= not_i_num_1 AND not_i_num_0 ;
   rtlcn7 <= p_i_num(1) AND p_i_num(0) ;
   GND <= '0' ;
   rtlcP3_muxBus1_0 : mux_4u_4u port map ( a(3)=>not_rtlcn1, a(2)=>
      not_rtlcn7, a(1)=>not_rtlcn4, a(0)=>not_rtlcn1, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(3), b(0)=>p_i_num(2), d=>rtlcP3(0));
   rtlcP3_muxBus1_1 : mux_4u_4u port map ( a(3)=>rtlcn1, a(2)=>not_rtlcn7, 
      a(1)=>not_rtlcs0, a(0)=>PWR, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(1));
   rtlcn20 <= p_i_num(1) AND not_i_num_0 ;
   rtlcP3_muxBus1_2 : mux_4u_4u port map ( a(3)=>rtlcn1, a(2)=>PWR, a(1)=>
      PWR, a(0)=>not_rtlcn20, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), b(0)=>
      p_i_num(2), d=>rtlcP3(2));
   rtlcP3_muxBus1_3 : mux_4u_4u port map ( a(3)=>not_rtlcn7, a(2)=>
      not_rtlcn20, a(1)=>rtlcs0, a(0)=>not_rtlcn1, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(3), b(0)=>p_i_num(2), d=>rtlcP3(3));
   rtlcP3_muxBus1_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_rtlcn1, a(1)
      =>rtlcn20, a(0)=>not_i_num_0, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(4));
   rtlcP3_muxBus1_5 : mux_4u_4u port map ( a(3)=>not_rtlcn1, a(2)=>PWR, a(1)
      =>not_rtlcn7, a(0)=>rtlcn4, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(5));
   rtlcP3_muxBus1_6 : mux_4u_4u port map ( a(3)=>not_rtlcn4, a(2)=>PWR, a(1)
      =>not_rtlcn7, a(0)=>p_i_num(1), b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(6));
   not_i_num_5 <= NOT p_i_num(5) ;
   rtlcn58 <= not_i_num_5 AND p_i_num(4) ;
   not_i_num_4 <= NOT p_i_num(4) ;
   rtlcn61 <= not_i_num_5 AND not_i_num_4 ;
   rtlcn64 <= p_i_num(5) AND p_i_num(4) ;
   rtlcP3_muxBus1_7 : mux_4u_4u port map ( a(3)=>not_rtlcn58, a(2)=>
      not_rtlcn64, a(1)=>not_rtlcn61, a(0)=>not_rtlcn58, b(3)=>GND, b(2)=>
      GND, b(1)=>p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(7));
   rtlcP3_muxBus1_8 : mux_4u_4u port map ( a(3)=>rtlcn58, a(2)=>not_rtlcn64, 
      a(1)=>not_rtlcs1, a(0)=>PWR, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(7), 
      b(0)=>p_i_num(6), d=>rtlcP3(8));
   rtlcn77 <= p_i_num(5) AND not_i_num_4 ;
   rtlcP3_muxBus1_9 : mux_4u_4u port map ( a(3)=>rtlcn58, a(2)=>PWR, a(1)=>
      PWR, a(0)=>not_rtlcn77, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(7), b(0)=>
      p_i_num(6), d=>rtlcP3(9));
   rtlcP3_muxBus1_10 : mux_4u_4u port map ( a(3)=>not_rtlcn64, a(2)=>
      not_rtlcn77, a(1)=>rtlcs1, a(0)=>not_rtlcn58, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(10));
   rtlcP3_muxBus1_11 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_rtlcn58, 
      a(1)=>rtlcn77, a(0)=>not_i_num_4, b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(11));
   rtlcP3_muxBus1_12 : mux_4u_4u port map ( a(3)=>not_rtlcn58, a(2)=>PWR, 
      a(1)=>not_rtlcn64, a(0)=>rtlcn61, b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(12));
   rtlcP3_muxBus1_13 : mux_4u_4u port map ( a(3)=>not_rtlcn61, a(2)=>PWR, 
      a(1)=>not_rtlcn64, a(0)=>p_i_num(5), b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(13));
   not_rtlcn1 <= NOT rtlcn1 ;
   not_rtlcn7 <= NOT rtlcn7 ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_rtlcn20 <= NOT rtlcn20 ;
   not_rtlcn58 <= NOT rtlcn58 ;
   not_rtlcn64 <= NOT rtlcn64 ;
   not_rtlcn61 <= NOT rtlcn61 ;
   not_rtlcs1 <= NOT rtlcs1 ;
   not_rtlcn77 <= NOT rtlcn77 ;
   rtlcs0 <= p_i_num(1) XOR p_i_num(0) ;
   rtlcs1 <= p_i_num(5) XOR p_i_num(4) ;
   u_dual_seg7 : dual_seg7_notri port map ( p_o_char_2(7)=>p_o_char_2(6), 
      p_o_char_2(6)=>p_o_char_2(7), p_o_char_1(4)=>p_o_char_1(4), 
      p_o_char_1(3)=>p_o_char_1(3), p_o_char_1(2)=>p_o_char_1(2), p_clk=>
      p_clk, p_i_chars(13)=>rtlcP3(13), p_i_chars(12)=>rtlcP3(6), 
      p_i_chars(11)=>rtlcP3(12), p_i_chars(10)=>rtlcP3(5), p_i_chars(9)=>
      rtlcP3(11), p_i_chars(8)=>rtlcP3(4), p_i_chars(7)=>rtlcP3(10), 
      p_i_chars(6)=>rtlcP3(3), p_i_chars(5)=>rtlcP3(9), p_i_chars(4)=>
      rtlcP3(2), p_i_chars(3)=>rtlcP3(8), p_i_chars(2)=>rtlcP3(1), 
      p_i_chars(1)=>rtlcP3(7), p_i_chars(0)=>rtlcP3(0), p_i_pts(1)=>
      p_i_pts(1), p_i_pts(0)=>p_i_pts(0), 
      p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, p_reset=>p_reset, 
      p_o_en(1)=>p_o_en(1), p_o_en(0)=>p_o_en(0));
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch_top_gate is 
   port (
      reset_n : IN std_logic ;
      clk : IN std_logic ;
      uart_rx : IN std_logic ;
      uart_tx : OUT std_logic ;
      sw : IN std_logic_vector (7 DOWNTO 0) ;
      pb : IN std_logic_vector (3 DOWNTO 0) ;
      seg7_en : OUT std_logic_vector (1 DOWNTO 0) ;
      seg7_data : OUT std_logic_vector (7 DOWNTO 0) ;
      led : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch_top_gate ;

architecture main of kirsch_top_gate is 
   component syn_fifo_8_8
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         data_in : IN std_logic_vector (7 DOWNTO 0) ;
         rd_en : IN std_logic ;
         wr_en : IN std_logic ;
         data_out : OUT std_logic_vector (7 DOWNTO 0) ;
         empty : OUT std_logic ;
         full : OUT std_logic) ;
   end component ;
   component uart
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
   end component ;
   component kirsch
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
   end component ;
   component and_11u_11u
      port (
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   component counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component num_seg7_notri
      port (
         p_o_en : OUT std_logic_vector (1 DOWNTO 0) ;
         p_reset : IN std_logic ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic
          ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic
          ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic
          ;
         p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
         p_clk : IN std_logic ;
         p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
         p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
         p_i_num : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   for write_fifo : syn_fifo_8_8 use entity work.syn_fifo_8_8(main_unfold_1
   );
   for read_fifo : syn_fifo_8_8 use entity work.syn_fifo_8_8(
   main_unfold_1927_0);
   signal k_i_valid: std_logic ;
   
   signal k_i_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal k_o_valid, k_o_data_7, k_o_data_6, GND, k_o_data_3, k_o_data_2, 
      k_o_data_1, k_o_data_0, tx_valid, tx_busy_delayed, tx_busy, rx_valid: 
   std_logic ;
   
   signal seg7_num: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_pts: std_logic_vector (1 DOWNTO 0) ;
   
   signal uart_reset: std_logic ;
   
   signal reset_count: std_logic_vector (10 DOWNTO 0) ;
   
   signal uart_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal k_i_valid_delayed, wb_empty, rb_empty, rb_i_valid: std_logic ;
   
   signal rb_i_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_o_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_rd_en, rb_rd_en_delayed, rb_rd_en_true, wait_for_tx_valid, 
      wait_for_tx_valid_delayed, PWR, rtlcP2, not_rb_i_valid, 
      rb_rd_en_true_0n0s2, not_wait_for_tx_valid_delayed, rtlc5n32, 
      not_rb_rd_en, rtlc10n59, rtlcn2, rtlcn3, rtlcn4, rtlcn5, not_rtlcn4, 
      rtlcn204, u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   write_fifo : syn_fifo_8_8 port map ( clk=>clk, rst=>k_o_data_7, 
      data_in(7)=>uart_pixel(7), data_in(6)=>uart_pixel(6), data_in(5)=>
      uart_pixel(5), data_in(4)=>uart_pixel(4), data_in(3)=>uart_pixel(3), 
      data_in(2)=>uart_pixel(2), data_in(1)=>uart_pixel(1), data_in(0)=>
      uart_pixel(0), rd_en=>k_i_valid, wr_en=>rx_valid, data_out(7)=>
      k_i_pixel(7), data_out(6)=>k_i_pixel(6), data_out(5)=>k_i_pixel(5), 
      data_out(4)=>k_i_pixel(4), data_out(3)=>k_i_pixel(3), data_out(2)=>
      k_i_pixel(2), data_out(1)=>k_i_pixel(1), data_out(0)=>k_i_pixel(0), 
      empty=>wb_empty, full=>DANGLING(0,0));
   read_fifo : syn_fifo_8_8 port map ( clk=>clk, rst=>k_o_data_7, data_in(7)
      =>rb_i_data(7), data_in(6)=>rb_i_data(6), data_in(5)=>rb_i_data(5), 
      data_in(4)=>rb_i_data(4), data_in(3)=>rb_i_data(3), data_in(2)=>
      rb_i_data(2), data_in(1)=>rb_i_data(1), data_in(0)=>rb_i_data(0), 
      rd_en=>rb_rd_en_true, wr_en=>rb_i_valid, data_out(7)=>rb_o_data(7), 
      data_out(6)=>rb_o_data(6), data_out(5)=>rb_o_data(5), data_out(4)=>
      rb_o_data(4), data_out(3)=>rb_o_data(3), data_out(2)=>rb_o_data(2), 
      data_out(1)=>rb_o_data(1), data_out(0)=>rb_o_data(0), empty=>rb_empty, 
      full=>DANGLING(0,1));
   u_uart : uart port map ( CLK=>clk, RST=>uart_reset, Din(7)=>rb_o_data(7), 
      Din(6)=>rb_o_data(6), Din(5)=>rb_o_data(5), Din(4)=>rb_o_data(4), 
      Din(3)=>rb_o_data(3), Din(2)=>rb_o_data(2), Din(1)=>rb_o_data(1), 
      Din(0)=>rb_o_data(0), LD=>tx_valid, Rx=>uart_rx, Baud=>PWR, Dout(7)=>
      uart_pixel(7), Dout(6)=>uart_pixel(6), Dout(5)=>uart_pixel(5), Dout(4)
      =>uart_pixel(4), Dout(3)=>uart_pixel(3), Dout(2)=>uart_pixel(2), 
      Dout(1)=>uart_pixel(1), Dout(0)=>uart_pixel(0), Tx=>uart_tx, TxBusy=>
      tx_busy, RxErr=>k_o_data_6, RxRDY=>rx_valid);
   u_kirsch : kirsch port map ( clk=>clk, reset=>k_o_data_7, i_valid=>rtlcP2, 
      i_pixel(7)=>k_i_pixel(7), i_pixel(6)=>k_i_pixel(6), i_pixel(5)=>
      k_i_pixel(5), i_pixel(4)=>k_i_pixel(4), i_pixel(3)=>k_i_pixel(3), 
      i_pixel(2)=>k_i_pixel(2), i_pixel(1)=>k_i_pixel(1), i_pixel(0)=>
      k_i_pixel(0), o_valid=>k_o_valid, o_edge=>k_o_data_3, o_dir(2)=>
      k_o_data_2, o_dir(1)=>k_o_data_1, o_dir(0)=>k_o_data_0, o_mode(1)=>
      seg7_pts(1), o_mode(0)=>seg7_pts(0), o_row(7)=>seg7_num(7), o_row(6)=>
      seg7_num(6), o_row(5)=>seg7_num(5), o_row(4)=>seg7_num(4), o_row(3)=>
      seg7_num(3), o_row(2)=>seg7_num(2), o_row(1)=>seg7_num(1), o_row(0)=>
      seg7_num(0), o_col(7)=>DANGLING(0,2), o_col(6)=>DANGLING(0,3), 
      o_col(5)=>DANGLING(0,4), o_col(4)=>DANGLING(0,5), o_col(3)=>
      DANGLING(0,6), o_col(2)=>DANGLING(0,7), o_col(1)=>DANGLING(0,8), 
      o_col(0)=>DANGLING(0,9));
   rtlcP2 <= k_i_valid_delayed AND pb(0) ;
   k_o_data_7 <= NOT reset_n ;
   rb_rd_en_true <= rb_rd_en_true_0n0s2 AND not_wait_for_tx_valid_delayed ;
   rb_rd_en_true_0n0s2 <= rb_rd_en AND not_rb_i_valid ;
   not_rb_i_valid <= NOT rb_i_valid ;
   not_wait_for_tx_valid_delayed <= NOT wait_for_tx_valid_delayed ;
   k_i_valid <= NOT rtlcn2 ;
   rtlcn2 <= wb_empty OR rx_valid ;
   rtlcn3 <= tx_busy OR tx_busy_delayed ;
   rtlcn4 <= rtlcn3 OR rb_empty ;
   rb_i_valid <= k_o_valid when pb(0) = '1' else k_i_valid_delayed ;
   rb_i_data(0) <= k_o_data_0 when pb(0) = '1' else k_i_pixel(0) ;
   rb_i_data(1) <= k_o_data_1 when pb(0) = '1' else k_i_pixel(1) ;
   rb_i_data(2) <= k_o_data_2 when pb(0) = '1' else k_i_pixel(2) ;
   rb_i_data(3) <= k_o_data_3 when pb(0) = '1' else k_i_pixel(3) ;
   rb_i_data(4) <= seg7_pts(0) when pb(0) = '1' else k_i_pixel(4) ;
   rb_i_data(5) <= seg7_pts(1) when pb(0) = '1' else k_i_pixel(5) ;
   rb_i_data(6) <= k_o_data_6 when pb(0) = '1' else k_i_pixel(6) ;
   rb_i_data(7) <= k_o_data_7 when pb(0) = '1' else k_i_pixel(7) ;
   rtlcn5 <= tx_valid OR rb_rd_en_true ;
   not_rtlcn4 <= NOT rtlcn4 ;
   rtlc10n59 <= not_rtlcn4 OR rb_rd_en ;
   not_rb_rd_en <= NOT rb_rd_en ;
   rtlc_60_and_94 : and_11u_11u port map ( a(10)=>reset_count(10), a(9)=>
      reset_count(9), a(8)=>reset_count(8), a(7)=>reset_count(7), a(6)=>
      reset_count(6), a(5)=>reset_count(5), a(4)=>reset_count(4), a(3)=>
      reset_count(3), a(2)=>reset_count(2), a(1)=>reset_count(1), a(0)=>
      reset_count(0), d=>rtlc5n32);
   rtlcn204 <= not_rb_rd_en AND rtlc10n59 ;
   led(0) <= GND when GND = '1' else 'Z' ;
   led(1) <= GND when GND = '1' else 'Z' ;
   led(2) <= GND when GND = '1' else 'Z' ;
   led(3) <= GND when GND = '1' else 'Z' ;
   led(4) <= GND when GND = '1' else 'Z' ;
   led(5) <= GND when GND = '1' else 'Z' ;
   led(6) <= GND when GND = '1' else 'Z' ;
   led(7) <= GND when GND = '1' else 'Z' ;
   DFFRSE (PWR,GND,reset_n,rtlc5n32,clk,uart_reset) ;
   DFFPC (k_i_valid,GND,GND,clk,k_i_valid_delayed) ;
   DFFPC (tx_busy,GND,GND,clk,tx_busy_delayed) ;
   DFFRSE (rb_rd_en_true,GND,k_o_data_7,rtlcn5,clk,wait_for_tx_valid) ;
   DFFRSE (wait_for_tx_valid,GND,k_o_data_7,PWR,clk,
   wait_for_tx_valid_delayed) ;
   DFFPC (rb_rd_en_true,GND,GND,clk,rb_rd_en_delayed) ;
   DFFRSE (rb_rd_en_delayed,k_o_data_7,GND,PWR,clk,tx_valid) ;
   DFFRSE (rtlcn204,GND,k_o_data_7,PWR,clk,rb_rd_en) ;
   modgen_counter_reset_count : 
      counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top port map ( clock=>
      clk, q(10)=>reset_count(10), q(9)=>reset_count(9), q(8)=>
      reset_count(8), q(7)=>reset_count(7), q(6)=>reset_count(6), q(5)=>
      reset_count(5), q(4)=>reset_count(4), q(3)=>reset_count(3), q(2)=>
      reset_count(2), q(1)=>reset_count(1), q(0)=>reset_count(0), clk_en=>
      PWR, aclear=>GND, sload=>GND, data(10)=>DANGLING(0,10), data(9)=>
      DANGLING(0,11), data(8)=>DANGLING(0,12), data(7)=>DANGLING(0,13), 
      data(6)=>DANGLING(0,14), data(5)=>DANGLING(0,15), data(4)=>
      DANGLING(0,16), data(3)=>DANGLING(0,17), data(2)=>DANGLING(0,18), 
      data(1)=>DANGLING(0,19), data(0)=>DANGLING(0,20), aset=>GND, sclear=>
      reset_n, updn=>PWR, cnt_en=>PWR);
   seg7_data(6) <= GND when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 = '1' else 'Z' ;
   seg7_data(5) <= GND when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 = '1' else 'Z' ;
   seg7_data(1) <= GND when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 = '1' else 'Z' ;
   u_seg7 : num_seg7_notri port map ( p_o_en(1)=>seg7_en(1), p_o_en(0)=>
      seg7_en(0), p_reset=>k_o_data_7, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, p_i_pts(1)=>
      seg7_pts(1), p_i_pts(0)=>seg7_pts(0), p_clk=>clk, p_o_char_2(7)=>
      seg7_data(7), p_o_char_2(6)=>seg7_data(0), p_o_char_1(4)=>seg7_data(4), 
      p_o_char_1(3)=>seg7_data(3), p_o_char_1(2)=>seg7_data(2), p_i_num(7)=>
      seg7_num(7), p_i_num(6)=>seg7_num(6), p_i_num(5)=>seg7_num(5), 
      p_i_num(4)=>seg7_num(4), p_i_num(3)=>seg7_num(3), p_i_num(2)=>
      seg7_num(2), p_i_num(1)=>seg7_num(1), p_i_num(0)=>seg7_num(0));
end main ;

