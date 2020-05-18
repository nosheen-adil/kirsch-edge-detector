
-- 
-- Definition of  kirsch
-- 
--      Sat Mar 30 21:17:30 2019
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixiv ;
use stratixiv.stratixiv_components.all;

entity ram_dq_8_0 is 
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
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal rd_ena1_EXMPLR26: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix IV",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR26, clock0=>wr_clk1, clocken0=>rd_ena1_EXMPLR26, 
      q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)
      =>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>
      rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR26 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixiv ;
use stratixiv.stratixiv_components.all;

entity ram_dq_8_1 is 
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
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal rd_ena1_EXMPLR56: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix IV",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR56, clock0=>wr_clk1, clocken0=>rd_ena1_EXMPLR56, 
      q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)
      =>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>
      rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR56 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixiv ;
use stratixiv.stratixiv_components.all;

entity ram_dq_8_2 is 
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
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal rd_ena1_EXMPLR86: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix IV",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR86, clock0=>wr_clk1, clocken0=>rd_ena1_EXMPLR86, 
      q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)
      =>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>
      rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR86 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixiv ;
use stratixiv.stratixiv_components.all;

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
   component ram_dq_8_0
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
   component ram_dq_8_1
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
   component ram_dq_8_2
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
   signal o_mode_1_EXMPLR116: std_logic ;
   
   signal o_row_EXMPLR138: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_col_EXMPLR139: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_a: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_b: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_c: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_d: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_e: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_f: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_g: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_h: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_i: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3: std_logic_vector (11 DOWNTO 0) ;
   
   signal r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal wr_en: std_logic_vector (0 TO 2) ;
   
   signal v: std_logic_vector (1 TO 7) ;
   
   signal r2_14n0r1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3_15n1ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r4_16n0r1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r6_18n0r1: std_logic_vector (12 DOWNTO 1) ;
   
   signal r7_19n0r1_12, r7_19n0r1_11, r7_19n0r1_10, r7_19n0r1_9, r7_19n0r1_8, 
      r7_19n0r1_7, nx20795z1: std_logic ;
   
   signal M_out_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal M_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal M_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal r1_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal r4_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r4_val: std_logic_vector (9 DOWNTO 0) ;
   
   signal r5_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r5_val: std_logic_vector (9 DOWNTO 0) ;
   
   signal r7_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal r7_val_13, r7_val_12, r7_val_11, r7_val_10, r7_val_9, r7_val_8, 
      r7_val_7, nx29699z1, nx30696z1, nx39324z1, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, nx52268z1, nx54262z2, 
      nx54262z1, nx56256z2, nx56256z1, nx58250z2, nx58250z1, 
      inc_d_0_dup_1994, inc_d_1_dup_1995, inc_d_2_dup_1996, inc_d_3_dup_1997, 
      inc_d_4_dup_1998, inc_d_5_dup_1999, inc_d_6_dup_2000, inc_d_7_dup_2001, 
      nx12707z1, nx8437z3, nx8437z2, nx35955z2, nx35955z1, nx50725z2, 
      nx50725z1, nx7245z8, nx7245z7, nx7245z6, nx7245z5, nx7245z4, nx7245z3, 
      nx7245z2, nx40514z8, nx40514z7, nx40514z6, nx40514z5, nx40514z4, 
      nx40514z3, nx40514z2, nx40514z1, nx20432z10, nx20432z9, nx20432z8, 
      nx20432z7, nx20432z6, nx20432z5, nx20432z4, nx20432z3, nx20432z2, 
      nx20432z1, nx22789z21, nx22789z20, nx22789z19, nx22789z18, nx22789z17, 
      nx22789z16, nx22789z15, nx22789z14, nx22789z13, nx22789z12, nx22789z11, 
      nx22789z10, nx22789z9, nx22789z8, nx22789z7, nx22789z6, nx22789z5, 
      nx22789z4, nx22789z3, nx22789z2, nx22789z1, nx21792z2, nx21792z1, 
      nx30696z11, nx30696z10, nx30696z9, nx30696z8, nx30696z7, nx30696z6, 
      nx30696z5, nx30696z4, nx30696z3, nx30696z2, nx29699z2: std_logic ;
   
   signal M_b: std_logic_vector (7 DOWNTO 0) ;
   
   signal i3: std_logic_vector (7 DOWNTO 0) ;
   
   signal i4: std_logic_vector (7 DOWNTO 0) ;
   
   signal GND_EXMPLR134, PWR, nx10173z2, nx23707z2, nx47148z2, nx62709z1, 
      r7_19n0r1_13, nx1448z1, nx41057z1, nx10173z4, nx43221z2, nx34903z2: 
   std_logic ;
   
   signal i1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal i2_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx26839z1, nx25842z1, nx24845z1, nx41459z2, NOT_r6_0, nx8309z2, 
      nx9306z2, nx10303z2, nx11300z2, nx12297z2, nx13294z2, nx14291z2, 
      nx15288z2, nx8529z1, nx7532z1, nx6535z1, nx5538z1, nx4541z1, nx3544z1, 
      nx2547z1, nx1550z1, nx47148z1, nx21891z1, nx46151z1, nx20894z1, 
      nx45154z1, nx19897z1, nx44157z1, nx18900z1, nx43160z1, nx17903z1, 
      nx42163z1, nx16906z1, nx41166z1, nx15909z1, nx40169z1, nx14912z1, 
      nx15288z1, nx14291z1, nx13294z1, nx12297z1, nx11300z1, nx10303z1, 
      nx9306z1, nx8309z1, nx26807z1, nx23707z1, nx27804z1, nx22710z1, 
      nx28801z1, nx21713z1, nx29798z1, nx20716z1, nx30795z1, nx19719z1, 
      nx31792z1, nx18722z1, nx32789z1, nx17725z1, nx33786z1, nx16728z1, 
      nx44218z1, nx51271z1, nx34903z1, nx41459z3, nx33317z1, nx32320z1, 
      nx31323z1, nx10173z1, nx42054z1, nx62709z4, nx62709z6, nx62709z8, 
      nx62709z5, nx62709z3, nx40462z1, nx41459z1, nx42456z1, nx43453z1, 
      nx44450z1, nx45447z1, nx46444z1, nx47441z1, nx62709z2, nx62709z7, 
      nx62709z9, nx33317z2, nx1448z2, nx43221z3, nx34903z3, nx10173z5, 
      nx10173z3, nx41459z4, nx41459z5, nx2532_repl, nx35226z1, wr_en_0_repl, 
      nx24573z1, nx25867z1, nx39033z1, nx7245z1, nx34903z4, nx43221z1, 
      NOT_GND: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_mode(1) <= o_mode_1_EXMPLR116 ;
   o_row(7) <= o_row_EXMPLR138(7) ;
   o_row(6) <= o_row_EXMPLR138(6) ;
   o_row(5) <= o_row_EXMPLR138(5) ;
   o_row(4) <= o_row_EXMPLR138(4) ;
   o_row(3) <= o_row_EXMPLR138(3) ;
   o_row(2) <= o_row_EXMPLR138(2) ;
   o_row(1) <= o_row_EXMPLR138(1) ;
   o_row(0) <= o_row_EXMPLR138(0) ;
   o_col(7) <= o_col_EXMPLR139(7) ;
   o_col(6) <= o_col_EXMPLR139(6) ;
   o_col(5) <= o_col_EXMPLR139(5) ;
   o_col(4) <= o_col_EXMPLR139(4) ;
   o_col(3) <= o_col_EXMPLR139(3) ;
   o_col(2) <= o_col_EXMPLR139(2) ;
   o_col(1) <= o_col_EXMPLR139(1) ;
   o_col(0) <= o_col_EXMPLR139(0) ;
   mem : ram_dq_8_0 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>M_out_0(7), 
      rd_data1(6)=>M_out_0(6), rd_data1(5)=>M_out_0(5), rd_data1(4)=>
      M_out_0(4), rd_data1(3)=>M_out_0(3), rd_data1(2)=>M_out_0(2), 
      rd_data1(1)=>M_out_0(1), rd_data1(0)=>M_out_0(0), addr1(7)=>
      o_col_EXMPLR139(7), addr1(6)=>o_col_EXMPLR139(6), addr1(5)=>
      o_col_EXMPLR139(5), addr1(4)=>o_col_EXMPLR139(4), addr1(3)=>
      o_col_EXMPLR139(3), addr1(2)=>o_col_EXMPLR139(2), addr1(1)=>
      o_col_EXMPLR139(1), addr1(0)=>o_col_EXMPLR139(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,0), wr_ena1=>wr_en(0), rd_ena1=>DANGLING(0,1), 
      ena1=>DANGLING(0,2), rst1=>DANGLING(0,3), regce1=>DANGLING(0,4), 
      regrst1=>DANGLING(0,5));
   mem_0 : ram_dq_8_1 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>M_out_1(7), 
      rd_data1(6)=>M_out_1(6), rd_data1(5)=>M_out_1(5), rd_data1(4)=>
      M_out_1(4), rd_data1(3)=>M_out_1(3), rd_data1(2)=>M_out_1(2), 
      rd_data1(1)=>M_out_1(1), rd_data1(0)=>M_out_1(0), addr1(7)=>
      o_col_EXMPLR139(7), addr1(6)=>o_col_EXMPLR139(6), addr1(5)=>
      o_col_EXMPLR139(5), addr1(4)=>o_col_EXMPLR139(4), addr1(3)=>
      o_col_EXMPLR139(3), addr1(2)=>o_col_EXMPLR139(2), addr1(1)=>
      o_col_EXMPLR139(1), addr1(0)=>o_col_EXMPLR139(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,6), wr_ena1=>wr_en(1), rd_ena1=>DANGLING(0,7), 
      ena1=>DANGLING(0,8), rst1=>DANGLING(0,9), regce1=>DANGLING(0,10), 
      regrst1=>DANGLING(0,11));
   mem_1 : ram_dq_8_2 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>M_out_2(7), 
      rd_data1(6)=>M_out_2(6), rd_data1(5)=>M_out_2(5), rd_data1(4)=>
      M_out_2(4), rd_data1(3)=>M_out_2(3), rd_data1(2)=>M_out_2(2), 
      rd_data1(1)=>M_out_2(1), rd_data1(0)=>M_out_2(0), addr1(7)=>
      o_col_EXMPLR139(7), addr1(6)=>o_col_EXMPLR139(6), addr1(5)=>
      o_col_EXMPLR139(5), addr1(4)=>o_col_EXMPLR139(4), addr1(3)=>
      o_col_EXMPLR139(3), addr1(2)=>o_col_EXMPLR139(2), addr1(1)=>
      o_col_EXMPLR139(1), addr1(0)=>o_col_EXMPLR139(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,12), wr_ena1=>wr_en(2), rd_ena1=>DANGLING(0,13), 
      ena1=>DANGLING(0,14), rst1=>DANGLING(0,15), regce1=>DANGLING(0,16), 
      regrst1=>DANGLING(0,17));
   nx22789z21 <= NOT r6(1);
   nx22789z19 <= NOT r6(2);
   nx22789z17 <= NOT r6(3);
   nx22789z15 <= NOT r6(4);
   nx22789z13 <= NOT r6(5);
   nx22789z11 <= NOT r6(6);
   nx22789z9 <= NOT r6(7);
   nx22789z7 <= NOT r6(8);
   nx22789z5 <= NOT r6(9);
   nx22789z3 <= NOT r6(10);
   nx22789z1 <= NOT r6(11);
   nx21792z1 <= NOT r6(12);
   GND_EXMPLR134 <= '0';
   PWR <= '1';
   r7_19n0r1_13 <= NOT nx20795z1;
   NOT_r6_0 <= NOT r6(0);
   o_mode(0) <= NOT nx34903z4;
   NOT_GND <= NOT GND_EXMPLR134;
   ix52268z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_0, cout=>nx52268z1, datad=>
      o_col_EXMPLR139(0), dataf=>GND_EXMPLR134, cin=>PWR);
   ix52268z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_1, cout=>nx54262z2, datad=>
      o_col_EXMPLR139(1), dataf=>GND_EXMPLR134, cin=>nx52268z1);
   ix54262z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_2, cout=>nx54262z1, datad=>
      o_col_EXMPLR139(2), dataf=>GND_EXMPLR134, cin=>nx54262z2);
   ix54262z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_3, cout=>nx56256z2, datad=>
      o_col_EXMPLR139(3), dataf=>GND_EXMPLR134, cin=>nx54262z1);
   ix56256z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_4, cout=>nx56256z1, datad=>
      o_col_EXMPLR139(4), dataf=>GND_EXMPLR134, cin=>nx56256z2);
   ix56256z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_5, cout=>nx58250z2, datad=>
      o_col_EXMPLR139(5), dataf=>GND_EXMPLR134, cin=>nx56256z1);
   ix58250z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_6, cout=>nx58250z1, datad=>
      o_col_EXMPLR139(6), dataf=>GND_EXMPLR134, cin=>nx58250z2);
   ix58250z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_7, datad=>o_col_EXMPLR139(7), dataf=>
      GND_EXMPLR134, cin=>nx58250z1);
   ix12707z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_0_dup_1994, cout=>nx12707z1, datad=>
      o_row_EXMPLR138(0), dataf=>GND_EXMPLR134, cin=>PWR);
   ix12707z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_1_dup_1995, cout=>nx8437z3, datad=>
      o_row_EXMPLR138(1), dataf=>GND_EXMPLR134, cin=>nx12707z1);
   ix8437z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_2_dup_1996, cout=>nx8437z2, datad=>
      o_row_EXMPLR138(2), dataf=>GND_EXMPLR134, cin=>nx8437z3);
   ix8437z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_3_dup_1997, cout=>nx35955z2, datad=>
      o_row_EXMPLR138(3), dataf=>GND_EXMPLR134, cin=>nx8437z2);
   ix35955z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_4_dup_1998, cout=>nx35955z1, datad=>
      o_row_EXMPLR138(4), dataf=>GND_EXMPLR134, cin=>nx35955z2);
   ix35955z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_5_dup_1999, cout=>nx50725z2, datad=>
      o_row_EXMPLR138(5), dataf=>GND_EXMPLR134, cin=>nx35955z1);
   ix50725z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_6_dup_2000, cout=>nx50725z1, datad=>
      o_row_EXMPLR138(6), dataf=>GND_EXMPLR134, cin=>nx50725z2);
   ix50725z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_7_dup_2001, datad=>o_row_EXMPLR138(7), dataf
      =>GND_EXMPLR134, cin=>nx50725z1);
   r2_add8_14i1_ix7245z17695 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(0), cout=>nx7245z8, datad=>i3(0), dataf
      =>i4(0), cin=>GND_EXMPLR134);
   r2_add8_14i1_ix7245z17692 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(1), cout=>nx7245z7, datad=>i3(1), dataf
      =>i4(1), cin=>nx7245z8);
   r2_add8_14i1_ix7245z17689 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(2), cout=>nx7245z6, datad=>i3(2), dataf
      =>i4(2), cin=>nx7245z7);
   r2_add8_14i1_ix7245z17686 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(3), cout=>nx7245z5, datad=>i3(3), dataf
      =>i4(3), cin=>nx7245z6);
   r2_add8_14i1_ix7245z17683 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(4), cout=>nx7245z4, datad=>i3(4), dataf
      =>i4(4), cin=>nx7245z5);
   r2_add8_14i1_ix7245z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(5), cout=>nx7245z3, datad=>i3(5), dataf
      =>i4(5), cin=>nx7245z4);
   r2_add8_14i1_ix7245z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(6), cout=>nx7245z2, datad=>i3(6), dataf
      =>i4(6), cin=>nx7245z3);
   r2_add8_14i1_ix7245z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r2_14n0r1(7), cout=>nx7245z1, datad=>i3(7), dataf
      =>i4(7), cin=>nx7245z2);
   r4_add9_16i1_ix40514z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(0), cout=>nx40514z8, datad=>r1_val(0), 
      dataf=>r2(0), cin=>GND_EXMPLR134);
   r4_add9_16i1_ix40514z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(1), cout=>nx40514z7, datad=>r1_val(1), 
      dataf=>r2(1), cin=>nx40514z8);
   r4_add9_16i1_ix40514z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(2), cout=>nx40514z6, datad=>r1_val(2), 
      dataf=>r2(2), cin=>nx40514z7);
   r4_add9_16i1_ix40514z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(3), cout=>nx40514z5, datad=>r1_val(3), 
      dataf=>r2(3), cin=>nx40514z6);
   r4_add9_16i1_ix40514z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(4), cout=>nx40514z4, datad=>r1_val(4), 
      dataf=>r2(4), cin=>nx40514z5);
   r4_add9_16i1_ix40514z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(5), cout=>nx40514z3, datad=>r1_val(5), 
      dataf=>r2(5), cin=>nx40514z4);
   r4_add9_16i1_ix40514z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(6), cout=>nx40514z2, datad=>r1_val(6), 
      dataf=>r2(6), cin=>nx40514z3);
   r4_add9_16i1_ix40514z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(7), cout=>nx40514z1, datad=>r1_val(7), 
      dataf=>r2(7), cin=>nx40514z2);
   r4_add9_16i1_ix40514z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r4_16n0r1(8), cout=>nx39033z1, datad=>
      GND_EXMPLR134, dataf=>r2(8), cin=>nx40514z1);
   r4_add9_16i1_ix109_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>r4_16n0r1(9), datac=>GND_EXMPLR134, cin=>nx39033z1
   );
   r6_add11_18i1_ix20432z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>r6_18n0r1(1), cout=>nx20432z10, dataa=>r3(1), 
      datad=>r3(0), cin=>GND_EXMPLR134);
   r6_add11_18i1_ix20432z17683 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>r6_18n0r1(2), cout=>nx20432z9, dataa=>r3(1), dataf
      =>r3(2), cin=>nx20432z10);
   r6_add11_18i1_ix20432z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>r6_18n0r1(3), cout=>nx20432z8, dataa=>r3(3), datad
      =>r3(2), cin=>nx20432z9);
   r6_add11_18i1_ix20432z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>r6_18n0r1(4), cout=>nx20432z7, dataa=>r3(3), dataf
      =>r3(4), cin=>nx20432z8);
   r6_add11_18i1_ix20432z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>r6_18n0r1(5), cout=>nx20432z6, dataa=>r3(5), datad
      =>r3(4), cin=>nx20432z7);
   r6_add11_18i1_ix20432z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>r6_18n0r1(6), cout=>nx20432z5, dataa=>r3(5), dataf
      =>r3(6), cin=>nx20432z6);
   r6_add11_18i1_ix20432z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>r6_18n0r1(7), cout=>nx20432z4, dataa=>r3(7), datad
      =>r3(6), cin=>nx20432z5);
   r6_add11_18i1_ix20432z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>r6_18n0r1(8), cout=>nx20432z3, dataa=>r3(7), dataf
      =>r3(8), cin=>nx20432z4);
   r6_add11_18i1_ix20432z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>r6_18n0r1(9), cout=>nx20432z2, dataa=>r3(9), datad
      =>r3(8), cin=>nx20432z3);
   r6_add11_18i1_ix20432z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>r6_18n0r1(10), cout=>nx20432z1, dataa=>r3(9), 
      dataf=>r3(10), cin=>nx20432z2);
   r6_add11_18i1_ix20432z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r6_18n0r1(11), cout=>nx25867z1, datad=>r3(10), 
      dataf=>r3(11), cin=>nx20432z1);
   r6_add11_18i1_ix124_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>r6_18n0r1(12), datac=>GND_EXMPLR134, cin=>
      nx25867z1);
   r7_sub13_19i1_ix22789z17694 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx22789z20, datad=>GND_EXMPLR134, dataf=>nx22789z21, 
      cin=>NOT_r6_0);
   r7_sub13_19i1_ix22789z17692 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx22789z18, datad=>GND_EXMPLR134, dataf=>nx22789z19, 
      cin=>nx22789z20);
   r7_sub13_19i1_ix22789z17690 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx22789z16, datad=>r5_val(0), dataf=>nx22789z17, cin
      =>nx22789z18);
   r7_sub13_19i1_ix22789z17688 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx22789z14, datad=>r5_val(1), dataf=>nx22789z15, cin
      =>nx22789z16);
   r7_sub13_19i1_ix22789z17686 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx22789z12, datad=>r5_val(2), dataf=>nx22789z13, cin
      =>nx22789z14);
   r7_sub13_19i1_ix22789z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx22789z10, datad=>r5_val(3), dataf=>nx22789z11, cin
      =>nx22789z12);
   r7_sub13_19i1_ix22789z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r7_19n0r1_7, cout=>nx22789z8, datad=>r5_val(4), 
      dataf=>nx22789z9, cin=>nx22789z10);
   r7_sub13_19i1_ix22789z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r7_19n0r1_8, cout=>nx22789z6, datad=>r5_val(5), 
      dataf=>nx22789z7, cin=>nx22789z8);
   r7_sub13_19i1_ix22789z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r7_19n0r1_9, cout=>nx22789z4, datad=>r5_val(6), 
      dataf=>nx22789z5, cin=>nx22789z6);
   r7_sub13_19i1_ix22789z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r7_19n0r1_10, cout=>nx22789z2, datad=>r5_val(7), 
      dataf=>nx22789z3, cin=>nx22789z4);
   r7_sub13_19i1_ix22789z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r7_19n0r1_11, cout=>nx21792z2, datad=>r5_val(8), 
      dataf=>nx22789z1, cin=>nx22789z2);
   r7_sub13_19i1_ix21792z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>r7_19n0r1_12, cout=>nx24573z1, datad=>r5_val(9), 
      dataf=>nx21792z1, cin=>nx21792z2);
   r7_sub13_19i1_ix123_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>nx20795z1, datac=>GND_EXMPLR134, cin=>nx24573z1);
   ix1363_modgen_add_3_ix30696z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(0), cout=>nx30696z11, dataa=>v(1), 
      datad=>r2(0), dataf=>r3(0), cin=>GND_EXMPLR134);
   ix1363_modgen_add_3_ix30696z17683 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(1), cout=>nx30696z10, dataa=>v(1), 
      datad=>r2(1), dataf=>r3(1), cin=>nx30696z11);
   ix1363_modgen_add_3_ix30696z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(2), cout=>nx30696z9, dataa=>v(1), datad
      =>r2(2), dataf=>r3(2), cin=>nx30696z10);
   ix1363_modgen_add_3_ix30696z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(3), cout=>nx30696z8, dataa=>v(1), datad
      =>r2(3), dataf=>r3(3), cin=>nx30696z9);
   ix1363_modgen_add_3_ix30696z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(4), cout=>nx30696z7, dataa=>v(1), datad
      =>r2(4), dataf=>r3(4), cin=>nx30696z8);
   ix1363_modgen_add_3_ix30696z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(5), cout=>nx30696z6, dataa=>v(1), datad
      =>r2(5), dataf=>r3(5), cin=>nx30696z7);
   ix1363_modgen_add_3_ix30696z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(6), cout=>nx30696z5, dataa=>v(1), datad
      =>r2(6), dataf=>r3(6), cin=>nx30696z6);
   ix1363_modgen_add_3_ix30696z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(7), cout=>nx30696z4, dataa=>v(1), datad
      =>r2(7), dataf=>r3(7), cin=>nx30696z5);
   ix1363_modgen_add_3_ix30696z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>r3_15n1ss1(8), cout=>nx30696z3, dataa=>v(1), datad
      =>r2(8), dataf=>r3(8), cin=>nx30696z4);
   ix1363_modgen_add_3_ix30696z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>nx39324z1, cout=>nx30696z2, dataa=>v(1), datad=>
      GND_EXMPLR134, dataf=>r3(9), cin=>nx30696z3);
   ix1363_modgen_add_3_ix30696z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>nx30696z1, cout=>nx29699z2, dataa=>v(1), datad=>
      GND_EXMPLR134, dataf=>r3(10), cin=>nx30696z2);
   ix1363_modgen_add_3_ix29699z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000aaff0000ff00") 
       port map ( sumout=>nx29699z1, dataa=>v(1), datad=>GND_EXMPLR134, 
      dataf=>r3(11), cin=>nx29699z2);
   r2_add8_14i1_ix98_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>r2_14n0r1(8), datac=>GND_EXMPLR134, cin=>nx7245z1
   );
   ix7245z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(7), dataa=>r_f(7), datab=>r_d(7), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(7), datag=>r_a(7));
   ix7245z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(6), dataa=>r_f(6), datab=>r_d(6), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(6), datag=>r_a(6));
   ix7245z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(5), dataa=>r_f(5), datab=>r_d(5), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(5), datag=>r_a(5));
   ix7245z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(4), dataa=>r_f(4), datab=>r_d(4), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(4), datag=>r_a(4));
   ix7245z17687 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(3), dataa=>r_f(3), datab=>r_d(3), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(3), datag=>r_a(3));
   ix7245z17690 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(2), dataa=>r_f(2), datab=>r_d(2), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(2), datag=>r_a(2));
   ix7245z17693 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(1), dataa=>r_f(1), datab=>r_d(1), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(1), datag=>r_a(1));
   ix7245z17696 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i3(0), dataa=>r_f(0), datab=>r_d(0), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_b(0), datag=>r_a(0));
   ix7245z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(7), dataa=>r_g(7), datab=>r_e(7), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(7), datag=>r_h(7));
   ix7245z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(6), dataa=>r_g(6), datab=>r_e(6), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(6), datag=>r_h(6));
   ix7245z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(5), dataa=>r_g(5), datab=>r_e(5), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(5), datag=>r_h(5));
   ix7245z17685 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(4), dataa=>r_g(4), datab=>r_e(4), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(4), datag=>r_h(4));
   ix7245z17688 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(3), dataa=>r_g(3), datab=>r_e(3), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(3), datag=>r_h(3));
   ix7245z17691 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(2), dataa=>r_g(2), datab=>r_e(2), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(2), datag=>r_h(2));
   ix7245z17694 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(1), dataa=>r_g(1), datab=>r_e(1), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(1), datag=>r_h(1));
   ix7245z17697 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i4(0), dataa=>r_g(0), datab=>r_e(0), datac=>v(1), 
      datad=>v(2), datae=>i_valid, dataf=>r_c(0), datag=>r_h(0));
   ix40462z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(7), dataa=>r_h(7), datab=>r_f(7), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(7), datag=>r_b(7));
   ix41459z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(6), dataa=>r_h(6), datab=>r_f(6), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(6), datag=>r_b(6));
   ix41459z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(5), dataa=>r_h(5), datab=>r_f(5), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(5), datag=>r_b(5));
   ix41459z17692 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(4), dataa=>r_h(4), datab=>r_f(4), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(4), datag=>r_b(4));
   ix41459z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(3), dataa=>r_h(3), datab=>r_f(3), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(3), datag=>r_b(3));
   ix41459z17690 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(2), dataa=>r_h(2), datab=>r_f(2), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(2), datag=>r_b(2));
   ix41459z17687 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(1), dataa=>r_h(1), datab=>r_f(1), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(1), datag=>r_b(1));
   ix41459z17688 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i1_val(0), dataa=>r_h(0), datab=>r_f(0), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_d(0), datag=>r_b(0));
   ix40462z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(7), dataa=>r_e(7), datab=>r_c(7), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(7), datag=>r_g(7));
   ix41459z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(6), dataa=>r_e(6), datab=>r_c(6), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(6), datag=>r_g(6));
   ix41459z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(5), dataa=>r_e(5), datab=>r_c(5), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(5), datag=>r_g(5));
   ix41459z17683 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(4), dataa=>r_e(4), datab=>r_c(4), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(4), datag=>r_g(4));
   ix41459z17691 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(3), dataa=>r_e(3), datab=>r_c(3), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(3), datag=>r_g(3));
   ix41459z17689 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(2), dataa=>r_e(2), datab=>r_c(2), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(2), datag=>r_g(2));
   ix41459z17686 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(1), dataa=>r_e(1), datab=>r_c(1), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(1), datag=>r_g(1));
   ix41459z17685 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0fcfaf0f00c0a",
         extended_lut => "on") 
       port map ( combout=>i2_val(0), dataa=>r_e(0), datab=>r_c(0), datac=>
      v(1), datad=>v(2), datae=>i_valid, dataf=>r_a(0), datag=>r_g(0));
   ix41459z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"b2b2bb2bb2b22b22",
         extended_lut => "on") 
       port map ( combout=>nx41459z2, dataa=>i1_val(7), datab=>i2_val(7), 
      datac=>i2_val(5), datad=>i1_val(5), datae=>nx41459z3, dataf=>nx41459z4, 
      datag=>i1_val(6));
   reg_r_d_7 : dffeas port map ( q=>r_d(7), d=>nx1550z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(7), sload=>
      wr_en_0_repl);
   reg_r_d_6 : dffeas port map ( q=>r_d(6), d=>nx2547z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(6), sload=>
      wr_en_0_repl);
   reg_r_d_5 : dffeas port map ( q=>r_d(5), d=>nx3544z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(5), sload=>
      wr_en_0_repl);
   reg_r_d_4 : dffeas port map ( q=>r_d(4), d=>nx4541z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(4), sload=>
      wr_en_0_repl);
   reg_r_d_3 : dffeas port map ( q=>r_d(3), d=>nx5538z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(3), sload=>
      wr_en_0_repl);
   reg_r_d_2 : dffeas port map ( q=>r_d(2), d=>nx6535z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(2), sload=>
      wr_en_0_repl);
   reg_r_d_1 : dffeas port map ( q=>r_d(1), d=>nx7532z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(1), sload=>
      wr_en_0_repl);
   reg_r_d_0 : dffeas port map ( q=>r_d(0), d=>nx8529z1, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_2(0), sload=>
      wr_en_0_repl);
   reg_r_c_7 : dffeas port map ( q=>r_c(7), d=>nx15288z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(7), sload=>
      wr_en_0_repl);
   reg_r_c_6 : dffeas port map ( q=>r_c(6), d=>nx14291z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(6), sload=>
      wr_en_0_repl);
   reg_r_c_5 : dffeas port map ( q=>r_c(5), d=>nx13294z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(5), sload=>
      wr_en_0_repl);
   reg_r_c_4 : dffeas port map ( q=>r_c(4), d=>nx12297z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(4), sload=>
      wr_en_0_repl);
   reg_r_c_3 : dffeas port map ( q=>r_c(3), d=>nx11300z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(3), sload=>
      wr_en_0_repl);
   reg_r_c_2 : dffeas port map ( q=>r_c(2), d=>nx10303z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(2), sload=>
      wr_en_0_repl);
   reg_r_c_1 : dffeas port map ( q=>r_c(1), d=>nx9306z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(1), sload=>
      wr_en_0_repl);
   reg_r_c_0 : dffeas port map ( q=>r_c(0), d=>nx8309z2, clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR, asdata=>M_out_1(0), sload=>
      wr_en_0_repl);
   reg_r_h_7 : dffeas port map ( q=>r_h(7), d=>M_b(7), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(7), sload=>nx35226z1);
   reg_r_h_6 : dffeas port map ( q=>r_h(6), d=>M_b(6), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(6), sload=>nx35226z1);
   reg_r_h_5 : dffeas port map ( q=>r_h(5), d=>M_b(5), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(5), sload=>nx35226z1);
   reg_r_h_4 : dffeas port map ( q=>r_h(4), d=>M_b(4), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(4), sload=>nx35226z1);
   reg_r_h_3 : dffeas port map ( q=>r_h(3), d=>M_b(3), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(3), sload=>nx35226z1);
   reg_r_h_2 : dffeas port map ( q=>r_h(2), d=>M_b(2), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(2), sload=>nx35226z1);
   reg_r_h_1 : dffeas port map ( q=>r_h(1), d=>M_b(1), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(1), sload=>nx35226z1);
   reg_r_h_0 : dffeas port map ( q=>r_h(0), d=>M_b(0), clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>r_i(0), sload=>nx35226z1);
   reg_r1_val_7 : dffeas port map ( q=>r1_val(7), d=>nx40462z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_6 : dffeas port map ( q=>r1_val(6), d=>nx41459z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_5 : dffeas port map ( q=>r1_val(5), d=>nx42456z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_4 : dffeas port map ( q=>r1_val(4), d=>nx43453z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_3 : dffeas port map ( q=>r1_val(3), d=>nx44450z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_2 : dffeas port map ( q=>r1_val(2), d=>nx45447z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_1 : dffeas port map ( q=>r1_val(1), d=>nx46444z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_val_0 : dffeas port map ( q=>r1_val(0), d=>nx47441z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_7 : dffeas port map ( q=>r_f(7), d=>nx47148z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_7 : dffeas port map ( q=>r_i(7), d=>nx21891z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_6 : dffeas port map ( q=>r_f(6), d=>nx46151z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_6 : dffeas port map ( q=>r_i(6), d=>nx20894z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_5 : dffeas port map ( q=>r_f(5), d=>nx45154z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_5 : dffeas port map ( q=>r_i(5), d=>nx19897z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_4 : dffeas port map ( q=>r_f(4), d=>nx44157z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_4 : dffeas port map ( q=>r_i(4), d=>nx18900z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_3 : dffeas port map ( q=>r_f(3), d=>nx43160z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_3 : dffeas port map ( q=>r_i(3), d=>nx17903z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_2 : dffeas port map ( q=>r_f(2), d=>nx42163z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_2 : dffeas port map ( q=>r_i(2), d=>nx16906z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_1 : dffeas port map ( q=>r_f(1), d=>nx41166z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_1 : dffeas port map ( q=>r_i(1), d=>nx15909z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_f_0 : dffeas port map ( q=>r_f(0), d=>nx40169z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_i_0 : dffeas port map ( q=>r_i(0), d=>nx14912z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_7 : dffeas port map ( q=>r_b(7), d=>nx15288z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_6 : dffeas port map ( q=>r_b(6), d=>nx14291z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_5 : dffeas port map ( q=>r_b(5), d=>nx13294z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_4 : dffeas port map ( q=>r_b(4), d=>nx12297z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_3 : dffeas port map ( q=>r_b(3), d=>nx11300z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_2 : dffeas port map ( q=>r_b(2), d=>nx10303z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_1 : dffeas port map ( q=>r_b(1), d=>nx9306z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_b_0 : dffeas port map ( q=>r_b(0), d=>nx8309z1, clk=>clk, ena=>
      nx47148z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_7 : dffeas port map ( q=>r_g(7), d=>nx26807z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_7 : dffeas port map ( q=>r_a(7), d=>nx23707z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_6 : dffeas port map ( q=>r_g(6), d=>nx27804z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_6 : dffeas port map ( q=>r_a(6), d=>nx22710z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_5 : dffeas port map ( q=>r_g(5), d=>nx28801z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_5 : dffeas port map ( q=>r_a(5), d=>nx21713z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_4 : dffeas port map ( q=>r_g(4), d=>nx29798z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_4 : dffeas port map ( q=>r_a(4), d=>nx20716z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_3 : dffeas port map ( q=>r_g(3), d=>nx30795z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_3 : dffeas port map ( q=>r_a(3), d=>nx19719z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_2 : dffeas port map ( q=>r_g(2), d=>nx31792z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_2 : dffeas port map ( q=>r_a(2), d=>nx18722z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_1 : dffeas port map ( q=>r_g(1), d=>nx32789z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_1 : dffeas port map ( q=>r_a(1), d=>nx17725z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_g_0 : dffeas port map ( q=>r_g(0), d=>nx33786z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r_a_0 : dffeas port map ( q=>r_a(0), d=>nx16728z1, clk=>clk, ena=>
      nx23707z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_o_mode_1 : dffeas port map ( q=>o_mode_1_EXMPLR116, d=>nx44218z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_o_mode_0 : dffeas port map ( q=>nx34903z4, d=>nx43221z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_GND, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_o_dir_2 : dffeas port map ( q=>o_dir(2), d=>nx33317z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_o_dir_1 : dffeas port map ( q=>o_dir(1), d=>nx32320z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_o_dir_0 : dffeas port map ( q=>o_dir(0), d=>nx31323z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_q_7 : dffeas port map ( q=>o_col_EXMPLR139(7), d=>inc_d_7, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_6 : dffeas port map ( q=>o_col_EXMPLR139(6), d=>inc_d_6, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_5 : dffeas port map ( q=>o_col_EXMPLR139(5), d=>inc_d_5, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_4 : dffeas port map ( q=>o_col_EXMPLR139(4), d=>inc_d_4, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_3 : dffeas port map ( q=>o_col_EXMPLR139(3), d=>inc_d_3, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_2 : dffeas port map ( q=>o_col_EXMPLR139(2), d=>inc_d_2, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_1 : dffeas port map ( q=>o_col_EXMPLR139(1), d=>inc_d_1, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_0 : dffeas port map ( q=>o_col_EXMPLR139(0), d=>inc_d_0, clk=>clk, 
      ena=>nx51271z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>
      reset, sload=>GND_EXMPLR134);
   reg_q_7_dup_0 : dffeas port map ( q=>o_row_EXMPLR138(7), d=>
      inc_d_7_dup_2001, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_6_dup_1 : dffeas port map ( q=>o_row_EXMPLR138(6), d=>
      inc_d_6_dup_2000, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_5_dup_2 : dffeas port map ( q=>o_row_EXMPLR138(5), d=>
      inc_d_5_dup_1999, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_4_dup_3 : dffeas port map ( q=>o_row_EXMPLR138(4), d=>
      inc_d_4_dup_1998, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_3_dup_4 : dffeas port map ( q=>o_row_EXMPLR138(3), d=>
      inc_d_3_dup_1997, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_2_dup_5 : dffeas port map ( q=>o_row_EXMPLR138(2), d=>
      inc_d_2_dup_1996, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_1_dup_6 : dffeas port map ( q=>o_row_EXMPLR138(1), d=>
      inc_d_1_dup_1995, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_q_0_dup_7 : dffeas port map ( q=>o_row_EXMPLR138(0), d=>
      inc_d_0_dup_1994, clk=>clk, ena=>nx34903z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR134, sclr=>reset, sload=>GND_EXMPLR134);
   reg_v_7 : dffeas port map ( q=>v(7), d=>v(6), clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_v_6 : dffeas port map ( q=>v(6), d=>v(5), clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_v_5 : dffeas port map ( q=>v(5), d=>v(4), clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_v_4 : dffeas port map ( q=>v(4), d=>v(3), clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_v_3 : dffeas port map ( q=>v(3), d=>v(2), clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_v_2 : dffeas port map ( q=>v(2), d=>v(1), clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_v_1 : dffeas port map ( q=>v(1), d=>nx10173z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload=>
      GND_EXMPLR134);
   reg_r3_11 : dffeas port map ( q=>r3(11), d=>nx29699z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r3_10 : dffeas port map ( q=>r3(10), d=>nx30696z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r3_9 : dffeas port map ( q=>r3(9), d=>nx39324z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_r1_ty_1 : dffeas port map ( q=>r1_ty(1), d=>nx42054z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134);
   reg_wr_en_2 : dffeas port map ( q=>wr_en(2), d=>nx26839z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload
      =>GND_EXMPLR134);
   reg_wr_en_1 : dffeas port map ( q=>wr_en(1), d=>nx25842z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR134, sclr=>reset, sload
      =>GND_EXMPLR134);
   ix35226z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(7), datab=>M_out_1(7), datac=>M_out_2(7), 
      datad=>M_out_0(7), datae=>wr_en(1), dataf=>wr_en(0));
   ix36223z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(6), datab=>M_out_1(6), datac=>M_out_2(6), 
      datad=>M_out_0(6), datae=>wr_en(1), dataf=>wr_en(0));
   ix37220z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(5), datab=>M_out_1(5), datac=>M_out_2(5), 
      datad=>M_out_0(5), datae=>wr_en(1), dataf=>wr_en(0));
   ix38217z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(4), datab=>M_out_1(4), datac=>M_out_2(4), 
      datad=>M_out_0(4), datae=>wr_en(1), dataf=>wr_en(0));
   ix39214z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(3), datab=>M_out_1(3), datac=>M_out_2(3), 
      datad=>M_out_0(3), datae=>wr_en(1), dataf=>wr_en(0));
   ix40211z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(2), datab=>M_out_1(2), datac=>M_out_2(2), 
      datad=>M_out_0(2), datae=>wr_en(1), dataf=>wr_en(0));
   ix41208z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(1), datab=>M_out_1(1), datac=>M_out_2(1), 
      datad=>M_out_0(1), datae=>wr_en(1), dataf=>wr_en(0));
   ix42205z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ff00cccc") 
       port map ( combout=>M_b(0), datab=>M_out_1(0), datac=>M_out_2(0), 
      datad=>M_out_0(0), datae=>wr_en(1), dataf=>wr_en(0));
   ix10173z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"00000003ffffffff") 
       port map ( combout=>nx10173z2, datab=>o_row_EXMPLR138(3), datac=>
      nx10173z3, datad=>o_row_EXMPLR138(1), datae=>o_row_EXMPLR138(2), dataf
      =>i_valid);
   ix23707z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f00000f0ff000f") 
       port map ( combout=>nx23707z2, datac=>nx10173z2, datad=>nx10173z4, 
      datae=>v(3), dataf=>o_col_EXMPLR139(0));
   ix47148z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0ff000ff0f00000") 
       port map ( combout=>nx47148z2, datac=>nx10173z2, datad=>nx10173z4, 
      datae=>v(3), dataf=>o_col_EXMPLR139(0));
   ix62709z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffff0fffcff") 
       port map ( combout=>nx62709z1, datab=>r4_val(9), datac=>v(2), datad=>
      nx62709z2, datae=>r5_val(9), dataf=>nx62709z7);
   ix1448z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00000000fffffffc") 
       port map ( combout=>nx1448z1, datab=>r7_val_11, datac=>r7_val_12, 
      datad=>nx1448z2, datae=>r7_val_10, dataf=>r7_val_13);
   ix41057z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00ff0f0000ff0f0f") 
       port map ( combout=>nx41057z1, datac=>v(1), datad=>nx41459z2, datae=>
      i_valid, dataf=>v(2));
   ix10173z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx10173z4, datac=>o_col_EXMPLR139(7), datad=>
      nx10173z5, datae=>o_col_EXMPLR139(1), dataf=>o_col_EXMPLR139(6));
   ix43221z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff3fffffff") 
       port map ( combout=>nx43221z2, datab=>o_col_EXMPLR139(1), datac=>
      o_col_EXMPLR139(3), datad=>o_col_EXMPLR139(2), datae=>
      o_col_EXMPLR139(0), dataf=>nx43221z3);
   ix34903z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff3fffffff") 
       port map ( combout=>nx34903z2, datab=>o_row_EXMPLR138(1), datac=>
      o_row_EXMPLR138(3), datad=>o_row_EXMPLR138(2), datae=>
      o_row_EXMPLR138(0), dataf=>nx34903z3);
   ix26839z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff3ffff00c00000") 
       port map ( combout=>nx26839z1, datab=>nx34903z2, datac=>wr_en(1), 
      datad=>nx43221z2, datae=>i_valid, dataf=>wr_en(2));
   ix25842z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff3ffff00c00000") 
       port map ( combout=>nx25842z1, datab=>nx34903z2, datac=>wr_en(0), 
      datad=>nx43221z2, datae=>i_valid, dataf=>wr_en(1));
   ix24845z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffd20ff00") 
       port map ( combout=>nx24845z1, dataa=>nx34903z2, datab=>nx43221z2, 
      datac=>wr_en(2), datad=>wr_en(0), datae=>i_valid, dataf=>reset);
   ix8309z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx8309z2, datac=>wr_en(0), datad=>M_out_0(0), 
      datae=>M_out_2(0), dataf=>wr_en(1));
   ix9306z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx9306z2, datac=>wr_en(0), datad=>M_out_0(1), 
      datae=>M_out_2(1), dataf=>wr_en(1));
   ix10303z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx10303z2, datac=>wr_en(0), datad=>M_out_0(2), 
      datae=>M_out_2(2), dataf=>wr_en(1));
   ix11300z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx11300z2, datac=>wr_en(0), datad=>M_out_0(3), 
      datae=>M_out_2(3), dataf=>wr_en(1));
   ix12297z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx12297z2, datac=>wr_en(0), datad=>M_out_0(4), 
      datae=>M_out_2(4), dataf=>wr_en(1));
   ix13294z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx13294z2, datac=>wr_en(0), datad=>M_out_0(5), 
      datae=>M_out_2(5), dataf=>wr_en(1));
   ix14291z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx14291z2, datac=>wr_en(0), datad=>M_out_0(6), 
      datae=>M_out_2(6), dataf=>wr_en(1));
   ix15288z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0ff000ff00ff00") 
       port map ( combout=>nx15288z2, datac=>wr_en(0), datad=>M_out_0(7), 
      datae=>M_out_2(7), dataf=>wr_en(1));
   ix8529z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx8529z1, datac=>wr_en(0), datad=>M_out_0(0), 
      datae=>M_out_1(0), dataf=>wr_en(1));
   ix7532z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx7532z1, datac=>wr_en(0), datad=>M_out_0(1), 
      datae=>M_out_1(1), dataf=>wr_en(1));
   ix6535z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx6535z1, datac=>wr_en(0), datad=>M_out_0(2), 
      datae=>M_out_1(2), dataf=>wr_en(1));
   ix5538z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx5538z1, datac=>wr_en(0), datad=>M_out_0(3), 
      datae=>M_out_1(3), dataf=>wr_en(1));
   ix4541z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx4541z1, datac=>wr_en(0), datad=>M_out_0(4), 
      datae=>M_out_1(4), dataf=>wr_en(1));
   ix3544z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx3544z1, datac=>wr_en(0), datad=>M_out_0(5), 
      datae=>M_out_1(5), dataf=>wr_en(1));
   ix2547z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx2547z1, datac=>wr_en(0), datad=>M_out_0(6), 
      datae=>M_out_1(6), dataf=>wr_en(1));
   ix1550z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fff00f00ffff0000") 
       port map ( combout=>nx1550z1, datac=>wr_en(0), datad=>M_out_0(7), 
      datae=>M_out_1(7), dataf=>wr_en(1));
   ix47148z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx47148z1, datad=>nx10173z2, datae=>i_pixel(7), 
      dataf=>r_e(7));
   ix21891z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx21891z1, datab=>nx1550z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(7), dataf=>r_d(7));
   ix46151z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx46151z1, datad=>nx10173z2, datae=>i_pixel(6), 
      dataf=>r_e(6));
   ix20894z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx20894z1, datab=>nx2547z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(6), dataf=>r_d(6));
   ix45154z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx45154z1, datad=>nx10173z2, datae=>i_pixel(5), 
      dataf=>r_e(5));
   ix19897z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx19897z1, datab=>nx3544z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(5), dataf=>r_d(5));
   ix44157z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx44157z1, datad=>nx10173z2, datae=>i_pixel(4), 
      dataf=>r_e(4));
   ix18900z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx18900z1, datab=>nx4541z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(4), dataf=>r_d(4));
   ix43160z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx43160z1, datad=>nx10173z2, datae=>i_pixel(3), 
      dataf=>r_e(3));
   ix17903z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx17903z1, datab=>nx5538z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(3), dataf=>r_d(3));
   ix42163z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx42163z1, datad=>nx10173z2, datae=>i_pixel(2), 
      dataf=>r_e(2));
   ix16906z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx16906z1, datab=>nx6535z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(2), dataf=>r_d(2));
   ix41166z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx41166z1, datad=>nx10173z2, datae=>i_pixel(1), 
      dataf=>r_e(1));
   ix15909z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx15909z1, datab=>nx7532z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(1), dataf=>r_d(1));
   ix40169z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx40169z1, datad=>nx10173z2, datae=>i_pixel(0), 
      dataf=>r_e(0));
   ix14912z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx14912z1, datab=>nx8529z1, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_2(0), dataf=>r_d(0));
   ix15288z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx15288z1, datab=>nx15288z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(7), dataf=>r_c(7));
   ix14291z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx14291z1, datab=>nx14291z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(6), dataf=>r_c(6));
   ix13294z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx13294z1, datab=>nx13294z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(5), dataf=>r_c(5));
   ix12297z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx12297z1, datab=>nx12297z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(4), dataf=>r_c(4));
   ix11300z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx11300z1, datab=>nx11300z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(3), dataf=>r_c(3));
   ix10303z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx10303z1, datab=>nx10303z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(2), dataf=>r_c(2));
   ix9306z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx9306z1, datab=>nx9306z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(1), dataf=>r_c(1));
   ix8309z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx8309z1, datab=>nx8309z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(0), dataf=>r_c(0));
   ix26807z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx26807z1, datad=>nx10173z2, datae=>i_pixel(7), 
      dataf=>r_f(7));
   ix23707z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx23707z1, datab=>nx15288z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(7), dataf=>r_b(7));
   ix27804z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx27804z1, datad=>nx10173z2, datae=>i_pixel(6), 
      dataf=>r_f(6));
   ix22710z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx22710z1, datab=>nx14291z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(6), dataf=>r_b(6));
   ix28801z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx28801z1, datad=>nx10173z2, datae=>i_pixel(5), 
      dataf=>r_f(5));
   ix21713z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx21713z1, datab=>nx13294z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(5), dataf=>r_b(5));
   ix29798z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx29798z1, datad=>nx10173z2, datae=>i_pixel(4), 
      dataf=>r_f(4));
   ix20716z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx20716z1, datab=>nx12297z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(4), dataf=>r_b(4));
   ix30795z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx30795z1, datad=>nx10173z2, datae=>i_pixel(3), 
      dataf=>r_f(3));
   ix19719z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx19719z1, datab=>nx11300z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(3), dataf=>r_b(3));
   ix31792z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx31792z1, datad=>nx10173z2, datae=>i_pixel(2), 
      dataf=>r_f(2));
   ix18722z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx18722z1, datab=>nx10303z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(2), dataf=>r_b(2));
   ix32789z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx32789z1, datad=>nx10173z2, datae=>i_pixel(1), 
      dataf=>r_f(1));
   ix17725z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx17725z1, datab=>nx9306z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(1), dataf=>r_b(1));
   ix33786z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx33786z1, datad=>nx10173z2, datae=>i_pixel(0), 
      dataf=>r_f(0));
   ix16728z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffcf0fc0f0c000c") 
       port map ( combout=>nx16728z1, datab=>nx8309z2, datac=>nx10173z2, 
      datad=>wr_en(0), datae=>M_out_1(0), dataf=>r_b(0));
   ix43221z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f0f0f0f000f300f") 
       port map ( combout=>nx43221z1, datab=>nx34903z2, datac=>i_valid, 
      datad=>o_mode_1_EXMPLR116, datae=>nx43221z2, dataf=>nx34903z4);
   ix44218z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffff00ffff") 
       port map ( combout=>nx44218z1, datad=>i_valid, datae=>nx34903z4, 
      dataf=>o_mode_1_EXMPLR116);
   ix51271z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx51271z1, datae=>reset, dataf=>i_valid);
   ix34903z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff4e0a0000") 
       port map ( combout=>nx34903z1, dataa=>nx34903z2, datab=>nx34903z4, 
      datac=>nx43221z2, datad=>o_mode_1_EXMPLR116, datae=>i_valid, dataf=>
      reset);
   ix41459z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ffffffff0000") 
       port map ( combout=>nx41459z3, datae=>i1_val(6), dataf=>i2_val(6));
   ix33317z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ff000000f000") 
       port map ( combout=>nx33317z1, datac=>r7_val_12, datad=>r7_ty(2), 
      datae=>r7_val_13, dataf=>nx33317z2);
   ix32320z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ff000000f000") 
       port map ( combout=>nx32320z1, datac=>r7_val_12, datad=>r7_ty(1), 
      datae=>r7_val_13, dataf=>nx33317z2);
   ix31323z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ff000000f000") 
       port map ( combout=>nx31323z1, datac=>r7_val_12, datad=>r7_ty(0), 
      datae=>r7_val_13, dataf=>nx33317z2);
   ix10173z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx10173z1, datae=>nx10173z2, dataf=>nx10173z4);
   ix42054z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00000000ff00ffff") 
       port map ( combout=>nx42054z1, datad=>v(1), datae=>v(2), dataf=>
      i_valid);
   ix62709z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ff00f000fff0") 
       port map ( combout=>nx62709z4, datac=>r4_val(0), datad=>r4_val(1), 
      datae=>r5_val(1), dataf=>r5_val(0));
   ix62709z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffff0ff0fffff0") 
       port map ( combout=>nx62709z6, datac=>r4_val(9), datad=>r4_val(8), 
      datae=>r5_val(8), dataf=>r5_val(9));
   ix62709z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"7dbeffffffff7dbe") 
       port map ( combout=>nx62709z8, dataa=>r4_val(9), datab=>r4_val(8), 
      datac=>r5_val(8), datad=>r5_val(9), datae=>r5_val(7), dataf=>r4_val(7)
   );
   ix62709z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff3fffcffff3fffc") 
       port map ( combout=>nx62709z5, datab=>r4_val(7), datac=>r5_val(6), 
      datad=>nx62709z6, datae=>r5_val(7), dataf=>r4_val(6));
   ix62709z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"c0fcf0ff00f0c0fc") 
       port map ( combout=>nx62709z3, datab=>r4_val(2), datac=>r4_val(3), 
      datad=>r5_val(3), datae=>r5_val(2), dataf=>nx62709z4);
   ix40462z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx40462z1, datae=>i2_val(7), dataf=>i1_val(7));
   ix41459z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx41459z1, datad=>nx41459z2, datae=>i1_val(6), 
      dataf=>i2_val(6));
   ix42456z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff40dfc0cfc4cdcc") 
       port map ( combout=>nx42456z1, dataa=>nx41459z3, datab=>i2_val(5), 
      datac=>i2_val(7), datad=>i1_val(5), datae=>i1_val(6), dataf=>i1_val(7)
   );
   ix43453z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx43453z1, datad=>nx41459z2, datae=>i1_val(4), 
      dataf=>i2_val(4));
   ix44450z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx44450z1, datad=>nx41459z2, datae=>i1_val(3), 
      dataf=>i2_val(3));
   ix45447z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx45447z1, datad=>nx41459z2, datae=>i1_val(2), 
      dataf=>i2_val(2));
   ix46444z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx46444z1, datad=>nx41459z2, datae=>i1_val(1), 
      dataf=>i2_val(1));
   ix47441z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx47441z1, datad=>nx41459z2, datae=>i1_val(0), 
      dataf=>i2_val(0));
   ix62709z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff7f37dfcd") 
       port map ( combout=>nx62709z2, dataa=>r4_val(4), datab=>r5_val(5), 
      datac=>nx62709z3, datad=>r5_val(4), datae=>r4_val(5), dataf=>nx62709z5
   );
   ix62709z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff000050d4") 
       port map ( combout=>nx62709z7, dataa=>r5_val(6), datab=>r4_val(5), 
      datac=>r4_val(6), datad=>r5_val(5), datae=>nx62709z8, dataf=>nx62709z9
   );
   ix62709z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"40c4103140401010") 
       port map ( combout=>nx62709z9, dataa=>r5_val(8), datab=>r5_val(9), 
      datac=>r4_val(8), datad=>r5_val(7), datae=>r4_val(9), dataf=>r4_val(7)
   );
   ix33317z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffcfff0") 
       port map ( combout=>nx33317z2, datab=>r7_val_8, datac=>r7_val_11, 
      datad=>r7_val_10, datae=>r7_val_7, dataf=>r7_val_9);
   ix1448z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffff000000") 
       port map ( combout=>nx1448z2, datad=>r7_val_8, datae=>r7_val_7, dataf
      =>r7_val_9);
   ix43221z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffffffffffffff") 
       port map ( combout=>nx43221z3, datac=>o_col_EXMPLR139(5), datad=>
      o_col_EXMPLR139(7), datae=>o_col_EXMPLR139(6), dataf=>
      o_col_EXMPLR139(4));
   ix34903z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffffffffffffff") 
       port map ( combout=>nx34903z3, datac=>o_row_EXMPLR138(5), datad=>
      o_row_EXMPLR138(7), datae=>o_row_EXMPLR138(6), dataf=>
      o_row_EXMPLR138(4));
   ix10173z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx10173z5, datac=>o_col_EXMPLR139(3), datad=>
      o_col_EXMPLR139(5), datae=>o_col_EXMPLR139(4), dataf=>
      o_col_EXMPLR139(2));
   ix10173z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx10173z3, datac=>o_row_EXMPLR138(5), datad=>
      o_row_EXMPLR138(7), datae=>o_row_EXMPLR138(6), dataf=>
      o_row_EXMPLR138(4));
   ix41459z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"cf0fffcf0c000f0c") 
       port map ( combout=>nx41459z4, datab=>i1_val(3), datac=>i2_val(4), 
      datad=>nx41459z5, datae=>i2_val(3), dataf=>i1_val(4));
   ix41459z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"7130ffff00007130") 
       port map ( combout=>nx41459z5, dataa=>i2_val(0), datab=>i2_val(1), 
      datac=>i1_val(1), datad=>i1_val(0), datae=>i2_val(2), dataf=>i1_val(2)
   );
   reg_r_e_7 : dffeas port map ( q=>r_e(7), d=>i_pixel(7), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_6 : dffeas port map ( q=>r_e(6), d=>i_pixel(6), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_5 : dffeas port map ( q=>r_e(5), d=>i_pixel(5), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_4 : dffeas port map ( q=>r_e(4), d=>i_pixel(4), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_3 : dffeas port map ( q=>r_e(3), d=>i_pixel(3), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_2 : dffeas port map ( q=>r_e(2), d=>i_pixel(2), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_1 : dffeas port map ( q=>r_e(1), d=>i_pixel(1), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r_e_0 : dffeas port map ( q=>r_e(0), d=>i_pixel(0), clk=>clk, ena=>
      nx2532_repl, clrn=>PWR, prn=>PWR);
   reg_r1_ty_2 : dffeas port map ( q=>r1_ty(2), d=>nx41459z2, clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r1_ty_0 : dffeas port map ( q=>r1_ty(0), d=>nx41057z1, clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r2_8 : dffeas port map ( q=>r2(8), d=>r2_14n0r1(8), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_7 : dffeas port map ( q=>r2(7), d=>r2_14n0r1(7), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_6 : dffeas port map ( q=>r2(6), d=>r2_14n0r1(6), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_5 : dffeas port map ( q=>r2(5), d=>r2_14n0r1(5), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_4 : dffeas port map ( q=>r2(4), d=>r2_14n0r1(4), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_3 : dffeas port map ( q=>r2(3), d=>r2_14n0r1(3), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_2 : dffeas port map ( q=>r2(2), d=>r2_14n0r1(2), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_1 : dffeas port map ( q=>r2(1), d=>r2_14n0r1(1), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r2_0 : dffeas port map ( q=>r2(0), d=>r2_14n0r1(0), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_8 : dffeas port map ( q=>r3(8), d=>r3_15n1ss1(8), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_7 : dffeas port map ( q=>r3(7), d=>r3_15n1ss1(7), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_6 : dffeas port map ( q=>r3(6), d=>r3_15n1ss1(6), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_5 : dffeas port map ( q=>r3(5), d=>r3_15n1ss1(5), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_4 : dffeas port map ( q=>r3(4), d=>r3_15n1ss1(4), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_3 : dffeas port map ( q=>r3(3), d=>r3_15n1ss1(3), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_2 : dffeas port map ( q=>r3(2), d=>r3_15n1ss1(2), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_1 : dffeas port map ( q=>r3(1), d=>r3_15n1ss1(1), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r3_0 : dffeas port map ( q=>r3(0), d=>r3_15n1ss1(0), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r4_val_9 : dffeas port map ( q=>r4_val(9), d=>r4_16n0r1(9), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_8 : dffeas port map ( q=>r4_val(8), d=>r4_16n0r1(8), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_7 : dffeas port map ( q=>r4_val(7), d=>r4_16n0r1(7), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_6 : dffeas port map ( q=>r4_val(6), d=>r4_16n0r1(6), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_5 : dffeas port map ( q=>r4_val(5), d=>r4_16n0r1(5), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_4 : dffeas port map ( q=>r4_val(4), d=>r4_16n0r1(4), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_3 : dffeas port map ( q=>r4_val(3), d=>r4_16n0r1(3), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_2 : dffeas port map ( q=>r4_val(2), d=>r4_16n0r1(2), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_1 : dffeas port map ( q=>r4_val(1), d=>r4_16n0r1(1), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_val_0 : dffeas port map ( q=>r4_val(0), d=>r4_16n0r1(0), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r4_ty_2 : dffeas port map ( q=>r4_ty(2), d=>r1_ty(2), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r4_ty_1 : dffeas port map ( q=>r4_ty(1), d=>r1_ty(1), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r4_ty_0 : dffeas port map ( q=>r4_ty(0), d=>r1_ty(0), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r5_val_9 : dffeas port map ( q=>r5_val(9), d=>r4_val(9), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_8 : dffeas port map ( q=>r5_val(8), d=>r4_val(8), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_7 : dffeas port map ( q=>r5_val(7), d=>r4_val(7), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_6 : dffeas port map ( q=>r5_val(6), d=>r4_val(6), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_5 : dffeas port map ( q=>r5_val(5), d=>r4_val(5), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_4 : dffeas port map ( q=>r5_val(4), d=>r4_val(4), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_3 : dffeas port map ( q=>r5_val(3), d=>r4_val(3), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_2 : dffeas port map ( q=>r5_val(2), d=>r4_val(2), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_1 : dffeas port map ( q=>r5_val(1), d=>r4_val(1), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_val_0 : dffeas port map ( q=>r5_val(0), d=>r4_val(0), clk=>clk, 
      ena=>nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_ty_2 : dffeas port map ( q=>r5_ty(2), d=>r4_ty(2), clk=>clk, ena=>
      nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_ty_1 : dffeas port map ( q=>r5_ty(1), d=>r4_ty(1), clk=>clk, ena=>
      nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r5_ty_0 : dffeas port map ( q=>r5_ty(0), d=>r4_ty(0), clk=>clk, ena=>
      nx62709z1, clrn=>PWR, prn=>PWR);
   reg_r6_12 : dffeas port map ( q=>r6(12), d=>r6_18n0r1(12), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r6_11 : dffeas port map ( q=>r6(11), d=>r6_18n0r1(11), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r6_10 : dffeas port map ( q=>r6(10), d=>r6_18n0r1(10), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r6_9 : dffeas port map ( q=>r6(9), d=>r6_18n0r1(9), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_8 : dffeas port map ( q=>r6(8), d=>r6_18n0r1(8), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_7 : dffeas port map ( q=>r6(7), d=>r6_18n0r1(7), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_6 : dffeas port map ( q=>r6(6), d=>r6_18n0r1(6), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_5 : dffeas port map ( q=>r6(5), d=>r6_18n0r1(5), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_4 : dffeas port map ( q=>r6(4), d=>r6_18n0r1(4), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_3 : dffeas port map ( q=>r6(3), d=>r6_18n0r1(3), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_2 : dffeas port map ( q=>r6(2), d=>r6_18n0r1(2), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_1 : dffeas port map ( q=>r6(1), d=>r6_18n0r1(1), clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_r6_0 : dffeas port map ( q=>r6(0), d=>r3(0), clk=>clk, clrn=>PWR, prn
      =>PWR);
   reg_r7_val_13 : dffeas port map ( q=>r7_val_13, d=>r7_19n0r1_13, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_val_12 : dffeas port map ( q=>r7_val_12, d=>r7_19n0r1_12, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_val_11 : dffeas port map ( q=>r7_val_11, d=>r7_19n0r1_11, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_val_10 : dffeas port map ( q=>r7_val_10, d=>r7_19n0r1_10, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_val_9 : dffeas port map ( q=>r7_val_9, d=>r7_19n0r1_9, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_val_8 : dffeas port map ( q=>r7_val_8, d=>r7_19n0r1_8, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_val_7 : dffeas port map ( q=>r7_val_7, d=>r7_19n0r1_7, clk=>clk, 
      clrn=>PWR, prn=>PWR);
   reg_r7_ty_2 : dffeas port map ( q=>r7_ty(2), d=>r5_ty(2), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r7_ty_1 : dffeas port map ( q=>r7_ty(1), d=>r5_ty(1), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_r7_ty_0 : dffeas port map ( q=>r7_ty(0), d=>r5_ty(0), clk=>clk, clrn
      =>PWR, prn=>PWR);
   reg_o_edge : dffeas port map ( q=>o_edge, d=>nx1448z1, clk=>clk, clrn=>
      PWR, prn=>PWR);
   reg_o_valid : dffeas port map ( q=>o_valid, d=>v(7), clk=>clk, clrn=>PWR, 
      prn=>PWR);
   reg_wr_en_0 : dffeas port map ( q=>wr_en(0), d=>nx24845z1, clk=>clk, clrn
      =>PWR, prn=>PWR);
   ix2414_repl : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx2532_repl, datae=>nx10173z2, dataf=>nx10173z4);
   ix2307_repl : stratixiv_lcell_comb
      generic map (lut_mask => X"00000003ffffffff") 
       port map ( combout=>nx35226z1, datab=>o_row_EXMPLR138(3), datac=>
      nx10173z3, datad=>o_row_EXMPLR138(1), datae=>o_row_EXMPLR138(2), dataf
      =>i_valid);
   reg_wr_en_0_repl : dffeas port map ( q=>wr_en_0_repl, d=>nx24845z1, clk=>
      clk, clrn=>PWR, prn=>PWR);
end main ;

