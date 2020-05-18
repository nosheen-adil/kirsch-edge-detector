
-- 
-- Definition of  kirsch_top
-- 
--      Thu Mar 28 13:15:56 2019
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

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
         intended_device_family => "MAX 10",
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
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

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
         intended_device_family => "MAX 10",
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
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

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
         intended_device_family => "MAX 10",
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
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_3 is 
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
end ram_dq_8_3 ;

architecture IMPLEMENTATION of ram_dq_8_3 is 
   signal rd_ena1_EXMPLR116: std_logic ;

begin
   ix64056z29484 : altsyncram
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
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR116, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR116, q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>
      rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>
      rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR116 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_4 is 
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
end ram_dq_8_4 ;

architecture IMPLEMENTATION of ram_dq_8_4 is 
   signal rd_ena1_EXMPLR146: std_logic ;

begin
   ix64056z29485 : altsyncram
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
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR146, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR146, q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>
      rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>
      rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR146 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity kirsch_top_logic is 
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
end kirsch_top_logic ;

architecture main of kirsch_top_logic is 
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
   component ram_dq_8_3
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
   component ram_dq_8_4
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
   signal seg7_en_EXMPLR189: std_logic_vector (1 DOWNTO 0) ;
   
   signal k_o_valid, k_o_data_6, k_o_data_3, k_o_data_2, k_o_data_1, 
      k_o_data_0, tx_busy_delayed, tx_busy, rx_valid: std_logic ;
   
   signal seg7_num: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_pts: std_logic_vector (1 DOWNTO 1) ;
   
   signal uart_reset: std_logic ;
   
   signal reset_count: std_logic_vector (10 DOWNTO 0) ;
   
   signal uart_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_rd_en, rb_rd_en_delayed, wait_for_tx_valid, 
      wait_for_tx_valid_delayed: std_logic ;
   
   signal write_fifo_wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal write_fifo_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_rd_en_delayed: std_logic ;
   
   signal read_fifo_wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal read_fifo_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      u_seg7_u_dual_seg7_prev_reset, u_seg7_u_dual_seg7_prev_char0_en: 
   std_logic ;
   
   signal u_uart_Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_uart_RxDivisor_4: std_logic ;
   
   signal u_uart_RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal u_uart_TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal u_uart_TopTx, u_uart_TopRx: std_logic ;
   
   signal u_uart_TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_uart_RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_uart_Rx_r: std_logic ;
   
   signal u_uart_RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal u_uart_TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_kirsch_o_col: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_a: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_b: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_c: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_d: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_e: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_f: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_g: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_h: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_i: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_i3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_i4: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_kirsch_r3: std_logic_vector (11 DOWNTO 0) ;
   
   signal u_kirsch_r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal u_kirsch_wr_en: std_logic_vector (0 TO 2) ;
   
   signal u_kirsch_v: std_logic_vector (1 TO 7) ;
   
   signal u_kirsch_r2_14n0r1: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_kirsch_r3_15n1s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_kirsch_r4_16n0r1: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r6_18n0r1: std_logic_vector (12 DOWNTO 1) ;
   
   signal u_kirsch_r7_19n0r1_13, u_kirsch_r7_19n0r1_12, 
      u_kirsch_r7_19n0r1_11, u_kirsch_r7_19n0r1_10, u_kirsch_r7_19n0r1_9, 
      u_kirsch_r7_19n0r1_8, u_kirsch_r7_19n0r1_7: std_logic ;
   
   signal u_kirsch_M_out_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_M_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_M_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r1_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal u_kirsch_r1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r4_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal u_kirsch_r4_val: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r5_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal u_kirsch_r5_val: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r7_ty: std_logic_vector (2 DOWNTO 0) ;
   
   signal u_kirsch_r7_val_13, u_kirsch_r7_val_12, u_kirsch_r7_val_11, 
      u_kirsch_r7_val_10, u_kirsch_r7_val_9, u_kirsch_r7_val_8, 
      u_kirsch_r7_val_7, nx46527z6, nx39326z1, nx16733z1, nx51853z1, 
      nx50856z1, inc_d_0, nx27063z1, inc_d_1, nx39256z1, inc_d_2, nx57428z1, 
      inc_d_3, nx23040z1, inc_d_4, nx58827z1, inc_d_5, nx37857z1, inc_d_6, 
      nx2950z1, inc_d_7, nx47012z1, inc_d_8, nx9072z1, inc_d_9, nx40977z1, 
      inc_d_10, inc_d_0_dup_858, nx17767z1, inc_d_1_dup_860, nx33341z1, 
      inc_d_2_dup_862, nx48915z1, inc_d_3_dup_864, nx64489z1, 
      inc_d_4_dup_866, nx32952z1, inc_d_5_dup_868, nx17378z1, 
      inc_d_6_dup_870, nx9591z1, inc_d_7_dup_872, inc_d_0_dup_894, nx48733z1, 
      inc_d_1_dup_896, nx33159z1, inc_d_2_dup_898, nx472z1, inc_d_3_dup_900, 
      nx16046z1, inc_d_4_dup_902, nx31620z1, inc_d_5_dup_904, nx47194z1, 
      inc_d_6_dup_906, nx10555z1, inc_d_7_dup_908, incdec_mux_0_dup_113, 
      nx14325z1, incdec_mux_1_dup_114, nx35637z1, incdec_mux_2_dup_115, 
      nx20063z1, incdec_mux_3_dup_116, nx4489z1, incdec_mux_4_dup_117, 
      nx29142z1, incdec_mux_5_dup_118, nx44716z1, incdec_mux_6_dup_119, 
      nx60290z1, incdec_mux_7_dup_120, nx2541z1, incdec_mux_8_dup_121, 
      inc_d_0_dup_959, nx25574z1, inc_d_1_dup_961, nx10000z1, 
      inc_d_2_dup_963, nx5574z1, inc_d_3_dup_965, nx21148z1, inc_d_4_dup_967, 
      nx54779z1, inc_d_5_dup_969, nx60719z1, inc_d_6_dup_971, nx52932z1, 
      inc_d_7_dup_973, inc_d_0_dup_995, nx46785z1, inc_d_1_dup_997, 
      nx50656z1, inc_d_2_dup_999, nx35082z1, inc_d_3_dup_1001, nx19508z1, 
      inc_d_4_dup_1003, nx61602z1, inc_d_5_dup_1005, nx11640z1, 
      inc_d_6_dup_1007, nx19427z1, inc_d_7_dup_1009, 
      incdec_mux_0_dup_113_dup_1033, nx40197z2, 
      incdec_mux_1_dup_114_dup_1035, nx24623z1, 
      incdec_mux_2_dup_115_dup_1037, nx56487z1, 
      incdec_mux_3_dup_116_dup_1039, nx24582z1, 
      incdec_mux_4_dup_117_dup_1041, nx40156z1, 
      incdec_mux_5_dup_118_dup_1043, nx55730z1, 
      incdec_mux_6_dup_119_dup_1045, nx59768z1, 
      incdec_mux_7_dup_120_dup_1047, nx51981z1, 
      incdec_mux_8_dup_121_dup_1049, nx44217z1, nx55707z1, nx11527z1, 
      nx38435z1, nx22861z1, nx54766z1, nx39192z1, nx41918z1, nx57492z1, 
      nx7530z1, inc_d_0_dup_1070, nx57492z2, inc_d_1_dup_1071, nx41918z2, 
      inc_d_2_dup_1072, nx39192z2, inc_d_3_dup_1073, nx54766z2, 
      inc_d_4_dup_1074, nx22861z2, inc_d_5_dup_1075, nx38435z2, 
      inc_d_6_dup_1076, nx11527z2, inc_d_7_dup_1077, nx55707z2, 
      inc_d_8_dup_1078, nx44217z2, inc_d_9_dup_1079, nx10586z1, 
      inc_d_10_dup_1080, inc_d_0_dup_1118, nx7080z1, inc_d_1_dup_1120, 
      nx24825z1, inc_d_2_dup_1122, nx9251z1, inc_d_3_dup_1124, nx59213z1, 
      inc_d_4_dup_1126, nx43639z1, inc_d_5_dup_1128, nx37471z1, 
      inc_d_6_dup_1130, nx51531z1, inc_d_7_dup_1132, nx63967z1, 
      inc_d_8_dup_1134, nx48393z1, inc_d_9_dup_1136, nx40606z1, 
      inc_d_10_dup_1138, inc_d_0_dup_1171, nx7939z1, inc_d_1_dup_1173, 
      nx57901z1, inc_d_2_dup_1175, nx42327z1, inc_d_3_dup_1177, nx38783z1, 
      inc_d_4_dup_1179, nx6878z1, inc_d_5_dup_1181, nx22452z1, 
      inc_d_6_dup_1183, nx38026z1, inc_d_7_dup_1185, nx11936z1, 
      inc_d_8_dup_1187, nx47250z1, inc_d_9_dup_1189, nx61898z1, 
      inc_d_10_dup_1191, nx54111z1, inc_d_11, nx24156z5, nx39730z5, 
      nx55304z5, nx60194z5, nx26563z5, nx10989z5, nx4585z1, nx15489z1, 
      nx31820z1, nx64864z1, nx48533z1, nx51391z1, nx45293z1, nx28962z1, 
      nx5426z1, nx43779z1, nx9391z1, nx24965z1, nx6531z1, nx56493z1, 
      nx22862z1, nx58248z1, nx8286z1, nx23860z1, nx26102z1, nx58007z1, 
      nx42433z1, inc_d_0_dup_1243, nx30952z1, inc_d_1_dup_1245, nx50158z1, 
      inc_d_2_dup_1247, nx196z1, inc_d_3_dup_1249, nx33827z1, 
      inc_d_4_dup_1251, nx16135z1, inc_d_5_dup_1253, nx561z1, 
      inc_d_6_dup_1255, nx58310z1, inc_d_7_dup_1257, inc_d_0_dup_1281, 
      nx56034z1, inc_d_1_dup_1283, nx40460z1, inc_d_2_dup_1285, nx40650z1, 
      inc_d_3_dup_1287, nx56224z1, inc_d_4_dup_1289, nx24319z1, 
      inc_d_5_dup_1291, nx25643z1, inc_d_6_dup_1293, nx17856z1, 
      inc_d_7_dup_1295, nx18275z3, nx30930z3, nx3458z3, nx19789z3, nx11359z3, 
      nx42507z3, nx39360z3, nx33205z1, nx2057z1, nx29091z1, nx52776z1, 
      nx21628z1, nx27577z1, nx58725z1, nx41199z1, nx45160z1, nx4045z1, 
      nx35193z1, nx46674z1, nx50010z1, nx15622z1, nx709z1, nx30439z1, 
      nx14108z1, nx20280z1, nx14412z1, nx35550z1, nx19976z1, nx51881z1, 
      nx29229z1, nx60377z1, nx21490z1, nx55878z1, nx40806z1, nx41061z1, 
      nx9913z1, nx49423z1, nx18275z1, nx30930z1, nx3458z1, nx19789z1, 
      nx11359z1, nx42507z1, nx39360z1, nx49423z2, nx18275z2, nx30930z2, 
      nx3458z2, nx19789z2, nx11359z2, nx42507z2, nx39360z2: std_logic ;
   
   signal k_i_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal k_o_data_7, GND_EXMPLR188: std_logic ;
   
   signal rb_i_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_rd_en_true, PWR, nx37156z7, nx15004z1, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4: std_logic ;
   
   signal write_fifo_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx7605z1: std_logic ;
   
   signal read_fifo_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx40197z1, u_seg7_u_dual_seg7_muxed_char_4, 
      u_seg7_u_dual_seg7_muxed_char_3, u_seg7_u_dual_seg7_muxed_char_2, 
      u_seg7_u_dual_seg7_muxed_char_0, u_seg7_u_dual_seg7_muxed_char_7, 
      nx29573z1, u_seg7_u_dual_seg7_load_reg, nx14933z1, nx18859z1, 
      nx44871z1, nx13938z1, nx12790z1, nx17862z4, nx10796z1, nx11793z1, 
      nx9799z1, nx59343z1, nx8802z1, nx13251z1, nx57349z1, nx9799z2: 
   std_logic ;
   
   signal u_kirsch_M_a: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_M_b: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx26352z4: std_logic ;
   
   signal u_kirsch_r_a_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_h_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_g_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_b_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_i_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_f_11n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx2550z1, nx25991z1, nx26352z1, nx25399z7, nx25399z2, nx3238z1, 
      nx22605z1, nx32900z1, nx26352z2, nx37156z5, nx37156z3: std_logic ;
   
   signal u_kirsch_i1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_i2_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal b_0, b_1, nx21267z1, nx20270z1, nx19273z1, nx18276z1, nx17279z1, 
      nx16282z1, nx15285z1, nx14288z1, nx29686z1, nx28689z1, nx27692z1, 
      nx26695z1, nx25698z1, nx24701z1, nx23704z1, nx22707z1, nx18625z1, 
      nx28027z1, nx51544z1, nx60415z1, nx23166z1, nx24163z1, nx25160z1, 
      nx40325z1, nx64502z1, nx38153z1, nx7359z1, nx8356z1, nx47851z1, 
      nx46854z1, nx58151z1, nx58143z1, nx18416z1, nx23864z1, nx24859z1, 
      nx20415z1, nx38412z1, nx25399z1, nx59437z2, nx59437z1, nx60434z1, 
      nx61431z1, nx62428z1, nx62428z2, nx64683z3, nx64683z1, nx144z1, 
      nx1141z1, nx2138z1, nx2138z2, nx37156z4, nx11963z1, nx46527z3, 
      nx26352z3, nx25399z6, nx25399z5, nx25399z4, nx7359z3, nx7359z2, 
      nx22605z3, nx60415z5, nx60415z4, nx60415z3, nx60415z2, nx51544z3, 
      nx51544z2, nx28027z3, nx28027z2, nx18625z3, nx18625z2, nx18416z4, 
      nx18416z2, nx15004z4, nx14933z3, nx14933z6, nx59343z4, nx14933z5, 
      nx14933z2, nx14933z4, nx7365z2, nx7365z1, nx6368z2, nx6368z1, nx5371z2, 
      nx5371z1, nx3377z2, nx3377z1, nx12790z3, nx15004z2, nx26352z6, 
      nx26352z5, nx46527z2, nx46527z1, nx46527z5, nx46527z4, nx10989z4, 
      nx10989z3, nx10989z2, nx10989z1, nx26563z4, nx26563z3, nx26563z2, 
      nx26563z1, nx60194z4, nx60194z3, nx60194z2, nx60194z1, nx55304z4, 
      nx55304z2, nx39730z4, nx39730z2, nx24156z4, nx24156z2, nx56954z4, 
      nx56954z2, nx17862z2, nx24163z2, nx12790z2, nx61431z2, nx59343z2, 
      nx59343z3, nx15004z3, nx18416z3, nx22605z2, nx64502z2, nx37156z2, 
      nx37156z6, nx48848z2, nx25399z8, nx25399z3, nx7605z2, nx55304z3, 
      nx55304z1, nx39730z3, nx39730z1, nx24156z3, nx24156z1, nx56954z3, 
      nx56954z1, nx57349z4, nx57349z3, nx57349z2, nx57349z6, nx57349z5, 
      nx20415z2, nx20415z3, nx20415z4, nx15243z1, nx48627z1, nx63132z1, 
      nx7965z1, nx63652z1, NOT_u_uart_Tx_Reg_7, NOT_rb_o_data_6, 
      NOT_u_uart_Tx_Reg_6, NOT_rb_o_data_5, NOT_u_uart_Tx_Reg_5, 
      NOT_rb_o_data_4, NOT_u_uart_Tx_Reg_4, NOT_rb_o_data_3, 
      NOT_u_uart_Tx_Reg_3, NOT_rb_o_data_2, NOT_u_uart_Tx_Reg_2, 
      NOT_rb_o_data_1, nx17862z3, NOT_rb_o_data_0, nx22500z1, nx48848z1, 
      NOT_GND, nx25399z9, nx37156z1, nx62197z1, nx17862z1, nx7359z4, 
      NOT_rb_rd_en_delayed, nx12790z4, NOT_uart_rx, NOT_u_uart_Tx_Reg_8, 
      NOT_u_uart_Tx_Reg_14n6ss1_8, nx64683z2, nx13787z1, nx4364z1: std_logic
    ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   seg7_en(1) <= seg7_en_EXMPLR189(1) ;
   seg7_en(0) <= seg7_en_EXMPLR189(0) ;
   write_fifo_mem_mem : ram_dq_8_0 port map ( wr_data1(7)=>uart_pixel(7), 
      wr_data1(6)=>uart_pixel(6), wr_data1(5)=>uart_pixel(5), wr_data1(4)=>
      uart_pixel(4), wr_data1(3)=>uart_pixel(3), wr_data1(2)=>uart_pixel(2), 
      wr_data1(1)=>uart_pixel(1), wr_data1(0)=>uart_pixel(0), rd_data1(7)=>
      write_fifo_q(7), rd_data1(6)=>write_fifo_q(6), rd_data1(5)=>
      write_fifo_q(5), rd_data1(4)=>write_fifo_q(4), rd_data1(3)=>
      write_fifo_q(3), rd_data1(2)=>write_fifo_q(2), rd_data1(1)=>
      write_fifo_q(1), rd_data1(0)=>write_fifo_q(0), addr1(7)=>
      write_fifo_pointer(7), addr1(6)=>write_fifo_pointer(6), addr1(5)=>
      write_fifo_pointer(5), addr1(4)=>write_fifo_pointer(4), addr1(3)=>
      write_fifo_pointer(3), addr1(2)=>write_fifo_pointer(2), addr1(1)=>
      write_fifo_pointer(1), addr1(0)=>write_fifo_pointer(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,0), wr_ena1=>rx_valid, rd_ena1=>DANGLING(0,1), 
      ena1=>DANGLING(0,2), rst1=>DANGLING(0,3), regce1=>DANGLING(0,4), 
      regrst1=>DANGLING(0,5));
   read_fifo_mem_mem : ram_dq_8_1 port map ( wr_data1(7)=>rb_i_data(7), 
      wr_data1(6)=>rb_i_data(6), wr_data1(5)=>rb_i_data(5), wr_data1(4)=>
      rb_i_data(4), wr_data1(3)=>rb_i_data(3), wr_data1(2)=>rb_i_data(2), 
      wr_data1(1)=>rb_i_data(1), wr_data1(0)=>rb_i_data(0), rd_data1(7)=>
      read_fifo_q(7), rd_data1(6)=>read_fifo_q(6), rd_data1(5)=>
      read_fifo_q(5), rd_data1(4)=>read_fifo_q(4), rd_data1(3)=>
      read_fifo_q(3), rd_data1(2)=>read_fifo_q(2), rd_data1(1)=>
      read_fifo_q(1), rd_data1(0)=>read_fifo_q(0), addr1(7)=>
      read_fifo_pointer(7), addr1(6)=>read_fifo_pointer(6), addr1(5)=>
      read_fifo_pointer(5), addr1(4)=>read_fifo_pointer(4), addr1(3)=>
      read_fifo_pointer(3), addr1(2)=>read_fifo_pointer(2), addr1(1)=>
      read_fifo_pointer(1), addr1(0)=>read_fifo_pointer(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,6), wr_ena1=>nx11963z1, rd_ena1=>DANGLING(0,7), 
      ena1=>DANGLING(0,8), rst1=>DANGLING(0,9), regce1=>DANGLING(0,10), 
      regrst1=>DANGLING(0,11));
   u_kirsch_mem_gen_0_m_mem : ram_dq_8_2 port map ( wr_data1(7)=>
      k_i_pixel(7), wr_data1(6)=>k_i_pixel(6), wr_data1(5)=>k_i_pixel(5), 
      wr_data1(4)=>k_i_pixel(4), wr_data1(3)=>k_i_pixel(3), wr_data1(2)=>
      k_i_pixel(2), wr_data1(1)=>k_i_pixel(1), wr_data1(0)=>k_i_pixel(0), 
      rd_data1(7)=>u_kirsch_M_out_0(7), rd_data1(6)=>u_kirsch_M_out_0(6), 
      rd_data1(5)=>u_kirsch_M_out_0(5), rd_data1(4)=>u_kirsch_M_out_0(4), 
      rd_data1(3)=>u_kirsch_M_out_0(3), rd_data1(2)=>u_kirsch_M_out_0(2), 
      rd_data1(1)=>u_kirsch_M_out_0(1), rd_data1(0)=>u_kirsch_M_out_0(0), 
      addr1(7)=>u_kirsch_o_col(7), addr1(6)=>u_kirsch_o_col(6), addr1(5)=>
      u_kirsch_o_col(5), addr1(4)=>u_kirsch_o_col(4), addr1(3)=>
      u_kirsch_o_col(3), addr1(2)=>u_kirsch_o_col(2), addr1(1)=>
      u_kirsch_o_col(1), addr1(0)=>u_kirsch_o_col(0), wr_clk1=>clk, rd_clk1
      =>DANGLING(0,12), wr_ena1=>u_kirsch_wr_en(0), rd_ena1=>DANGLING(0,13), 
      ena1=>DANGLING(0,14), rst1=>DANGLING(0,15), regce1=>DANGLING(0,16), 
      regrst1=>DANGLING(0,17));
   u_kirsch_mem_gen_1_m_mem : ram_dq_8_3 port map ( wr_data1(7)=>
      k_i_pixel(7), wr_data1(6)=>k_i_pixel(6), wr_data1(5)=>k_i_pixel(5), 
      wr_data1(4)=>k_i_pixel(4), wr_data1(3)=>k_i_pixel(3), wr_data1(2)=>
      k_i_pixel(2), wr_data1(1)=>k_i_pixel(1), wr_data1(0)=>k_i_pixel(0), 
      rd_data1(7)=>u_kirsch_M_out_1(7), rd_data1(6)=>u_kirsch_M_out_1(6), 
      rd_data1(5)=>u_kirsch_M_out_1(5), rd_data1(4)=>u_kirsch_M_out_1(4), 
      rd_data1(3)=>u_kirsch_M_out_1(3), rd_data1(2)=>u_kirsch_M_out_1(2), 
      rd_data1(1)=>u_kirsch_M_out_1(1), rd_data1(0)=>u_kirsch_M_out_1(0), 
      addr1(7)=>u_kirsch_o_col(7), addr1(6)=>u_kirsch_o_col(6), addr1(5)=>
      u_kirsch_o_col(5), addr1(4)=>u_kirsch_o_col(4), addr1(3)=>
      u_kirsch_o_col(3), addr1(2)=>u_kirsch_o_col(2), addr1(1)=>
      u_kirsch_o_col(1), addr1(0)=>u_kirsch_o_col(0), wr_clk1=>clk, rd_clk1
      =>DANGLING(0,18), wr_ena1=>u_kirsch_wr_en(1), rd_ena1=>DANGLING(0,19), 
      ena1=>DANGLING(0,20), rst1=>DANGLING(0,21), regce1=>DANGLING(0,22), 
      regrst1=>DANGLING(0,23));
   u_kirsch_mem_gen_2_m_mem : ram_dq_8_4 port map ( wr_data1(7)=>
      k_i_pixel(7), wr_data1(6)=>k_i_pixel(6), wr_data1(5)=>k_i_pixel(5), 
      wr_data1(4)=>k_i_pixel(4), wr_data1(3)=>k_i_pixel(3), wr_data1(2)=>
      k_i_pixel(2), wr_data1(1)=>k_i_pixel(1), wr_data1(0)=>k_i_pixel(0), 
      rd_data1(7)=>u_kirsch_M_out_2(7), rd_data1(6)=>u_kirsch_M_out_2(6), 
      rd_data1(5)=>u_kirsch_M_out_2(5), rd_data1(4)=>u_kirsch_M_out_2(4), 
      rd_data1(3)=>u_kirsch_M_out_2(3), rd_data1(2)=>u_kirsch_M_out_2(2), 
      rd_data1(1)=>u_kirsch_M_out_2(1), rd_data1(0)=>u_kirsch_M_out_2(0), 
      addr1(7)=>u_kirsch_o_col(7), addr1(6)=>u_kirsch_o_col(6), addr1(5)=>
      u_kirsch_o_col(5), addr1(4)=>u_kirsch_o_col(4), addr1(3)=>
      u_kirsch_o_col(3), addr1(2)=>u_kirsch_o_col(2), addr1(1)=>
      u_kirsch_o_col(1), addr1(0)=>u_kirsch_o_col(0), wr_clk1=>clk, rd_clk1
      =>DANGLING(0,24), wr_ena1=>u_kirsch_wr_en(2), rd_ena1=>DANGLING(0,25), 
      ena1=>DANGLING(0,26), rst1=>DANGLING(0,27), regce1=>DANGLING(0,28), 
      regrst1=>DANGLING(0,29));
   seg7_en_EXMPLR189(0) <= NOT seg7_en_EXMPLR189(1);
   k_o_data_7 <= NOT reset_n;
   GND_EXMPLR188 <= '0';
   PWR <= '1';
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0;
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2;
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4;
   led_triBus1_0 : TRI port map ( a_OUT=>led(0), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_1 : TRI port map ( a_OUT=>led(1), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_2 : TRI port map ( a_OUT=>led(2), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_3 : TRI port map ( a_OUT=>led(3), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_4 : TRI port map ( a_OUT=>led(4), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_5 : TRI port map ( a_OUT=>led(5), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_6 : TRI port map ( a_OUT=>led(6), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_7 : TRI port map ( a_OUT=>led(7), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   u_seg7_u_dual_seg7_o_char_triBus3_6 : TRI port map ( a_OUT=>seg7_data(6), 
      a_IN=>GND_EXMPLR188, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4);
   u_seg7_u_dual_seg7_o_char_triBus3_5 : TRI port map ( a_OUT=>seg7_data(5), 
      a_IN=>GND_EXMPLR188, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2);
   u_seg7_u_dual_seg7_ix36127z20184 : TRI port map ( a_OUT=>seg7_data(1), 
      a_IN=>GND_EXMPLR188, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0);
   incdec_mux_0_dup_113_dup_1033 <= NOT read_fifo_status_cnt(0);
   incdec_mux_0_dup_113 <= NOT write_fifo_status_cnt(0);
   u_kirsch_wr_en(0) <= NOT nx22500z1;
   NOT_GND <= NOT GND_EXMPLR188;
   uart_tx <= NOT nx62197z1;
   NOT_rb_rd_en_delayed <= NOT rb_rd_en_delayed;
   u_uart_Rx_r <= NOT nx12790z4;
   NOT_uart_rx <= NOT uart_rx;
   u_uart_RxFSM(0) <= NOT nx64683z2;
   ix2_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0, cout=>nx27063z1, dataa=>reset_count(0), 
      datad=>PWR);
   ix6_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx39256z1, dataa=>reset_count(1), 
      datad=>PWR, cin=>nx27063z1);
   ix10_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx57428z1, dataa=>reset_count(2), 
      datad=>PWR, cin=>nx39256z1);
   ix14_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx23040z1, dataa=>reset_count(3), 
      datad=>PWR, cin=>nx57428z1);
   ix18_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58827z1, dataa=>reset_count(4), 
      datad=>PWR, cin=>nx23040z1);
   ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx37857z1, dataa=>reset_count(5), 
      datad=>PWR, cin=>nx58827z1);
   ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx2950z1, dataa=>reset_count(6), 
      datad=>PWR, cin=>nx37857z1);
   ix834_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx47012z1, dataa=>reset_count(7), 
      datad=>PWR, cin=>nx2950z1);
   ix836_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx9072z1, dataa=>reset_count(8), 
      datad=>PWR, cin=>nx47012z1);
   ix49_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx40977z1, dataa=>reset_count(9), 
      datad=>PWR, cin=>nx9072z1);
   ix51_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, dataa=>reset_count(10), datad=>PWR, cin
      =>nx40977z1);
   ix840_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_858, cout=>nx17767z1, dataa=>
      write_fifo_wr_pointer(0), datad=>PWR);
   ix842_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_860, cout=>nx33341z1, dataa=>
      write_fifo_wr_pointer(1), datad=>PWR, cin=>nx17767z1);
   ix844_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_862, cout=>nx48915z1, dataa=>
      write_fifo_wr_pointer(2), datad=>PWR, cin=>nx33341z1);
   ix846_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_864, cout=>nx64489z1, dataa=>
      write_fifo_wr_pointer(3), datad=>PWR, cin=>nx48915z1);
   ix848_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_866, cout=>nx32952z1, dataa=>
      write_fifo_wr_pointer(4), datad=>PWR, cin=>nx64489z1);
   ix850_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_868, cout=>nx17378z1, dataa=>
      write_fifo_wr_pointer(5), datad=>PWR, cin=>nx32952z1);
   ix852_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_870, cout=>nx9591z1, dataa=>
      write_fifo_wr_pointer(6), datad=>PWR, cin=>nx17378z1);
   ix853_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_872, dataa=>write_fifo_wr_pointer(7), 
      datad=>PWR, cin=>nx9591z1);
   ix875_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_894, cout=>nx48733z1, dataa=>
      write_fifo_rd_pointer(0), datad=>PWR);
   ix877_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_896, cout=>nx33159z1, dataa=>
      write_fifo_rd_pointer(1), datad=>PWR, cin=>nx48733z1);
   ix879_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_898, cout=>nx472z1, dataa=>
      write_fifo_rd_pointer(2), datad=>PWR, cin=>nx33159z1);
   ix881_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_900, cout=>nx16046z1, dataa=>
      write_fifo_rd_pointer(3), datad=>PWR, cin=>nx472z1);
   ix883_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_902, cout=>nx31620z1, dataa=>
      write_fifo_rd_pointer(4), datad=>PWR, cin=>nx16046z1);
   ix885_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_904, cout=>nx47194z1, dataa=>
      write_fifo_rd_pointer(5), datad=>PWR, cin=>nx31620z1);
   ix887_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_906, cout=>nx10555z1, dataa=>
      write_fifo_rd_pointer(6), datad=>PWR, cin=>nx47194z1);
   ix888_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_908, dataa=>write_fifo_rd_pointer(7), 
      datad=>PWR, cin=>nx10555z1);
   ix940_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_959, cout=>nx25574z1, dataa=>
      read_fifo_wr_pointer(0), datad=>PWR);
   ix942_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_961, cout=>nx10000z1, dataa=>
      read_fifo_wr_pointer(1), datad=>PWR, cin=>nx25574z1);
   ix944_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_963, cout=>nx5574z1, dataa=>
      read_fifo_wr_pointer(2), datad=>PWR, cin=>nx10000z1);
   ix946_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_965, cout=>nx21148z1, dataa=>
      read_fifo_wr_pointer(3), datad=>PWR, cin=>nx5574z1);
   ix948_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_967, cout=>nx54779z1, dataa=>
      read_fifo_wr_pointer(4), datad=>PWR, cin=>nx21148z1);
   ix950_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_969, cout=>nx60719z1, dataa=>
      read_fifo_wr_pointer(5), datad=>PWR, cin=>nx54779z1);
   ix952_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_971, cout=>nx52932z1, dataa=>
      read_fifo_wr_pointer(6), datad=>PWR, cin=>nx60719z1);
   ix953_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_973, dataa=>read_fifo_wr_pointer(7), 
      datad=>PWR, cin=>nx52932z1);
   ix976_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_995, cout=>nx46785z1, dataa=>
      read_fifo_rd_pointer(0), datad=>PWR);
   ix978_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_997, cout=>nx50656z1, dataa=>
      read_fifo_rd_pointer(1), datad=>PWR, cin=>nx46785z1);
   ix980_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_999, cout=>nx35082z1, dataa=>
      read_fifo_rd_pointer(2), datad=>PWR, cin=>nx50656z1);
   ix982_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1001, cout=>nx19508z1, dataa=>
      read_fifo_rd_pointer(3), datad=>PWR, cin=>nx35082z1);
   ix984_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1003, cout=>nx61602z1, dataa=>
      read_fifo_rd_pointer(4), datad=>PWR, cin=>nx19508z1);
   ix986_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1005, cout=>nx11640z1, dataa=>
      read_fifo_rd_pointer(5), datad=>PWR, cin=>nx61602z1);
   ix988_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1007, cout=>nx19427z1, dataa=>
      read_fifo_rd_pointer(6), datad=>PWR, cin=>nx11640z1);
   ix989_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1009, dataa=>read_fifo_rd_pointer(7), 
      datad=>PWR, cin=>nx19427z1);
   ix1051_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_1070, cout=>nx57492z2, dataa=>
      nx7530z1, datad=>PWR);
   ix1053_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1071, cout=>nx41918z2, dataa=>
      nx57492z1, datad=>PWR, cin=>nx57492z2);
   ix1055_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1072, cout=>nx39192z2, dataa=>
      nx41918z1, datad=>PWR, cin=>nx41918z2);
   ix1057_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1073, cout=>nx54766z2, dataa=>
      nx39192z1, datad=>PWR, cin=>nx39192z2);
   ix1059_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1074, cout=>nx22861z2, dataa=>
      nx54766z1, datad=>PWR, cin=>nx54766z2);
   ix1061_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1075, cout=>nx38435z2, dataa=>
      nx22861z1, datad=>PWR, cin=>nx22861z2);
   ix1063_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1076, cout=>nx11527z2, dataa=>
      nx38435z1, datad=>PWR, cin=>nx38435z2);
   ix1065_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1077, cout=>nx55707z2, dataa=>
      nx11527z1, datad=>PWR, cin=>nx11527z2);
   ix55_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_1078, cout=>nx44217z2, dataa=>
      nx55707z1, datad=>PWR, cin=>nx55707z2);
   ix59_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_1079, cout=>nx10586z1, dataa=>
      nx44217z1, datad=>PWR, cin=>nx44217z2);
   ix61_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_1080, dataa=>seg7_en_EXMPLR189(1), 
      datad=>PWR, cin=>nx10586z1);
   ix1086_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_1118, cout=>nx7080z1, dataa=>
      u_uart_RxDiv(0), datad=>PWR);
   ix1088_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1120, cout=>nx24825z1, dataa=>
      u_uart_RxDiv(1), datad=>PWR, cin=>nx7080z1);
   ix1090_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1122, cout=>nx9251z1, dataa=>
      u_uart_RxDiv(2), datad=>PWR, cin=>nx24825z1);
   ix1092_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1124, cout=>nx59213z1, dataa=>
      u_uart_RxDiv(3), datad=>PWR, cin=>nx9251z1);
   ix1094_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1126, cout=>nx43639z1, dataa=>
      u_uart_RxDiv(4), datad=>PWR, cin=>nx59213z1);
   ix1096_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1128, cout=>nx37471z1, dataa=>
      u_uart_RxDiv(5), datad=>PWR, cin=>nx43639z1);
   ix1098_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1130, cout=>nx51531z1, dataa=>
      u_uart_RxDiv(6), datad=>PWR, cin=>nx37471z1);
   ix1100_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1132, cout=>nx63967z1, dataa=>
      u_uart_RxDiv(7), datad=>PWR, cin=>nx51531z1);
   ix1102_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_1134, cout=>nx48393z1, dataa=>
      u_uart_RxDiv(8), datad=>PWR, cin=>nx63967z1);
   ix1104_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_1136, cout=>nx40606z1, dataa=>
      u_uart_RxDiv(9), datad=>PWR, cin=>nx48393z1);
   ix1105_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_1138, dataa=>u_uart_RxDiv(10), datad
      =>PWR, cin=>nx40606z1);
   ix1140_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_1171, cout=>nx7939z1, dataa=>
      u_uart_TxDiv(0), datad=>PWR);
   ix1142_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1173, cout=>nx57901z1, dataa=>
      u_uart_TxDiv(1), datad=>PWR, cin=>nx7939z1);
   ix1144_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1175, cout=>nx42327z1, dataa=>
      u_uart_TxDiv(2), datad=>PWR, cin=>nx57901z1);
   ix1146_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1177, cout=>nx38783z1, dataa=>
      u_uart_TxDiv(3), datad=>PWR, cin=>nx42327z1);
   ix1148_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1179, cout=>nx6878z1, dataa=>
      u_uart_TxDiv(4), datad=>PWR, cin=>nx38783z1);
   ix1150_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1181, cout=>nx22452z1, dataa=>
      u_uart_TxDiv(5), datad=>PWR, cin=>nx6878z1);
   ix1152_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1183, cout=>nx38026z1, dataa=>
      u_uart_TxDiv(6), datad=>PWR, cin=>nx22452z1);
   ix1154_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1185, cout=>nx11936z1, dataa=>
      u_uart_TxDiv(7), datad=>PWR, cin=>nx38026z1);
   ix1156_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_1187, cout=>nx47250z1, dataa=>
      u_uart_TxDiv(8), datad=>PWR, cin=>nx11936z1);
   ix38_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_1189, cout=>nx61898z1, dataa=>
      u_uart_TxDiv(9), datad=>PWR, cin=>nx47250z1);
   ix1158_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_1191, cout=>nx54111z1, dataa=>
      u_uart_TxDiv(10), datad=>PWR, cin=>nx61898z1);
   ix1159_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, dataa=>u_uart_TxDiv(11), datad=>PWR, 
      cin=>nx54111z1);
   ix1222_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_1243, cout=>nx30952z1, dataa=>
      u_kirsch_o_col(0), datad=>PWR);
   ix1224_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1245, cout=>nx50158z1, dataa=>
      u_kirsch_o_col(1), datad=>PWR, cin=>nx30952z1);
   ix1226_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1247, cout=>nx196z1, dataa=>
      u_kirsch_o_col(2), datad=>PWR, cin=>nx50158z1);
   ix1228_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1249, cout=>nx33827z1, dataa=>
      u_kirsch_o_col(3), datad=>PWR, cin=>nx196z1);
   ix1230_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1251, cout=>nx16135z1, dataa=>
      u_kirsch_o_col(4), datad=>PWR, cin=>nx33827z1);
   ix1232_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1253, cout=>nx561z1, dataa=>
      u_kirsch_o_col(5), datad=>PWR, cin=>nx16135z1);
   ix1234_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1255, cout=>nx58310z1, dataa=>
      u_kirsch_o_col(6), datad=>PWR, cin=>nx561z1);
   ix1235_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1257, dataa=>u_kirsch_o_col(7), datad
      =>PWR, cin=>nx58310z1);
   ix1260_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_1281, cout=>nx56034z1, dataa=>
      seg7_num(0), datad=>PWR);
   ix1262_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1283, cout=>nx40460z1, dataa=>
      seg7_num(1), datad=>PWR, cin=>nx56034z1);
   ix1264_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1285, cout=>nx40650z1, dataa=>
      seg7_num(2), datad=>PWR, cin=>nx40460z1);
   ix1266_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1287, cout=>nx56224z1, dataa=>
      seg7_num(3), datad=>PWR, cin=>nx40650z1);
   ix1268_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1289, cout=>nx24319z1, dataa=>
      seg7_num(4), datad=>PWR, cin=>nx56224z1);
   ix1270_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1291, cout=>nx25643z1, dataa=>
      seg7_num(5), datad=>PWR, cin=>nx24319z1);
   ix1272_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1293, cout=>nx17856z1, dataa=>
      seg7_num(6), datad=>PWR, cin=>nx25643z1);
   ix1273_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1295, dataa=>seg7_num(7), datad=>PWR, 
      cin=>nx17856z1);
   ix2403_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx40197z2, dataa=>read_fifo_status_cnt(0), datad=>
      PWR);
   ix1014_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_1_dup_114_dup_1035, cout=>nx24623z1, 
      dataa=>read_fifo_status_cnt(1), datab=>nx40197z1, datad=>PWR, cin=>
      nx40197z2);
   ix1016_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_2_dup_115_dup_1037, cout=>nx56487z1, 
      dataa=>read_fifo_status_cnt(2), datab=>nx40197z1, datad=>PWR, cin=>
      nx24623z1);
   ix1018_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_3_dup_116_dup_1039, cout=>nx24582z1, 
      dataa=>read_fifo_status_cnt(3), datab=>nx40197z1, datad=>PWR, cin=>
      nx56487z1);
   ix1020_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_4_dup_117_dup_1041, cout=>nx40156z1, 
      dataa=>read_fifo_status_cnt(4), datab=>nx40197z1, datad=>PWR, cin=>
      nx24582z1);
   ix1022_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_5_dup_118_dup_1043, cout=>nx55730z1, 
      dataa=>read_fifo_status_cnt(5), datab=>nx40197z1, datad=>PWR, cin=>
      nx40156z1);
   ix1024_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_6_dup_119_dup_1045, cout=>nx59768z1, 
      dataa=>read_fifo_status_cnt(6), datab=>nx40197z1, datad=>PWR, cin=>
      nx55730z1);
   ix1026_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_7_dup_120_dup_1047, cout=>nx51981z1, 
      dataa=>read_fifo_status_cnt(7), datab=>nx40197z1, datad=>PWR, cin=>
      nx59768z1);
   ix1027_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_8_dup_121_dup_1049, dataa=>
      read_fifo_status_cnt(8), datab=>nx40197z1, datad=>PWR, cin=>nx51981z1
   );
   ix2404_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx14325z1, dataa=>write_fifo_status_cnt(0), datad=>
      PWR);
   ix912_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_1_dup_114, cout=>nx35637z1, dataa=>
      write_fifo_status_cnt(1), datab=>nx7605z1, datad=>PWR, cin=>nx14325z1
   );
   ix914_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_2_dup_115, cout=>nx20063z1, dataa=>
      write_fifo_status_cnt(2), datab=>nx7605z1, datad=>PWR, cin=>nx35637z1
   );
   ix916_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_3_dup_116, cout=>nx4489z1, dataa=>
      write_fifo_status_cnt(3), datab=>nx7605z1, datad=>PWR, cin=>nx20063z1
   );
   ix918_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_4_dup_117, cout=>nx29142z1, dataa=>
      write_fifo_status_cnt(4), datab=>nx7605z1, datad=>PWR, cin=>nx4489z1);
   ix920_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_5_dup_118, cout=>nx44716z1, dataa=>
      write_fifo_status_cnt(5), datab=>nx7605z1, datad=>PWR, cin=>nx29142z1
   );
   ix922_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_6_dup_119, cout=>nx60290z1, dataa=>
      write_fifo_status_cnt(6), datab=>nx7605z1, datad=>PWR, cin=>nx44716z1
   );
   ix924_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_7_dup_120, cout=>nx2541z1, dataa=>
      write_fifo_status_cnt(7), datab=>nx7605z1, datad=>PWR, cin=>nx60290z1
   );
   ix925_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_8_dup_121, dataa=>
      write_fifo_status_cnt(8), datab=>nx7605z1, datad=>PWR, cin=>nx2541z1);
   u_kirsch_rtlc13_39_gt_67_ix21_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx24156z5, dataa=>u_kirsch_i1_val(0), datab=>
      u_kirsch_i2_val(0), datad=>PWR);
   u_kirsch_rtlc13_39_gt_67_ix23_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx39730z5, dataa=>u_kirsch_i1_val(1), datab=>
      u_kirsch_i2_val(1), datad=>PWR, cin=>nx24156z5);
   u_kirsch_rtlc13_39_gt_67_ix25_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx55304z5, dataa=>u_kirsch_i1_val(2), datab=>
      u_kirsch_i2_val(2), datad=>PWR, cin=>nx39730z5);
   u_kirsch_rtlc13_39_gt_67_ix27_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx60194z5, dataa=>u_kirsch_i1_val(3), datab=>
      u_kirsch_i2_val(3), datad=>PWR, cin=>nx55304z5);
   u_kirsch_rtlc13_39_gt_67_ix29_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx26563z5, dataa=>u_kirsch_i1_val(4), datab=>
      u_kirsch_i2_val(4), datad=>PWR, cin=>nx60194z5);
   u_kirsch_rtlc13_39_gt_67_ix31_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10989z5, dataa=>u_kirsch_i1_val(5), datab=>
      u_kirsch_i2_val(5), datad=>PWR, cin=>nx26563z5);
   u_kirsch_rtlc13_39_gt_67_ix33_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4585z1, dataa=>u_kirsch_i1_val(6), datab=>
      u_kirsch_i2_val(6), datad=>PWR, cin=>nx10989z5);
   u_kirsch_rtlc13_39_gt_67_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15243z1, dataa=>u_kirsch_i1_val(7), datab=>
      u_kirsch_i2_val(7), datad=>PWR, cin=>nx4585z1);
   u_kirsch_r3_add12_15i1_ix45_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>u_kirsch_r3_15n1s1(0), cout=>nx15489z1, dataa=>
      u_kirsch_r2(0), datab=>u_kirsch_r3(0), datad=>PWR);
   u_kirsch_r3_add12_15i1_ix49_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(1), cout=>nx31820z1, dataa=>
      u_kirsch_r2(1), datab=>u_kirsch_r3(1), datad=>PWR, cin=>nx15489z1);
   u_kirsch_r3_add12_15i1_ix53_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(2), cout=>nx64864z1, dataa=>
      u_kirsch_r2(2), datab=>u_kirsch_r3(2), datad=>PWR, cin=>nx31820z1);
   u_kirsch_r3_add12_15i1_ix57_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(3), cout=>nx48533z1, dataa=>
      u_kirsch_r2(3), datab=>u_kirsch_r3(3), datad=>PWR, cin=>nx64864z1);
   u_kirsch_r3_add12_15i1_ix61_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(4), cout=>nx51391z1, dataa=>
      u_kirsch_r2(4), datab=>u_kirsch_r3(4), datad=>PWR, cin=>nx48533z1);
   u_kirsch_r3_add12_15i1_ix65_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(5), cout=>nx45293z1, dataa=>
      u_kirsch_r2(5), datab=>u_kirsch_r3(5), datad=>PWR, cin=>nx51391z1);
   u_kirsch_r3_add12_15i1_ix69_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(6), cout=>nx28962z1, dataa=>
      u_kirsch_r2(6), datab=>u_kirsch_r3(6), datad=>PWR, cin=>nx45293z1);
   u_kirsch_r3_add12_15i1_ix73_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(7), cout=>nx5426z1, dataa=>
      u_kirsch_r2(7), datab=>u_kirsch_r3(7), datad=>PWR, cin=>nx28962z1);
   u_kirsch_r3_add12_15i1_ix77_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r3_15n1s1(8), cout=>nx43779z1, dataa=>
      u_kirsch_r2(8), datab=>u_kirsch_r3(8), datad=>PWR, cin=>nx5426z1);
   u_kirsch_r3_add12_15i1_ix81_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx16733z1, cout=>nx9391z1, dataa=>u_kirsch_r3(9), 
      datab=>u_kirsch_v(1), datad=>PWR, cin=>nx43779z1);
   u_kirsch_r3_add12_15i1_ix85_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx51853z1, cout=>nx24965z1, dataa=>
      u_kirsch_r3(10), datab=>u_kirsch_v(1), datad=>PWR, cin=>nx9391z1);
   u_kirsch_r3_add12_15i1_ix87_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1414",
         sum_lutc_input => "cin") 
       port map ( combout=>nx50856z1, dataa=>u_kirsch_v(1), datab=>
      u_kirsch_r3(11), datad=>PWR, cin=>nx24965z1);
   u_kirsch_rtlc17_49_gt_69_ix25_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx6531z1, dataa=>u_kirsch_r4_val(0), datab=>
      u_kirsch_r5_val(0), datad=>PWR);
   u_kirsch_rtlc17_49_gt_69_ix27_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx56493z1, dataa=>u_kirsch_r4_val(1), datab=>
      u_kirsch_r5_val(1), datad=>PWR, cin=>nx6531z1);
   u_kirsch_rtlc17_49_gt_69_ix29_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx22862z1, dataa=>u_kirsch_r4_val(2), datab=>
      u_kirsch_r5_val(2), datad=>PWR, cin=>nx56493z1);
   u_kirsch_rtlc17_49_gt_69_ix31_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx58248z1, dataa=>u_kirsch_r4_val(3), datab=>
      u_kirsch_r5_val(3), datad=>PWR, cin=>nx22862z1);
   u_kirsch_rtlc17_49_gt_69_ix33_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8286z1, dataa=>u_kirsch_r4_val(4), datab=>
      u_kirsch_r5_val(4), datad=>PWR, cin=>nx58248z1);
   u_kirsch_rtlc17_49_gt_69_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23860z1, dataa=>u_kirsch_r4_val(5), datab=>
      u_kirsch_r5_val(5), datad=>PWR, cin=>nx8286z1);
   u_kirsch_rtlc17_49_gt_69_ix37_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx26102z1, dataa=>u_kirsch_r4_val(6), datab=>
      u_kirsch_r5_val(6), datad=>PWR, cin=>nx23860z1);
   u_kirsch_rtlc17_49_gt_69_ix39_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx58007z1, dataa=>u_kirsch_r4_val(7), datab=>
      u_kirsch_r5_val(7), datad=>PWR, cin=>nx26102z1);
   u_kirsch_rtlc17_49_gt_69_ix41_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx42433z1, dataa=>u_kirsch_r4_val(8), datab=>
      u_kirsch_r5_val(8), datad=>PWR, cin=>nx58007z1);
   u_kirsch_rtlc17_49_gt_69_ix43_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx39326z1, dataa=>u_kirsch_r4_val(9), datab=>
      u_kirsch_r5_val(9), datad=>PWR, cin=>nx42433z1);
   ix1899_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fafa",
         sum_lutc_input => "cin") 
       port map ( combout=>nx3238z1, dataa=>u_kirsch_v(2), datad=>PWR, cin=>
      nx39326z1);
   u_kirsch_r2_add8_14i1_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>u_kirsch_r2_14n0r1(0), cout=>nx18275z3, dataa=>
      u_kirsch_i3(0), datab=>u_kirsch_i4(0), datad=>PWR);
   u_kirsch_r2_add8_14i1_ix39_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(1), cout=>nx30930z3, dataa=>
      u_kirsch_i3(1), datab=>u_kirsch_i4(1), datad=>PWR, cin=>nx18275z3);
   u_kirsch_r2_add8_14i1_ix43_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(2), cout=>nx3458z3, dataa=>
      u_kirsch_i3(2), datab=>u_kirsch_i4(2), datad=>PWR, cin=>nx30930z3);
   u_kirsch_r2_add8_14i1_ix47_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(3), cout=>nx19789z3, dataa=>
      u_kirsch_i3(3), datab=>u_kirsch_i4(3), datad=>PWR, cin=>nx3458z3);
   u_kirsch_r2_add8_14i1_ix51_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(4), cout=>nx11359z3, dataa=>
      u_kirsch_i3(4), datab=>u_kirsch_i4(4), datad=>PWR, cin=>nx19789z3);
   u_kirsch_r2_add8_14i1_ix55_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(5), cout=>nx42507z3, dataa=>
      u_kirsch_i3(5), datab=>u_kirsch_i4(5), datad=>PWR, cin=>nx11359z3);
   u_kirsch_r2_add8_14i1_ix59_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(6), cout=>nx39360z3, dataa=>
      u_kirsch_i3(6), datab=>u_kirsch_i4(6), datad=>PWR, cin=>nx42507z3);
   u_kirsch_r2_add8_14i1_ix63_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(7), cout=>nx63652z1, dataa=>
      u_kirsch_i3(7), datab=>u_kirsch_i4(7), datad=>PWR, cin=>nx39360z3);
   u_kirsch_r4_add9_16i1_ix37_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>u_kirsch_r4_16n0r1(0), cout=>nx33205z1, dataa=>
      u_kirsch_r1_val(0), datab=>u_kirsch_r2(0), datad=>PWR);
   u_kirsch_r4_add9_16i1_ix41_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(1), cout=>nx2057z1, dataa=>
      u_kirsch_r1_val(1), datab=>u_kirsch_r2(1), datad=>PWR, cin=>nx33205z1
   );
   u_kirsch_r4_add9_16i1_ix45_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(2), cout=>nx29091z1, dataa=>
      u_kirsch_r1_val(2), datab=>u_kirsch_r2(2), datad=>PWR, cin=>nx2057z1);
   u_kirsch_r4_add9_16i1_ix49_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(3), cout=>nx52776z1, dataa=>
      u_kirsch_r1_val(3), datab=>u_kirsch_r2(3), datad=>PWR, cin=>nx29091z1
   );
   u_kirsch_r4_add9_16i1_ix53_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(4), cout=>nx21628z1, dataa=>
      u_kirsch_r1_val(4), datab=>u_kirsch_r2(4), datad=>PWR, cin=>nx52776z1
   );
   u_kirsch_r4_add9_16i1_ix57_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(5), cout=>nx27577z1, dataa=>
      u_kirsch_r1_val(5), datab=>u_kirsch_r2(5), datad=>PWR, cin=>nx21628z1
   );
   u_kirsch_r4_add9_16i1_ix61_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(6), cout=>nx58725z1, dataa=>
      u_kirsch_r1_val(6), datab=>u_kirsch_r2(6), datad=>PWR, cin=>nx27577z1
   );
   u_kirsch_r4_add9_16i1_ix65_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(7), cout=>nx41199z1, dataa=>
      u_kirsch_r1_val(7), datab=>u_kirsch_r2(7), datad=>PWR, cin=>nx58725z1
   );
   u_kirsch_r4_add9_16i1_ix69_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(8), cout=>nx7965z1, dataa=>
      u_kirsch_r2(8), datad=>PWR, cin=>nx41199z1);
   u_kirsch_r6_add11_18i1_ix34_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>u_kirsch_r6_18n0r1(1), cout=>nx45160z1, dataa=>
      u_kirsch_r3(0), datab=>u_kirsch_r3(1), datad=>PWR);
   u_kirsch_r6_add11_18i1_ix38_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(2), cout=>nx4045z1, dataa=>
      u_kirsch_r3(1), datab=>u_kirsch_r3(2), datad=>PWR, cin=>nx45160z1);
   u_kirsch_r6_add11_18i1_ix42_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(3), cout=>nx35193z1, dataa=>
      u_kirsch_r3(2), datab=>u_kirsch_r3(3), datad=>PWR, cin=>nx4045z1);
   u_kirsch_r6_add11_18i1_ix46_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(4), cout=>nx46674z1, dataa=>
      u_kirsch_r3(3), datab=>u_kirsch_r3(4), datad=>PWR, cin=>nx35193z1);
   u_kirsch_r6_add11_18i1_ix50_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(5), cout=>nx50010z1, dataa=>
      u_kirsch_r3(4), datab=>u_kirsch_r3(5), datad=>PWR, cin=>nx46674z1);
   u_kirsch_r6_add11_18i1_ix54_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(6), cout=>nx15622z1, dataa=>
      u_kirsch_r3(5), datab=>u_kirsch_r3(6), datad=>PWR, cin=>nx50010z1);
   u_kirsch_r6_add11_18i1_ix58_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(7), cout=>nx709z1, dataa=>
      u_kirsch_r3(6), datab=>u_kirsch_r3(7), datad=>PWR, cin=>nx15622z1);
   u_kirsch_r6_add11_18i1_ix62_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(8), cout=>nx30439z1, dataa=>
      u_kirsch_r3(7), datab=>u_kirsch_r3(8), datad=>PWR, cin=>nx709z1);
   u_kirsch_r6_add11_18i1_ix66_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(9), cout=>nx14108z1, dataa=>
      u_kirsch_r3(8), datab=>u_kirsch_r3(9), datad=>PWR, cin=>nx30439z1);
   u_kirsch_r6_add11_18i1_ix70_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(10), cout=>nx20280z1, dataa=>
      u_kirsch_r3(9), datab=>u_kirsch_r3(10), datad=>PWR, cin=>nx14108z1);
   u_kirsch_r6_add11_18i1_ix74_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(11), cout=>nx63132z1, dataa=>
      u_kirsch_r3(10), datab=>u_kirsch_r3(11), datad=>PWR, cin=>nx20280z1);
   u_kirsch_r7_sub13_19i1_ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx14412z1, dataa=>u_kirsch_r6(1), datab=>
      u_kirsch_r6(0), datad=>PWR);
   u_kirsch_r7_sub13_19i1_ix24_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx35550z1, dataa=>u_kirsch_r6(2), datad=>PWR, cin=>
      nx14412z1);
   u_kirsch_r7_sub13_19i1_ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19976z1, dataa=>u_kirsch_r5_val(0), datab=>
      u_kirsch_r6(3), datad=>PWR, cin=>nx35550z1);
   u_kirsch_r7_sub13_19i1_ix28_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx51881z1, dataa=>u_kirsch_r5_val(1), datab=>
      u_kirsch_r6(4), datad=>PWR, cin=>nx19976z1);
   u_kirsch_r7_sub13_19i1_ix30_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx29229z1, dataa=>u_kirsch_r5_val(2), datab=>
      u_kirsch_r6(5), datad=>PWR, cin=>nx51881z1);
   u_kirsch_r7_sub13_19i1_ix32_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx60377z1, dataa=>u_kirsch_r5_val(3), datab=>
      u_kirsch_r6(6), datad=>PWR, cin=>nx29229z1);
   u_kirsch_r7_sub13_19i1_ix36_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_7, cout=>nx21490z1, dataa=>
      u_kirsch_r5_val(4), datab=>u_kirsch_r6(7), datad=>PWR, cin=>nx60377z1
   );
   u_kirsch_r7_sub13_19i1_ix40_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_8, cout=>nx55878z1, dataa=>
      u_kirsch_r5_val(5), datab=>u_kirsch_r6(8), datad=>PWR, cin=>nx21490z1
   );
   u_kirsch_r7_sub13_19i1_ix44_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_9, cout=>nx40806z1, dataa=>
      u_kirsch_r5_val(6), datab=>u_kirsch_r6(9), datad=>PWR, cin=>nx55878z1
   );
   u_kirsch_r7_sub13_19i1_ix48_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_10, cout=>nx41061z1, dataa=>
      u_kirsch_r5_val(7), datab=>u_kirsch_r6(10), datad=>PWR, cin=>nx40806z1
   );
   u_kirsch_r7_sub13_19i1_ix52_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_11, cout=>nx9913z1, dataa=>
      u_kirsch_r5_val(8), datab=>u_kirsch_r6(11), datad=>PWR, cin=>nx41061z1
   );
   u_kirsch_r7_sub13_19i1_ix56_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"694d",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_12, cout=>nx48627z1, dataa=>
      u_kirsch_r5_val(9), datab=>u_kirsch_r6(12), datad=>PWR, cin=>nx9913z1
   );
   u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx46527z6, datad=>PWR, cin=>nx15243z1);
   u_kirsch_r7_sub13_19i1_ix56_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r7_19n0r1_13, datad=>PWR, cin=>nx48627z1
   );
   u_kirsch_r6_add11_18i1_ix74_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r6_18n0r1(12), datad=>PWR, cin=>
      nx63132z1);
   u_kirsch_r4_add9_16i1_ix69_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r4_16n0r1(9), datad=>PWR, cin=>nx7965z1
   );
   u_kirsch_r2_add8_14i1_ix63_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r2_14n0r1(8), datad=>PWR, cin=>nx63652z1
   );
   u_uart_reg_Tx_Reg_7 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_7, d=>
      NOT_rb_o_data_6, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_8, sload=>u_uart_TxFSM(1));
   nx4364z1 <= NOT uart_reset;
   u_uart_reg_Tx_Reg_6 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_6, d=>
      NOT_rb_o_data_5, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_7, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_5 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_5, d=>
      NOT_rb_o_data_4, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_6, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_4 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_4, d=>
      NOT_rb_o_data_3, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_5, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_3 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_3, d=>
      NOT_rb_o_data_2, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_4, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_2 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_2, d=>
      NOT_rb_o_data_1, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_3, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_1 : dffeas port map ( q=>nx17862z3, d=>NOT_rb_o_data_0, 
      clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, prn=>PWR, asdata=>
      NOT_u_uart_Tx_Reg_2, sload=>u_uart_TxFSM(1));
   u_kirsch_reg_r_d_7 : dffeas port map ( q=>u_kirsch_r_d(7), d=>nx22707z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(7), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_6 : dffeas port map ( q=>u_kirsch_r_d(6), d=>nx23704z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(6), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_5 : dffeas port map ( q=>u_kirsch_r_d(5), d=>nx24701z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(5), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_4 : dffeas port map ( q=>u_kirsch_r_d(4), d=>nx25698z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(4), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_3 : dffeas port map ( q=>u_kirsch_r_d(3), d=>nx26695z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(3), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_2 : dffeas port map ( q=>u_kirsch_r_d(2), d=>nx27692z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(2), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_1 : dffeas port map ( q=>u_kirsch_r_d(1), d=>nx28689z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(1), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_d_0 : dffeas port map ( q=>u_kirsch_r_d(0), d=>nx29686z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_2(0), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_7 : dffeas port map ( q=>u_kirsch_r_c(7), d=>nx14288z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(7), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_6 : dffeas port map ( q=>u_kirsch_r_c(6), d=>nx15285z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(6), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_5 : dffeas port map ( q=>u_kirsch_r_c(5), d=>nx16282z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(5), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_4 : dffeas port map ( q=>u_kirsch_r_c(4), d=>nx17279z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(4), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_3 : dffeas port map ( q=>u_kirsch_r_c(3), d=>nx18276z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(3), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_2 : dffeas port map ( q=>u_kirsch_r_c(2), d=>nx19273z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(2), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_1 : dffeas port map ( q=>u_kirsch_r_c(1), d=>nx20270z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(1), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r_c_0 : dffeas port map ( q=>u_kirsch_r_c(0), d=>nx21267z1, 
      clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_M_out_1(0), sload=>u_kirsch_wr_en(0));
   u_kirsch_reg_r1_val_7 : dffeas port map ( q=>u_kirsch_r1_val(7), d=>
      u_kirsch_i2_val(7), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(7), sload=>nx46527z6);
   u_kirsch_reg_r1_val_6 : dffeas port map ( q=>u_kirsch_r1_val(6), d=>
      u_kirsch_i2_val(6), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(6), sload=>nx46527z6);
   u_kirsch_reg_r1_val_5 : dffeas port map ( q=>u_kirsch_r1_val(5), d=>
      u_kirsch_i2_val(5), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(5), sload=>nx46527z6);
   u_kirsch_reg_r1_val_4 : dffeas port map ( q=>u_kirsch_r1_val(4), d=>
      u_kirsch_i2_val(4), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(4), sload=>nx46527z6);
   u_kirsch_reg_r1_val_3 : dffeas port map ( q=>u_kirsch_r1_val(3), d=>
      u_kirsch_i2_val(3), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(3), sload=>nx46527z6);
   u_kirsch_reg_r1_val_2 : dffeas port map ( q=>u_kirsch_r1_val(2), d=>
      u_kirsch_i2_val(2), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(2), sload=>nx46527z6);
   u_kirsch_reg_r1_val_1 : dffeas port map ( q=>u_kirsch_r1_val(1), d=>
      u_kirsch_i2_val(1), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(1), sload=>nx46527z6);
   u_kirsch_reg_r1_val_0 : dffeas port map ( q=>u_kirsch_r1_val(0), d=>
      u_kirsch_i2_val(0), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      u_kirsch_i1_val(0), sload=>nx46527z6);
   u_kirsch_reg_r3_8 : dffeas port map ( q=>u_kirsch_r3(8), d=>
      u_kirsch_r3_15n1s1(8), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(8), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_7 : dffeas port map ( q=>u_kirsch_r3(7), d=>
      u_kirsch_r3_15n1s1(7), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(7), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_6 : dffeas port map ( q=>u_kirsch_r3(6), d=>
      u_kirsch_r3_15n1s1(6), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(6), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_5 : dffeas port map ( q=>u_kirsch_r3(5), d=>
      u_kirsch_r3_15n1s1(5), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(5), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_4 : dffeas port map ( q=>u_kirsch_r3(4), d=>
      u_kirsch_r3_15n1s1(4), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(4), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_3 : dffeas port map ( q=>u_kirsch_r3(3), d=>
      u_kirsch_r3_15n1s1(3), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(3), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_2 : dffeas port map ( q=>u_kirsch_r3(2), d=>
      u_kirsch_r3_15n1s1(2), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(2), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_1 : dffeas port map ( q=>u_kirsch_r3(1), d=>
      u_kirsch_r3_15n1s1(1), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(1), sload=>u_kirsch_v(1));
   u_kirsch_reg_r3_0 : dffeas port map ( q=>u_kirsch_r3(0), d=>
      u_kirsch_r3_15n1s1(0), clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata
      =>u_kirsch_r2(0), sload=>u_kirsch_v(1));
   u_kirsch_reg_wr_en_2 : dffeas port map ( q=>u_kirsch_wr_en(2), d=>
      nx46854z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_wr_en_1 : dffeas port map ( q=>u_kirsch_wr_en(1), d=>
      nx47851z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_wr_en_0 : dffeas port map ( q=>nx22500z1, d=>nx48848z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_GND, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_uart_reg_TxFSM_1 : dffeas port map ( q=>u_uart_TxFSM(1), d=>nx8356z1, 
      clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata=>GND_EXMPLR188);
   u_uart_reg_TxFSM_0 : dffeas port map ( q=>u_uart_TxFSM(0), d=>nx7359z1, 
      clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_o_mode_1 : dffeas port map ( q=>seg7_pts(1), d=>nx38153z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_o_mode_0 : dffeas port map ( q=>nx25399z9, d=>nx37156z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_GND, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   reg_wait_for_tx_valid : dffeas port map ( q=>wait_for_tx_valid, d=>
      nx64502z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   u_uart_reg_Tx_Reg_0 : dffeas port map ( q=>nx62197z1, d=>nx17862z1, clk=>
      clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata=>NOT_GND);
   u_uart_reg_RxErr : dffeas port map ( q=>k_o_data_6, d=>nx40325z1, clk=>
      clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_r3_11 : dffeas port map ( q=>u_kirsch_r3(11), d=>nx50856z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_r3_10 : dffeas port map ( q=>u_kirsch_r3(10), d=>nx51853z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_r3_9 : dffeas port map ( q=>u_kirsch_r3(9), d=>nx16733z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_o_dir_2 : dffeas port map ( q=>k_o_data_2, d=>nx25160z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_o_dir_1 : dffeas port map ( q=>k_o_data_1, d=>nx24163z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_o_dir_0 : dffeas port map ( q=>k_o_data_0, d=>nx23166z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   reg_uart_reset : dffeas port map ( q=>uart_reset, d=>nx60415z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_r1_ty_1 : dffeas port map ( q=>u_kirsch_r1_ty(1), d=>
      nx46527z3, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, d
      =>nx51544z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, d
      =>nx28027z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, d
      =>nx18625z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   reg_q_10 : dffeas port map ( q=>reset_count(10), d=>inc_d_10, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_9 : dffeas port map ( q=>reset_count(9), d=>inc_d_9, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_8 : dffeas port map ( q=>reset_count(8), d=>inc_d_8, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_7 : dffeas port map ( q=>reset_count(7), d=>inc_d_7, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_6 : dffeas port map ( q=>reset_count(6), d=>inc_d_6, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_5 : dffeas port map ( q=>reset_count(5), d=>inc_d_5, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_4 : dffeas port map ( q=>reset_count(4), d=>inc_d_4, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_3 : dffeas port map ( q=>reset_count(3), d=>inc_d_3, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_2 : dffeas port map ( q=>reset_count(2), d=>inc_d_2, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_1 : dffeas port map ( q=>reset_count(1), d=>inc_d_1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_0 : dffeas port map ( q=>reset_count(0), d=>inc_d_0, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_7_dup_0 : dffeas port map ( q=>write_fifo_wr_pointer(7), d=>
      inc_d_7_dup_872, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_1 : dffeas port map ( q=>write_fifo_wr_pointer(6), d=>
      inc_d_6_dup_870, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_2 : dffeas port map ( q=>write_fifo_wr_pointer(5), d=>
      inc_d_5_dup_868, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_3 : dffeas port map ( q=>write_fifo_wr_pointer(4), d=>
      inc_d_4_dup_866, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_4 : dffeas port map ( q=>write_fifo_wr_pointer(3), d=>
      inc_d_3_dup_864, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_5 : dffeas port map ( q=>write_fifo_wr_pointer(2), d=>
      inc_d_2_dup_862, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_6 : dffeas port map ( q=>write_fifo_wr_pointer(1), d=>
      inc_d_1_dup_860, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_7 : dffeas port map ( q=>write_fifo_wr_pointer(0), d=>
      inc_d_0_dup_858, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_8 : dffeas port map ( q=>write_fifo_rd_pointer(7), d=>
      inc_d_7_dup_908, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_9 : dffeas port map ( q=>write_fifo_rd_pointer(6), d=>
      inc_d_6_dup_906, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_10 : dffeas port map ( q=>write_fifo_rd_pointer(5), d=>
      inc_d_5_dup_904, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_11 : dffeas port map ( q=>write_fifo_rd_pointer(4), d=>
      inc_d_4_dup_902, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_12 : dffeas port map ( q=>write_fifo_rd_pointer(3), d=>
      inc_d_3_dup_900, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_13 : dffeas port map ( q=>write_fifo_rd_pointer(2), d=>
      inc_d_2_dup_898, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_14 : dffeas port map ( q=>write_fifo_rd_pointer(1), d=>
      inc_d_1_dup_896, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_15 : dffeas port map ( q=>write_fifo_rd_pointer(0), d=>
      inc_d_0_dup_894, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_8_dup_16 : dffeas port map ( q=>write_fifo_status_cnt(8), d=>
      incdec_mux_8_dup_121, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_17 : dffeas port map ( q=>write_fifo_status_cnt(7), d=>
      incdec_mux_7_dup_120, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_18 : dffeas port map ( q=>write_fifo_status_cnt(6), d=>
      incdec_mux_6_dup_119, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_19 : dffeas port map ( q=>write_fifo_status_cnt(5), d=>
      incdec_mux_5_dup_118, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_20 : dffeas port map ( q=>write_fifo_status_cnt(4), d=>
      incdec_mux_4_dup_117, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_21 : dffeas port map ( q=>write_fifo_status_cnt(3), d=>
      incdec_mux_3_dup_116, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_22 : dffeas port map ( q=>write_fifo_status_cnt(2), d=>
      incdec_mux_2_dup_115, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_23 : dffeas port map ( q=>write_fifo_status_cnt(1), d=>
      incdec_mux_1_dup_114, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_24 : dffeas port map ( q=>write_fifo_status_cnt(0), d=>
      incdec_mux_0_dup_113, clk=>clk, ena=>nx18416z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_25 : dffeas port map ( q=>read_fifo_wr_pointer(7), d=>
      inc_d_7_dup_973, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_26 : dffeas port map ( q=>read_fifo_wr_pointer(6), d=>
      inc_d_6_dup_971, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_27 : dffeas port map ( q=>read_fifo_wr_pointer(5), d=>
      inc_d_5_dup_969, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_28 : dffeas port map ( q=>read_fifo_wr_pointer(4), d=>
      inc_d_4_dup_967, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_29 : dffeas port map ( q=>read_fifo_wr_pointer(3), d=>
      inc_d_3_dup_965, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_30 : dffeas port map ( q=>read_fifo_wr_pointer(2), d=>
      inc_d_2_dup_963, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_31 : dffeas port map ( q=>read_fifo_wr_pointer(1), d=>
      inc_d_1_dup_961, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_32 : dffeas port map ( q=>read_fifo_wr_pointer(0), d=>
      inc_d_0_dup_959, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_33 : dffeas port map ( q=>read_fifo_rd_pointer(7), d=>
      inc_d_7_dup_1009, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_34 : dffeas port map ( q=>read_fifo_rd_pointer(6), d=>
      inc_d_6_dup_1007, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_35 : dffeas port map ( q=>read_fifo_rd_pointer(5), d=>
      inc_d_5_dup_1005, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_36 : dffeas port map ( q=>read_fifo_rd_pointer(4), d=>
      inc_d_4_dup_1003, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_37 : dffeas port map ( q=>read_fifo_rd_pointer(3), d=>
      inc_d_3_dup_1001, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_38 : dffeas port map ( q=>read_fifo_rd_pointer(2), d=>
      inc_d_2_dup_999, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_39 : dffeas port map ( q=>read_fifo_rd_pointer(1), d=>
      inc_d_1_dup_997, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_40 : dffeas port map ( q=>read_fifo_rd_pointer(0), d=>
      inc_d_0_dup_995, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_8_dup_41 : dffeas port map ( q=>read_fifo_status_cnt(8), d=>
      incdec_mux_8_dup_121_dup_1049, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_7_dup_42 : dffeas port map ( q=>read_fifo_status_cnt(7), d=>
      incdec_mux_7_dup_120_dup_1047, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_6_dup_43 : dffeas port map ( q=>read_fifo_status_cnt(6), d=>
      incdec_mux_6_dup_119_dup_1045, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_5_dup_44 : dffeas port map ( q=>read_fifo_status_cnt(5), d=>
      incdec_mux_5_dup_118_dup_1043, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_4_dup_45 : dffeas port map ( q=>read_fifo_status_cnt(4), d=>
      incdec_mux_4_dup_117_dup_1041, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_3_dup_46 : dffeas port map ( q=>read_fifo_status_cnt(3), d=>
      incdec_mux_3_dup_116_dup_1039, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_2_dup_47 : dffeas port map ( q=>read_fifo_status_cnt(2), d=>
      incdec_mux_2_dup_115_dup_1037, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_1_dup_48 : dffeas port map ( q=>read_fifo_status_cnt(1), d=>
      incdec_mux_1_dup_114_dup_1035, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_0_dup_49 : dffeas port map ( q=>read_fifo_status_cnt(0), d=>
      incdec_mux_0_dup_113_dup_1033, clk=>clk, ena=>nx20415z1, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_q_10_dup_50 : dffeas port map ( q=>seg7_en_EXMPLR189(1), d=>
      inc_d_10_dup_1080, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>nx29573z1, sload=>GND_EXMPLR188);
   reg_q_9_dup_51 : dffeas port map ( q=>nx44217z1, d=>inc_d_9_dup_1079, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_8_dup_52 : dffeas port map ( q=>nx55707z1, d=>inc_d_8_dup_1078, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_53 : dffeas port map ( q=>nx11527z1, d=>inc_d_7_dup_1077, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_6_dup_54 : dffeas port map ( q=>nx38435z1, d=>inc_d_6_dup_1076, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_5_dup_55 : dffeas port map ( q=>nx22861z1, d=>inc_d_5_dup_1075, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_4_dup_56 : dffeas port map ( q=>nx54766z1, d=>inc_d_4_dup_1074, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_3_dup_57 : dffeas port map ( q=>nx39192z1, d=>inc_d_3_dup_1073, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_2_dup_58 : dffeas port map ( q=>nx41918z1, d=>inc_d_2_dup_1072, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_1_dup_59 : dffeas port map ( q=>nx57492z1, d=>inc_d_1_dup_1071, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_0_dup_60 : dffeas port map ( q=>nx7530z1, d=>inc_d_0_dup_1070, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_10_dup_61 : dffeas port map ( q=>u_uart_RxDiv(10), d=>
      inc_d_10_dup_1138, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_9_dup_62 : dffeas port map ( q=>u_uart_RxDiv(9), d=>
      inc_d_9_dup_1136, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_8_dup_63 : dffeas port map ( q=>u_uart_RxDiv(8), d=>
      inc_d_8_dup_1134, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_64 : dffeas port map ( q=>u_uart_RxDiv(7), d=>
      inc_d_7_dup_1132, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_6_dup_65 : dffeas port map ( q=>u_uart_RxDiv(6), d=>
      inc_d_6_dup_1130, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_5_dup_66 : dffeas port map ( q=>u_uart_RxDiv(5), d=>
      inc_d_5_dup_1128, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_4_dup_67 : dffeas port map ( q=>u_uart_RxDiv(4), d=>
      inc_d_4_dup_1126, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_3_dup_68 : dffeas port map ( q=>u_uart_RxDiv(3), d=>
      inc_d_3_dup_1124, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_2_dup_69 : dffeas port map ( q=>u_uart_RxDiv(2), d=>
      inc_d_2_dup_1122, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_1_dup_70 : dffeas port map ( q=>u_uart_RxDiv(1), d=>
      inc_d_1_dup_1120, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_0_dup_71 : dffeas port map ( q=>u_uart_RxDiv(0), d=>
      inc_d_0_dup_1118, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx14933z1, sload=>GND_EXMPLR188);
   reg_q_11 : dffeas port map ( q=>u_uart_TxDiv(11), d=>inc_d_11, clk=>clk, 
      ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx57349z1, sload=>GND_EXMPLR188);
   reg_q_10_dup_72 : dffeas port map ( q=>u_uart_TxDiv(10), d=>
      inc_d_10_dup_1191, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_9_dup_73 : dffeas port map ( q=>u_uart_TxDiv(9), d=>
      inc_d_9_dup_1189, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_8_dup_74 : dffeas port map ( q=>u_uart_TxDiv(8), d=>
      inc_d_8_dup_1187, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_75 : dffeas port map ( q=>u_uart_TxDiv(7), d=>
      inc_d_7_dup_1185, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_6_dup_76 : dffeas port map ( q=>u_uart_TxDiv(6), d=>
      inc_d_6_dup_1183, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_5_dup_77 : dffeas port map ( q=>u_uart_TxDiv(5), d=>
      inc_d_5_dup_1181, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_4_dup_78 : dffeas port map ( q=>u_uart_TxDiv(4), d=>
      inc_d_4_dup_1179, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_3_dup_79 : dffeas port map ( q=>u_uart_TxDiv(3), d=>
      inc_d_3_dup_1177, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_2_dup_80 : dffeas port map ( q=>u_uart_TxDiv(2), d=>
      inc_d_2_dup_1175, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_1_dup_81 : dffeas port map ( q=>u_uart_TxDiv(1), d=>
      inc_d_1_dup_1173, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_0_dup_82 : dffeas port map ( q=>u_uart_TxDiv(0), d=>
      inc_d_0_dup_1171, clk=>clk, ena=>PWR, clrn=>nx4364z1, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_83 : dffeas port map ( q=>u_kirsch_o_col(7), d=>
      inc_d_7_dup_1257, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_84 : dffeas port map ( q=>u_kirsch_o_col(6), d=>
      inc_d_6_dup_1255, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_85 : dffeas port map ( q=>u_kirsch_o_col(5), d=>
      inc_d_5_dup_1253, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_86 : dffeas port map ( q=>u_kirsch_o_col(4), d=>
      inc_d_4_dup_1251, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_87 : dffeas port map ( q=>u_kirsch_o_col(3), d=>
      inc_d_3_dup_1249, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_88 : dffeas port map ( q=>u_kirsch_o_col(2), d=>
      inc_d_2_dup_1247, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_89 : dffeas port map ( q=>u_kirsch_o_col(1), d=>
      inc_d_1_dup_1245, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_90 : dffeas port map ( q=>u_kirsch_o_col(0), d=>
      inc_d_0_dup_1243, clk=>clk, ena=>nx38412z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_91 : dffeas port map ( q=>seg7_num(7), d=>inc_d_7_dup_1295, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_92 : dffeas port map ( q=>seg7_num(6), d=>inc_d_6_dup_1293, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_93 : dffeas port map ( q=>seg7_num(5), d=>inc_d_5_dup_1291, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_94 : dffeas port map ( q=>seg7_num(4), d=>inc_d_4_dup_1289, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_95 : dffeas port map ( q=>seg7_num(3), d=>inc_d_3_dup_1287, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_96 : dffeas port map ( q=>seg7_num(2), d=>inc_d_2_dup_1285, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_97 : dffeas port map ( q=>seg7_num(1), d=>inc_d_1_dup_1283, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_98 : dffeas port map ( q=>seg7_num(0), d=>inc_d_0_dup_1281, 
      clk=>clk, ena=>nx25399z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_wait_for_tx_valid_delayed : dffeas port map ( q=>
      wait_for_tx_valid_delayed, d=>wait_for_tx_valid, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_tx_valid : dffeas port map ( q=>nx7359z4, d=>NOT_rb_rd_en_delayed, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_GND, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   reg_rb_rd_en : dffeas port map ( q=>rb_rd_en, d=>nx15004z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, 
      sload=>GND_EXMPLR188);
   u_kirsch_reg_v_7 : dffeas port map ( q=>u_kirsch_v(7), d=>u_kirsch_v(6), 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_v_6 : dffeas port map ( q=>u_kirsch_v(6), d=>u_kirsch_v(5), 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_v_5 : dffeas port map ( q=>u_kirsch_v(5), d=>u_kirsch_v(4), 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_v_4 : dffeas port map ( q=>u_kirsch_v(4), d=>u_kirsch_v(3), 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_v_3 : dffeas port map ( q=>u_kirsch_v(3), d=>u_kirsch_v(2), 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_v_2 : dffeas port map ( q=>u_kirsch_v(2), d=>u_kirsch_v(1), 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_v_1 : dffeas port map ( q=>u_kirsch_v(1), d=>nx26352z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   ix24841z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_6, datab=>read_fifo_q_saved(6), 
      datac=>read_fifo_q(6), datad=>rb_rd_en_delayed);
   ix23844z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_5, datab=>read_fifo_q_saved(5), 
      datac=>read_fifo_q(5), datad=>rb_rd_en_delayed);
   ix22847z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_4, datab=>read_fifo_q_saved(4), 
      datac=>read_fifo_q(4), datad=>rb_rd_en_delayed);
   ix21850z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_3, datab=>read_fifo_q_saved(3), 
      datac=>read_fifo_q(3), datad=>rb_rd_en_delayed);
   ix20853z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_2, datab=>read_fifo_q_saved(2), 
      datac=>read_fifo_q(2), datad=>rb_rd_en_delayed);
   ix19856z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_1, datab=>read_fifo_q_saved(1), 
      datac=>read_fifo_q(1), datad=>rb_rd_en_delayed);
   ix18859z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_0, datab=>read_fifo_q_saved(0), 
      datac=>read_fifo_q(0), datad=>rb_rd_en_delayed);
   ix59319z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(7), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(7), datad=>write_fifo_q(7));
   ix59319z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(6), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(6), datad=>write_fifo_q(6));
   ix59319z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(5), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(5), datad=>write_fifo_q(5));
   ix59319z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(4), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(4), datad=>write_fifo_q(4));
   ix22500z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(3), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(3), datad=>write_fifo_q(3));
   ix22500z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(2), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(2), datad=>write_fifo_q(2));
   ix22500z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(1), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(1), datad=>write_fifo_q(1));
   ix22500z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(0), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(0), datad=>write_fifo_q(0));
   ix59319z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cfc") 
       port map ( combout=>rb_i_data(7), datab=>k_i_pixel(7), datac=>pb(0), 
      datad=>reset_n);
   ix59319z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>rb_i_data(6), datab=>k_o_data_6, datac=>
      k_i_pixel(6), datad=>pb(0));
   ix59319z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>rb_i_data(5), datab=>seg7_pts(1), datac=>
      k_i_pixel(5), datad=>pb(0));
   ix59319z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"33f0") 
       port map ( combout=>rb_i_data(4), datab=>nx25399z9, datac=>
      k_i_pixel(4), datad=>pb(0));
   ix59319z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>rb_i_data(3), datab=>k_o_data_3, datac=>
      k_i_pixel(3), datad=>pb(0));
   ix59319z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>rb_i_data(2), datab=>k_o_data_2, datac=>
      k_i_pixel(2), datad=>pb(0));
   ix59319z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>rb_i_data(1), datab=>k_o_data_1, datac=>
      k_i_pixel(1), datad=>pb(0));
   ix59319z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>rb_i_data(0), datab=>k_o_data_0, datac=>
      k_i_pixel(0), datad=>pb(0));
   ix11963z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0300") 
       port map ( combout=>rb_rd_en_true, datab=>nx11963z1, datac=>
      wait_for_tx_valid_delayed, datad=>rb_rd_en);
   ix37156z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx37156z7, datac=>write_fifo_rd_en_delayed, datad
      =>pb(0));
   ix15004z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx15004z1, dataa=>nx15004z2, datab=>rb_rd_en, 
      datac=>tx_busy, datad=>tx_busy_delayed);
   ix49438z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(7), datab=>
      write_fifo_rd_pointer(7), datac=>write_fifo_wr_pointer(7), datad=>
      rx_valid);
   ix49438z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(6), datab=>
      write_fifo_rd_pointer(6), datac=>write_fifo_wr_pointer(6), datad=>
      rx_valid);
   ix49438z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(5), datab=>
      write_fifo_rd_pointer(5), datac=>write_fifo_wr_pointer(5), datad=>
      rx_valid);
   ix49438z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(4), datab=>
      write_fifo_rd_pointer(4), datac=>write_fifo_wr_pointer(4), datad=>
      rx_valid);
   ix49438z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(3), datab=>
      write_fifo_rd_pointer(3), datac=>write_fifo_wr_pointer(3), datad=>
      rx_valid);
   ix49438z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(2), datab=>
      write_fifo_rd_pointer(2), datac=>write_fifo_wr_pointer(2), datad=>
      rx_valid);
   ix49438z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(1), datab=>
      write_fifo_rd_pointer(1), datac=>write_fifo_wr_pointer(1), datad=>
      rx_valid);
   ix49438z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(0), datab=>
      write_fifo_rd_pointer(0), datac=>write_fifo_wr_pointer(0), datad=>
      rx_valid);
   ix7605z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00fb") 
       port map ( combout=>nx7605z1, dataa=>nx7605z2, datab=>nx18416z4, 
      datac=>write_fifo_status_cnt(8), datad=>rx_valid);
   ix59319z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(7), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(7), datad=>read_fifo_wr_pointer(7));
   ix59319z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(6), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(6), datad=>read_fifo_wr_pointer(6));
   ix59319z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(5), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(5), datad=>read_fifo_wr_pointer(5));
   ix59319z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(4), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(4), datad=>read_fifo_wr_pointer(4));
   ix59319z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(3), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(3), datad=>read_fifo_wr_pointer(3));
   ix59319z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(2), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(2), datad=>read_fifo_wr_pointer(2));
   ix59319z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(1), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(1), datad=>read_fifo_wr_pointer(1));
   ix59319z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(0), datab=>nx11963z1, datac=>
      read_fifo_rd_pointer(0), datad=>read_fifo_wr_pointer(0));
   ix40197z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>nx40197z1, dataa=>nx15004z2, datab=>nx11963z1, 
      datac=>wait_for_tx_valid_delayed, datad=>rb_rd_en);
   ix7365z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_4, datab=>nx7365z1, 
      datac=>nx7365z2, datad=>seg7_en_EXMPLR189(1));
   ix6368z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_3, datab=>nx6368z1, 
      datac=>nx6368z2, datad=>seg7_en_EXMPLR189(1));
   ix5371z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_2, datab=>nx5371z1, 
      datac=>nx5371z2, datad=>seg7_en_EXMPLR189(1));
   ix3377z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_0, datab=>nx3377z1, 
      datac=>nx3377z2, datad=>seg7_en_EXMPLR189(1));
   ix10356z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f033") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_7, datab=>nx25399z9, 
      datac=>seg7_pts(1), datad=>seg7_en_EXMPLR189(1));
   ix29573z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx29573z1, datac=>u_seg7_u_dual_seg7_prev_reset, 
      datad=>reset_n);
   ix10356z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f00f") 
       port map ( combout=>u_seg7_u_dual_seg7_load_reg, datac=>
      u_seg7_u_dual_seg7_prev_char0_en, datad=>seg7_en_EXMPLR189(1));
   ix14933z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f8ff") 
       port map ( combout=>nx14933z1, dataa=>nx59343z2, datab=>nx14933z2, 
      datac=>nx14933z3, datad=>nx64683z2);
   ix25838z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0511") 
       port map ( combout=>NOT_u_uart_Tx_Reg_14n6ss1_8, dataa=>
      u_uart_TxFSM(1), datab=>read_fifo_q_saved(7), datac=>read_fifo_q(7), 
      datad=>rb_rd_en_delayed);
   ix18859z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4051") 
       port map ( combout=>nx18859z1, dataa=>u_uart_TxFSM(0), datab=>
      u_uart_TxFSM(1), datac=>u_uart_TopTx, datad=>nx7359z4);
   ix44871z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx44871z1, datac=>u_uart_RxFSM(3), datad=>
      u_uart_TopRx);
   ix13938z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0c00") 
       port map ( combout=>nx13938z1, datab=>u_uart_RxFSM(4), datac=>
      nx12790z4, datad=>u_uart_TopRx);
   ix12790z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cecc") 
       port map ( combout=>nx12790z1, dataa=>nx12790z2, datab=>nx12790z3, 
      datac=>nx64683z2, datad=>nx12790z4);
   ix17862z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9f8e") 
       port map ( combout=>nx17862z4, dataa=>u_uart_TxFSM(0), datab=>
      u_uart_TxFSM(1), datac=>u_uart_TopTx, datad=>nx7359z4);
   ix10796z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx10796z1, datac=>nx9799z2, datad=>
      u_uart_RxFSM(2));
   ix11793z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcf0") 
       port map ( combout=>nx11793z1, datab=>u_uart_RxFSM(1), datac=>
      u_uart_RxFSM(3), datad=>nx12790z4);
   ix13787z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f03") 
       port map ( combout=>nx13787z1, datab=>u_uart_RxFSM(4), datac=>
      u_uart_RxFSM(5), datad=>nx12790z4);
   ix9799z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx9799z1, datac=>nx9799z2, datad=>u_uart_RxFSM(2)
   );
   ix59343z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f800") 
       port map ( combout=>nx59343z1, dataa=>nx59343z2, datab=>nx14933z2, 
      datac=>nx14933z3, datad=>nx64683z2);
   ix8802z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx8802z1, datab=>u_uart_RxFSM(1), datac=>
      u_uart_RxFSM(4), datad=>nx12790z4);
   ix13251z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcff") 
       port map ( combout=>nx13251z1, datab=>u_uart_TxFSM(0), datac=>
      u_uart_TxFSM(1), datad=>nx7359z4);
   ix57349z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx57349z1, dataa=>nx57349z2, datab=>nx57349z3, 
      datac=>nx57349z4, datad=>u_uart_TxDiv(6));
   ix9799z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx9799z2, dataa=>u_uart_RxBitCnt(0), datab=>
      u_uart_RxBitCnt(1), datac=>u_uart_RxBitCnt(2), datad=>
      u_uart_RxBitCnt(3));
   ix59667z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(7), datab=>nx14288z1, datac=>
      u_kirsch_M_out_1(7), datad=>nx22500z1);
   ix58670z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(6), datab=>nx15285z1, datac=>
      u_kirsch_M_out_1(6), datad=>nx22500z1);
   ix57673z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(5), datab=>nx16282z1, datac=>
      u_kirsch_M_out_1(5), datad=>nx22500z1);
   ix56676z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(4), datab=>nx17279z1, datac=>
      u_kirsch_M_out_1(4), datad=>nx22500z1);
   ix55679z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(3), datab=>nx18276z1, datac=>
      u_kirsch_M_out_1(3), datad=>nx22500z1);
   ix54682z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(2), datab=>nx19273z1, datac=>
      u_kirsch_M_out_1(2), datad=>nx22500z1);
   ix53685z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(1), datab=>nx20270z1, datac=>
      u_kirsch_M_out_1(1), datad=>nx22500z1);
   ix52688z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_a(0), datab=>nx21267z1, datac=>
      u_kirsch_M_out_1(0), datad=>nx22500z1);
   ix734z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(7), datab=>nx22707z1, datac=>
      u_kirsch_M_out_2(7), datad=>nx22500z1);
   ix65273z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(6), datab=>nx23704z1, datac=>
      u_kirsch_M_out_2(6), datad=>nx22500z1);
   ix64276z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(5), datab=>nx24701z1, datac=>
      u_kirsch_M_out_2(5), datad=>nx22500z1);
   ix63279z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(4), datab=>nx25698z1, datac=>
      u_kirsch_M_out_2(4), datad=>nx22500z1);
   ix62282z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(3), datab=>nx26695z1, datac=>
      u_kirsch_M_out_2(3), datad=>nx22500z1);
   ix61285z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(2), datab=>nx27692z1, datac=>
      u_kirsch_M_out_2(2), datad=>nx22500z1);
   ix60288z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(1), datab=>nx28689z1, datac=>
      u_kirsch_M_out_2(1), datad=>nx22500z1);
   ix59291z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_M_b(0), datab=>nx29686z1, datac=>
      u_kirsch_M_out_2(0), datad=>nx22500z1);
   ix26352z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"e000") 
       port map ( combout=>nx26352z4, dataa=>nx26352z5, datab=>nx26352z6, 
      datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix2550z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(7), datab=>nx26352z4, datac
      =>u_kirsch_r_b(7), datad=>u_kirsch_M_a(7));
   ix1553z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(6), datab=>nx26352z4, datac
      =>u_kirsch_r_b(6), datad=>u_kirsch_M_a(6));
   ix556z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(5), datab=>nx26352z4, datac
      =>u_kirsch_r_b(5), datad=>u_kirsch_M_a(5));
   ix65095z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(4), datab=>nx26352z4, datac
      =>u_kirsch_r_b(4), datad=>u_kirsch_M_a(4));
   ix64098z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(3), datab=>nx26352z4, datac
      =>u_kirsch_r_b(3), datad=>u_kirsch_M_a(3));
   ix63101z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(2), datab=>nx26352z4, datac
      =>u_kirsch_r_b(2), datad=>u_kirsch_M_a(2));
   ix62104z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(1), datab=>nx26352z4, datac
      =>u_kirsch_r_b(1), datad=>u_kirsch_M_a(1));
   ix61107z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_a_11n3ss1(0), datab=>nx26352z4, datac
      =>u_kirsch_r_b(0), datad=>u_kirsch_M_a(0));
   ix56383z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(7), datab=>nx26352z4, datac
      =>u_kirsch_r_i(7), datad=>u_kirsch_M_b(7));
   ix57380z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(6), datab=>nx26352z4, datac
      =>u_kirsch_r_i(6), datad=>u_kirsch_M_b(6));
   ix58377z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(5), datab=>nx26352z4, datac
      =>u_kirsch_r_i(5), datad=>u_kirsch_M_b(5));
   ix59374z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(4), datab=>nx26352z4, datac
      =>u_kirsch_r_i(4), datad=>u_kirsch_M_b(4));
   ix60371z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(3), datab=>nx26352z4, datac
      =>u_kirsch_r_i(3), datad=>u_kirsch_M_b(3));
   ix61368z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(2), datab=>nx26352z4, datac
      =>u_kirsch_r_i(2), datad=>u_kirsch_M_b(2));
   ix62365z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(1), datab=>nx26352z4, datac
      =>u_kirsch_r_i(1), datad=>u_kirsch_M_b(1));
   ix63362z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_h_11n3ss1(0), datab=>nx26352z4, datac
      =>u_kirsch_r_i(0), datad=>u_kirsch_M_b(0));
   ix47964z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(7), datab=>nx26352z4, datac
      =>u_kirsch_r_f(7), datad=>k_i_pixel(7));
   ix48961z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(6), datab=>nx26352z4, datac
      =>u_kirsch_r_f(6), datad=>k_i_pixel(6));
   ix49958z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(5), datab=>nx26352z4, datac
      =>u_kirsch_r_f(5), datad=>k_i_pixel(5));
   ix50955z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(4), datab=>nx26352z4, datac
      =>u_kirsch_r_f(4), datad=>k_i_pixel(4));
   ix51952z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(3), datab=>nx26352z4, datac
      =>u_kirsch_r_f(3), datad=>k_i_pixel(3));
   ix52949z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(2), datab=>nx26352z4, datac
      =>u_kirsch_r_f(2), datad=>k_i_pixel(2));
   ix53946z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(1), datab=>nx26352z4, datac
      =>u_kirsch_r_f(1), datad=>k_i_pixel(1));
   ix54943z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_g_11n3ss1(0), datab=>nx26352z4, datac
      =>u_kirsch_r_f(0), datad=>k_i_pixel(0));
   ix59667z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(7), datab=>nx26352z4, datac
      =>u_kirsch_r_c(7), datad=>u_kirsch_M_a(7));
   ix58670z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(6), datab=>nx26352z4, datac
      =>u_kirsch_r_c(6), datad=>u_kirsch_M_a(6));
   ix57673z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(5), datab=>nx26352z4, datac
      =>u_kirsch_r_c(5), datad=>u_kirsch_M_a(5));
   ix56676z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(4), datab=>nx26352z4, datac
      =>u_kirsch_r_c(4), datad=>u_kirsch_M_a(4));
   ix55679z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(3), datab=>nx26352z4, datac
      =>u_kirsch_r_c(3), datad=>u_kirsch_M_a(3));
   ix54682z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(2), datab=>nx26352z4, datac
      =>u_kirsch_r_c(2), datad=>u_kirsch_M_a(2));
   ix53685z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(1), datab=>nx26352z4, datac
      =>u_kirsch_r_c(1), datad=>u_kirsch_M_a(1));
   ix52688z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_b_11n3ss1(0), datab=>nx26352z4, datac
      =>u_kirsch_r_c(0), datad=>u_kirsch_M_a(0));
   ix734z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(7), datab=>nx26352z4, datac
      =>u_kirsch_r_d(7), datad=>u_kirsch_M_b(7));
   ix65273z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(6), datab=>nx26352z4, datac
      =>u_kirsch_r_d(6), datad=>u_kirsch_M_b(6));
   ix64276z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(5), datab=>nx26352z4, datac
      =>u_kirsch_r_d(5), datad=>u_kirsch_M_b(5));
   ix63279z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(4), datab=>nx26352z4, datac
      =>u_kirsch_r_d(4), datad=>u_kirsch_M_b(4));
   ix62282z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(3), datab=>nx26352z4, datac
      =>u_kirsch_r_d(3), datad=>u_kirsch_M_b(3));
   ix61285z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(2), datab=>nx26352z4, datac
      =>u_kirsch_r_d(2), datad=>u_kirsch_M_b(2));
   ix60288z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(1), datab=>nx26352z4, datac
      =>u_kirsch_r_d(1), datad=>u_kirsch_M_b(1));
   ix59291z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_i_11n3ss1(0), datab=>nx26352z4, datac
      =>u_kirsch_r_d(0), datad=>u_kirsch_M_b(0));
   ix25991z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(7), datab=>nx26352z4, datac
      =>u_kirsch_r_e(7), datad=>k_i_pixel(7));
   ix24994z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(6), datab=>nx26352z4, datac
      =>u_kirsch_r_e(6), datad=>k_i_pixel(6));
   ix23997z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(5), datab=>nx26352z4, datac
      =>u_kirsch_r_e(5), datad=>k_i_pixel(5));
   ix23000z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(4), datab=>nx26352z4, datac
      =>u_kirsch_r_e(4), datad=>k_i_pixel(4));
   ix22003z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(3), datab=>nx26352z4, datac
      =>u_kirsch_r_e(3), datad=>k_i_pixel(3));
   ix21006z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(2), datab=>nx26352z4, datac
      =>u_kirsch_r_e(2), datad=>k_i_pixel(2));
   ix20009z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(1), datab=>nx26352z4, datac
      =>u_kirsch_r_e(1), datad=>k_i_pixel(1));
   ix19012z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>u_kirsch_r_f_11n3ss1(0), datab=>nx26352z4, datac
      =>u_kirsch_r_e(0), datad=>k_i_pixel(0));
   ix2550z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"30b8") 
       port map ( combout=>nx2550z1, dataa=>nx26352z2, datab=>nx26352z4, 
      datac=>u_kirsch_v(3), datad=>u_kirsch_o_col(0));
   ix25991z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b830") 
       port map ( combout=>nx25991z1, dataa=>nx26352z2, datab=>nx26352z4, 
      datac=>u_kirsch_v(3), datad=>u_kirsch_o_col(0));
   ix26352z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx26352z1, datac=>nx26352z2, datad=>nx26352z4);
   ix25399z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"bfff") 
       port map ( combout=>nx25399z7, dataa=>nx25399z8, datab=>nx25399z6, 
      datac=>seg7_num(0), datad=>seg7_num(1));
   ix25399z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"40c0") 
       port map ( combout=>nx25399z2, dataa=>nx25399z3, datab=>nx25399z4, 
      datac=>nx25399z5, datad=>nx25399z6);
   ix22605z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccfe") 
       port map ( combout=>nx22605z1, dataa=>nx22605z2, datab=>nx22605z3, 
      datac=>u_kirsch_r7_val_10, datad=>u_kirsch_r7_val_13);
   ix32900z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"550b") 
       port map ( combout=>nx32900z1, dataa=>nx46527z6, datab=>u_kirsch_v(2), 
      datac=>u_kirsch_v(1), datad=>nx37156z7);
   ix26352z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx26352z2, dataa=>nx26352z3, datab=>
      u_kirsch_o_col(1), datac=>u_kirsch_o_col(2), datad=>u_kirsch_o_col(3)
   );
   ix37156z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx37156z5, dataa=>nx37156z6, datab=>nx25399z5, 
      datac=>u_kirsch_o_col(0), datad=>u_kirsch_o_col(1));
   ix37156z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx37156z3, dataa=>nx25399z6, datab=>nx37156z4, 
      datac=>seg7_num(4), datad=>seg7_num(5));
   ix46527z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_i1_val(7), datab=>nx46527z4, datac=>
      nx46527z5, datad=>nx46527z3);
   ix10989z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_i1_val(6), datab=>nx10989z1, datac=>
      nx10989z2, datad=>nx46527z3);
   ix26563z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_i1_val(5), datab=>nx26563z1, datac=>
      nx26563z2, datad=>nx46527z3);
   ix60194z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_kirsch_i1_val(4), datab=>nx60194z1, datac=>
      nx60194z2, datad=>nx46527z3);
   ix55304z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i1_val(3), datab=>nx55304z1, datac=>
      nx55304z2, datad=>nx46527z3);
   ix39730z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i1_val(2), datab=>nx39730z1, datac=>
      nx39730z2, datad=>nx46527z3);
   ix24156z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i1_val(1), datab=>nx24156z1, datac=>
      nx24156z2, datad=>nx46527z3);
   ix56954z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i1_val(0), datab=>nx56954z1, datac=>
      nx56954z2, datad=>nx46527z3);
   ix46527z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_kirsch_i2_val(7), datab=>nx46527z1, datac=>
      nx46527z2, datad=>nx46527z3);
   ix10989z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_kirsch_i2_val(6), datab=>nx10989z3, datac=>
      nx10989z4, datad=>nx46527z3);
   ix26563z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_kirsch_i2_val(5), datab=>nx26563z3, datac=>
      nx26563z4, datad=>nx46527z3);
   ix60194z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_kirsch_i2_val(4), datab=>nx60194z3, datac=>
      nx60194z4, datad=>nx46527z3);
   ix55304z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i2_val(3), datab=>nx55304z3, datac=>
      nx55304z4, datad=>nx46527z3);
   ix39730z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i2_val(2), datab=>nx39730z3, datac=>
      nx39730z4, datad=>nx46527z3);
   ix24156z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i2_val(1), datab=>nx24156z3, datac=>
      nx24156z4, datad=>nx46527z3);
   ix56954z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0cc") 
       port map ( combout=>u_kirsch_i2_val(0), datab=>nx56954z3, datac=>
      nx56954z4, datad=>nx46527z3);
   ix39360z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f222") 
       port map ( combout=>b_0, dataa=>u_kirsch_v(2), datab=>u_kirsch_v(1), 
      datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix39360z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fccc") 
       port map ( combout=>b_1, datab=>u_kirsch_v(1), datac=>
      write_fifo_rd_en_delayed, datad=>pb(0));
   ix21267z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx21267z1, dataa=>u_kirsch_M_out_0(0), datab=>
      u_kirsch_M_out_2(0), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix20270z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx20270z1, dataa=>u_kirsch_M_out_0(1), datab=>
      u_kirsch_M_out_2(1), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix19273z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx19273z1, dataa=>u_kirsch_M_out_0(2), datab=>
      u_kirsch_M_out_2(2), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix18276z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx18276z1, dataa=>u_kirsch_M_out_0(3), datab=>
      u_kirsch_M_out_2(3), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix17279z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx17279z1, dataa=>u_kirsch_M_out_0(4), datab=>
      u_kirsch_M_out_2(4), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix16282z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx16282z1, dataa=>u_kirsch_M_out_0(5), datab=>
      u_kirsch_M_out_2(5), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix15285z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx15285z1, dataa=>u_kirsch_M_out_0(6), datab=>
      u_kirsch_M_out_2(6), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix14288z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx14288z1, dataa=>u_kirsch_M_out_0(7), datab=>
      u_kirsch_M_out_2(7), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix29686z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx29686z1, dataa=>u_kirsch_M_out_0(0), datab=>
      u_kirsch_M_out_1(0), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix28689z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx28689z1, dataa=>u_kirsch_M_out_0(1), datab=>
      u_kirsch_M_out_1(1), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix27692z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx27692z1, dataa=>u_kirsch_M_out_0(2), datab=>
      u_kirsch_M_out_1(2), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix26695z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx26695z1, dataa=>u_kirsch_M_out_0(3), datab=>
      u_kirsch_M_out_1(3), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix25698z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx25698z1, dataa=>u_kirsch_M_out_0(4), datab=>
      u_kirsch_M_out_1(4), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix24701z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx24701z1, dataa=>u_kirsch_M_out_0(5), datab=>
      u_kirsch_M_out_1(5), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix23704z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx23704z1, dataa=>u_kirsch_M_out_0(6), datab=>
      u_kirsch_M_out_1(6), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix22707z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx22707z1, dataa=>u_kirsch_M_out_0(7), datab=>
      u_kirsch_M_out_1(7), datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix18625z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx18625z1, datab=>nx18625z2, datac=>nx18625z3, 
      datad=>seg7_en_EXMPLR189(1));
   ix28027z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx28027z1, datab=>nx28027z2, datac=>nx28027z3, 
      datad=>seg7_en_EXMPLR189(1));
   ix51544z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z1, datab=>nx51544z2, datac=>nx51544z3, 
      datad=>seg7_en_EXMPLR189(1));
   ix60415z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff80") 
       port map ( combout=>nx60415z1, dataa=>nx60415z2, datab=>nx60415z3, 
      datac=>nx60415z4, datad=>nx60415z5);
   ix23166z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ce00") 
       port map ( combout=>nx23166z1, dataa=>nx24163z2, datab=>nx22605z3, 
      datac=>u_kirsch_r7_val_13, datad=>u_kirsch_r7_ty(0));
   ix24163z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ce00") 
       port map ( combout=>nx24163z1, dataa=>nx24163z2, datab=>nx22605z3, 
      datac=>u_kirsch_r7_val_13, datad=>u_kirsch_r7_ty(1));
   ix25160z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx25160z1, datac=>u_kirsch_r7_ty(2), datad=>
      nx22605z1);
   ix40325z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cfcc") 
       port map ( combout=>nx40325z1, datab=>u_uart_RxFSM(5), datac=>
      rx_valid, datad=>k_o_data_6);
   ix17862z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f303") 
       port map ( combout=>nx17862z1, datab=>nx17862z2, datac=>nx17862z4, 
      datad=>nx62197z1);
   ix64502z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"abaa") 
       port map ( combout=>nx64502z1, dataa=>nx64502z2, datab=>nx11963z1, 
      datac=>wait_for_tx_valid_delayed, datad=>rb_rd_en);
   ix37156z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"04aa") 
       port map ( combout=>nx37156z1, dataa=>nx37156z2, datab=>nx37156z3, 
      datac=>nx37156z5, datad=>nx37156z7);
   ix38153z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fbf3") 
       port map ( combout=>nx38153z1, dataa=>write_fifo_rd_en_delayed, datab
      =>nx25399z9, datac=>seg7_pts(1), datad=>pb(0));
   ix7359z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx7359z1, dataa=>nx7359z2, datab=>nx7359z3, datac
      =>u_uart_TxFSM(0), datad=>u_uart_TxFSM(1));
   ix48848z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"df02") 
       port map ( combout=>nx48848z1, dataa=>nx48848z2, datab=>nx37156z3, 
      datac=>u_kirsch_wr_en(2), datad=>nx22500z1);
   ix47851z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d0f2") 
       port map ( combout=>nx47851z1, dataa=>nx48848z2, datab=>nx37156z3, 
      datac=>u_kirsch_wr_en(1), datad=>nx22500z1);
   ix46854z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2d0") 
       port map ( combout=>nx46854z1, dataa=>nx48848z2, datab=>nx37156z3, 
      datac=>u_kirsch_wr_en(2), datad=>u_kirsch_wr_en(1));
   ix58151z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx58151z1, datac=>rx_valid, datad=>reset_n);
   ix58143z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx58143z1, datac=>nx7605z1, datad=>reset_n);
   ix18416z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ecff") 
       port map ( combout=>nx18416z1, dataa=>nx18416z2, datab=>nx7605z1, 
      datac=>rx_valid, datad=>reset_n);
   ix23864z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caff") 
       port map ( combout=>nx23864z1, dataa=>write_fifo_rd_en_delayed, datab
      =>k_o_valid, datac=>pb(0), datad=>reset_n);
   ix24859z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"10ff") 
       port map ( combout=>nx24859z1, dataa=>nx11963z1, datab=>
      wait_for_tx_valid_delayed, datac=>rb_rd_en, datad=>reset_n);
   ix20415z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fbbb") 
       port map ( combout=>nx20415z1, dataa=>nx20415z2, datab=>reset_n, 
      datac=>nx15004z2, datad=>rb_rd_en_true);
   ix38412z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0ff") 
       port map ( combout=>nx38412z1, datab=>write_fifo_rd_en_delayed, datac
      =>pb(0), datad=>reset_n);
   ix25399z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b0ff") 
       port map ( combout=>nx25399z1, dataa=>nx25399z2, datab=>nx25399z7, 
      datac=>nx37156z7, datad=>reset_n);
   ix59437z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3c00") 
       port map ( combout=>nx59437z2, datab=>u_uart_TxFSM(0), datac=>
      u_uart_TxFSM(1), datad=>u_uart_TopTx);
   ix59437z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3f0f") 
       port map ( combout=>nx59437z1, datab=>u_uart_TxFSM(1), datac=>
      u_uart_TxBitCnt(0), datad=>u_uart_TopTx);
   ix60434z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"82c3") 
       port map ( combout=>nx60434z1, dataa=>u_uart_TxFSM(1), datab=>
      u_uart_TxBitCnt(0), datac=>u_uart_TxBitCnt(1), datad=>u_uart_TopTx);
   ix61431z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5401") 
       port map ( combout=>nx61431z1, dataa=>nx61431z2, datab=>
      u_uart_TxBitCnt(0), datac=>u_uart_TxBitCnt(1), datad=>
      u_uart_TxBitCnt(2));
   ix62428z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"feab") 
       port map ( combout=>nx62428z1, dataa=>nx61431z2, datab=>nx62428z2, 
      datac=>u_uart_TxBitCnt(2), datad=>u_uart_TxBitCnt(3));
   ix62428z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx62428z2, datac=>u_uart_TxBitCnt(0), datad=>
      u_uart_TxBitCnt(1));
   ix64683z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f303") 
       port map ( combout=>nx64683z3, datab=>nx64683z2, datac=>
      u_uart_RxFSM(3), datad=>u_uart_TopRx);
   ix64683z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f0") 
       port map ( combout=>nx64683z1, datac=>nx64683z2, datad=>
      u_uart_RxBitCnt(0));
   ix144z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cc0") 
       port map ( combout=>nx144z1, datab=>nx64683z2, datac=>
      u_uart_RxBitCnt(0), datad=>u_uart_RxBitCnt(1));
   ix1141z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2a80") 
       port map ( combout=>nx1141z1, dataa=>nx64683z2, datab=>
      u_uart_RxBitCnt(0), datac=>u_uart_RxBitCnt(1), datad=>
      u_uart_RxBitCnt(2));
   ix2138z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4c80") 
       port map ( combout=>nx2138z1, dataa=>nx2138z2, datab=>nx64683z2, 
      datac=>u_uart_RxBitCnt(2), datad=>u_uart_RxBitCnt(3));
   ix2138z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx2138z2, datac=>u_uart_RxBitCnt(0), datad=>
      u_uart_RxBitCnt(1));
   ix37156z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx37156z4, datac=>seg7_num(0), datad=>seg7_num(1)
   );
   ix11963z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx11963z1, datab=>write_fifo_rd_en_delayed, datac
      =>k_o_valid, datad=>pb(0));
   ix46527z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0ddd") 
       port map ( combout=>nx46527z3, dataa=>u_kirsch_v(2), datab=>
      u_kirsch_v(1), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix26352z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx26352z3, dataa=>u_kirsch_o_col(4), datab=>
      u_kirsch_o_col(5), datac=>u_kirsch_o_col(6), datad=>u_kirsch_o_col(7)
   );
   ix25399z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25399z6, dataa=>seg7_num(2), datab=>seg7_num(3), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix25399z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25399z5, dataa=>u_kirsch_o_col(4), datab=>
      u_kirsch_o_col(5), datac=>u_kirsch_o_col(6), datad=>u_kirsch_o_col(7)
   );
   ix25399z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25399z4, dataa=>u_kirsch_o_col(0), datab=>
      u_kirsch_o_col(1), datac=>u_kirsch_o_col(2), datad=>u_kirsch_o_col(3)
   );
   ix7359z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1f0e") 
       port map ( combout=>nx7359z3, dataa=>u_uart_TxFSM(0), datab=>
      u_uart_TxFSM(1), datac=>u_uart_TopTx, datad=>nx7359z4);
   ix7359z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffd") 
       port map ( combout=>nx7359z2, dataa=>u_uart_TxBitCnt(0), datab=>
      u_uart_TxBitCnt(1), datac=>u_uart_TxBitCnt(2), datad=>
      u_uart_TxBitCnt(3));
   ix22605z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f8") 
       port map ( combout=>nx22605z3, dataa=>u_kirsch_r7_val_7, datab=>
      u_kirsch_r7_val_8, datac=>u_kirsch_r7_val_9, datad=>u_kirsch_r7_val_13
   );
   ix60415z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f0") 
       port map ( combout=>nx60415z5, datac=>uart_reset, datad=>reset_n);
   ix60415z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx60415z4, dataa=>reset_count(8), datab=>
      reset_count(9), datac=>reset_count(10), datad=>reset_n);
   ix60415z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60415z3, dataa=>reset_count(4), datab=>
      reset_count(5), datac=>reset_count(6), datad=>reset_count(7));
   ix60415z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60415z2, dataa=>reset_count(0), datab=>
      reset_count(1), datac=>reset_count(2), datad=>reset_count(3));
   ix51544z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ef7c") 
       port map ( combout=>nx51544z3, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ef7c") 
       port map ( combout=>nx51544z2, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix28027z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"df71") 
       port map ( combout=>nx28027z3, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix28027z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"df71") 
       port map ( combout=>nx28027z2, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix18625z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"279f") 
       port map ( combout=>nx18625z3, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix18625z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"279f") 
       port map ( combout=>nx18625z2, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix18416z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx18416z4, dataa=>write_fifo_status_cnt(3), datab
      =>write_fifo_status_cnt(4), datac=>write_fifo_status_cnt(5), datad=>
      write_fifo_status_cnt(6));
   ix18416z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx18416z2, dataa=>nx18416z3, datab=>nx18416z4, 
      datac=>write_fifo_status_cnt(1), datad=>write_fifo_status_cnt(2));
   ix15004z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx15004z4, dataa=>read_fifo_status_cnt(3), datab
      =>read_fifo_status_cnt(4), datac=>read_fifo_status_cnt(5), datad=>
      read_fifo_status_cnt(6));
   ix14933z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx14933z3, datab=>nx14933z4, datac=>nx14933z5, 
      datad=>nx14933z6);
   ix14933z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx14933z6, dataa=>u_uart_RxDiv(8), datab=>
      u_uart_RxDiv(9), datac=>u_uart_RxDiv(10), datad=>u_uart_RxDivisor_4);
   ix59343z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx59343z4, dataa=>u_uart_RxDiv(4), datab=>
      u_uart_RxDiv(5), datac=>u_uart_RxDiv(6), datad=>u_uart_RxDiv(7));
   ix14933z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx14933z5, dataa=>u_uart_RxDiv(4), datab=>
      u_uart_RxDiv(5), datac=>u_uart_RxDiv(6), datad=>u_uart_RxDiv(7));
   ix14933z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx14933z2, dataa=>u_uart_RxDiv(0), datab=>
      u_uart_RxDiv(1), datac=>u_uart_RxDiv(2), datad=>u_uart_RxDiv(3));
   ix14933z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx14933z4, dataa=>u_uart_RxDiv(0), datab=>
      u_uart_RxDiv(1), datac=>u_uart_RxDiv(2), datad=>u_uart_RxDiv(3));
   ix7365z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fd45") 
       port map ( combout=>nx7365z2, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix7365z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fd45") 
       port map ( combout=>nx7365z1, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix6368z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7b6d") 
       port map ( combout=>nx6368z2, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix6368z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7b6d") 
       port map ( combout=>nx6368z1, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix5371z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2ffb") 
       port map ( combout=>nx5371z2, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix5371z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2ffb") 
       port map ( combout=>nx5371z1, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix3377z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d7ed") 
       port map ( combout=>nx3377z2, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix3377z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d7ed") 
       port map ( combout=>nx3377z1, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(2), datad=>seg7_num(3));
   ix12790z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a820") 
       port map ( combout=>nx12790z3, dataa=>nx64683z2, datab=>
      u_uart_RxFSM(5), datac=>u_uart_TopRx, datad=>uart_rx);
   ix15004z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx15004z2, dataa=>nx15004z3, datab=>nx15004z4, 
      datac=>read_fifo_status_cnt(7), datad=>read_fifo_status_cnt(8));
   ix26352z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx26352z6, datab=>seg7_num(3), datac=>seg7_num(6), 
      datad=>seg7_num(7));
   ix26352z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx26352z5, dataa=>seg7_num(1), datab=>seg7_num(2), 
      datac=>seg7_num(4), datad=>seg7_num(5));
   ix46527z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx46527z2, datab=>b_1, datac=>u_kirsch_r_e(7), 
      datad=>u_kirsch_r_a(7));
   ix46527z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx46527z1, datab=>b_1, datac=>u_kirsch_r_g(7), 
      datad=>u_kirsch_r_c(7));
   ix46527z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx46527z5, datab=>b_1, datac=>u_kirsch_r_f(7), 
      datad=>u_kirsch_r_b(7));
   ix46527z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx46527z4, datab=>b_1, datac=>u_kirsch_r_h(7), 
      datad=>u_kirsch_r_d(7));
   ix10989z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx10989z4, datab=>b_1, datac=>u_kirsch_r_e(6), 
      datad=>u_kirsch_r_a(6));
   ix10989z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx10989z3, datab=>b_1, datac=>u_kirsch_r_g(6), 
      datad=>u_kirsch_r_c(6));
   ix10989z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx10989z2, datab=>b_1, datac=>u_kirsch_r_f(6), 
      datad=>u_kirsch_r_b(6));
   ix10989z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx10989z1, datab=>b_1, datac=>u_kirsch_r_h(6), 
      datad=>u_kirsch_r_d(6));
   ix26563z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx26563z4, datab=>b_1, datac=>u_kirsch_r_e(5), 
      datad=>u_kirsch_r_a(5));
   ix26563z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx26563z3, datab=>b_1, datac=>u_kirsch_r_g(5), 
      datad=>u_kirsch_r_c(5));
   ix26563z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx26563z2, datab=>b_1, datac=>u_kirsch_r_f(5), 
      datad=>u_kirsch_r_b(5));
   ix26563z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx26563z1, datab=>b_1, datac=>u_kirsch_r_h(5), 
      datad=>u_kirsch_r_d(5));
   ix60194z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx60194z4, datab=>b_1, datac=>u_kirsch_r_e(4), 
      datad=>u_kirsch_r_a(4));
   ix60194z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx60194z3, datab=>b_1, datac=>u_kirsch_r_g(4), 
      datad=>u_kirsch_r_c(4));
   ix60194z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx60194z2, datab=>b_1, datac=>u_kirsch_r_f(4), 
      datad=>u_kirsch_r_b(4));
   ix60194z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx60194z1, datab=>b_1, datac=>u_kirsch_r_h(4), 
      datad=>u_kirsch_r_d(4));
   ix55304z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx55304z4, datab=>b_1, datac=>u_kirsch_r_e(3), 
      datad=>u_kirsch_r_a(3));
   ix55304z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx55304z2, datab=>b_1, datac=>u_kirsch_r_h(3), 
      datad=>u_kirsch_r_d(3));
   ix39730z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx39730z4, datab=>b_1, datac=>u_kirsch_r_e(2), 
      datad=>u_kirsch_r_a(2));
   ix39730z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx39730z2, datab=>b_1, datac=>u_kirsch_r_h(2), 
      datad=>u_kirsch_r_d(2));
   ix24156z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx24156z4, datab=>b_1, datac=>u_kirsch_r_e(1), 
      datad=>u_kirsch_r_a(1));
   ix24156z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx24156z2, datab=>b_1, datac=>u_kirsch_r_h(1), 
      datad=>u_kirsch_r_d(1));
   ix56954z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx56954z4, datab=>b_1, datac=>u_kirsch_r_e(0), 
      datad=>u_kirsch_r_a(0));
   ix56954z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx56954z2, datab=>b_1, datac=>u_kirsch_r_h(0), 
      datad=>u_kirsch_r_d(0));
   ix17862z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"03f3") 
       port map ( combout=>nx17862z2, datab=>u_uart_TxFSM(0), datac=>
      u_uart_TxFSM(1), datad=>nx17862z3);
   ix24163z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx24163z2, datab=>u_kirsch_r7_val_10, datac=>
      u_kirsch_r7_val_11, datad=>u_kirsch_r7_val_12);
   ix12790z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff0f") 
       port map ( combout=>nx12790z2, datac=>u_uart_RxFSM(5), datad=>uart_rx
   );
   ix61431z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx61431z2, datac=>u_uart_TxFSM(1), datad=>
      u_uart_TopTx);
   ix59343z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx59343z2, dataa=>nx59343z3, datab=>nx59343z4, 
      datac=>u_uart_RxDiv(10), datad=>u_uart_RxDivisor_4);
   ix59343z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx59343z3, datac=>u_uart_RxDiv(8), datad=>
      u_uart_RxDiv(9));
   ix15004z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx15004z3, datab=>read_fifo_status_cnt(0), datac
      =>read_fifo_status_cnt(1), datad=>read_fifo_status_cnt(2));
   ix18416z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcff") 
       port map ( combout=>nx18416z3, datab=>write_fifo_status_cnt(0), datac
      =>write_fifo_status_cnt(7), datad=>write_fifo_status_cnt(8));
   ix22605z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx22605z2, datac=>u_kirsch_r7_val_11, datad=>
      u_kirsch_r7_val_12);
   ix64502z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx64502z2, datac=>wait_for_tx_valid, datad=>
      nx7359z4);
   ix37156z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx37156z2, datac=>nx25399z9, datad=>seg7_pts(1));
   ix37156z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx37156z6, datac=>u_kirsch_o_col(2), datad=>
      u_kirsch_o_col(3));
   ix48848z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx48848z2, dataa=>nx25399z4, datab=>nx25399z5, 
      datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix25399z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx25399z8, dataa=>nx25399z9, datab=>seg7_pts(1), 
      datac=>seg7_num(4), datad=>seg7_num(5));
   ix25399z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25399z3, dataa=>seg7_num(0), datab=>seg7_num(1), 
      datac=>seg7_num(4), datad=>seg7_num(5));
   ix7605z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx7605z2, dataa=>write_fifo_status_cnt(0), datab
      =>write_fifo_status_cnt(1), datac=>write_fifo_status_cnt(2), datad=>
      write_fifo_status_cnt(7));
   ix55304z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx55304z3, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_g(3), datad=>u_kirsch_r_c(3));
   ix55304z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx55304z1, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_f(3), datad=>u_kirsch_r_b(3));
   ix39730z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx39730z3, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_g(2), datad=>u_kirsch_r_c(2));
   ix39730z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx39730z1, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_f(2), datad=>u_kirsch_r_b(2));
   ix24156z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx24156z3, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_g(1), datad=>u_kirsch_r_c(1));
   ix24156z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx24156z1, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_f(1), datad=>u_kirsch_r_b(1));
   ix56954z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx56954z3, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_g(0), datad=>u_kirsch_r_c(0));
   ix56954z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx56954z1, dataa=>b_1, datab=>nx46527z3, datac=>
      u_kirsch_r_f(0), datad=>u_kirsch_r_b(0));
   ix57349z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a00c") 
       port map ( combout=>nx57349z4, dataa=>nx57349z5, datab=>nx57349z6, 
      datac=>u_uart_TxDiv(5), datad=>u_uart_TxDiv(7));
   ix57349z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx57349z3, datac=>u_uart_TxDiv(1), datad=>
      u_uart_TxDiv(2));
   ix57349z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx57349z2, dataa=>u_uart_TxDiv(3), datab=>
      u_uart_TxDiv(9), datac=>u_uart_TxDiv(10), datad=>u_uart_TxDiv(11));
   ix57349z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx57349z6, dataa=>u_uart_TxDiv(8), datab=>
      u_uart_TxDiv(4), datac=>u_uart_TxDiv(0), datad=>u_uart_RxDivisor_4);
   ix57349z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx57349z5, dataa=>u_uart_TxDiv(8), datab=>
      u_uart_TxDiv(4), datac=>u_uart_TxDiv(0), datad=>u_uart_RxDivisor_4);
   ix20415z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx20415z2, dataa=>nx20415z3, datab=>nx20415z4, 
      datac=>read_fifo_status_cnt(0), datad=>nx11963z1);
   ix20415z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx20415z3, dataa=>read_fifo_status_cnt(1), datab
      =>read_fifo_status_cnt(2), datac=>read_fifo_status_cnt(3), datad=>
      read_fifo_status_cnt(4));
   ix20415z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx20415z4, dataa=>read_fifo_status_cnt(5), datab
      =>read_fifo_status_cnt(6), datac=>read_fifo_status_cnt(7), datad=>
      read_fifo_status_cnt(8));
   reg_tx_busy_delayed : dffeas port map ( q=>tx_busy_delayed, d=>tx_busy, 
      clk=>clk, clrn=>PWR, prn=>PWR);
   reg_rb_rd_en_delayed : dffeas port map ( q=>rb_rd_en_delayed, d=>
      rb_rd_en_true, clk=>clk, clrn=>PWR, prn=>PWR);
   write_fifo_reg_rd_en_delayed : dffeas port map ( q=>
      write_fifo_rd_en_delayed, d=>nx7605z1, clk=>clk, clrn=>PWR, prn=>PWR);
   write_fifo_reg_q_saved_7 : dffeas port map ( q=>write_fifo_q_saved(7), d
      =>write_fifo_q(7), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_6 : dffeas port map ( q=>write_fifo_q_saved(6), d
      =>write_fifo_q(6), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_5 : dffeas port map ( q=>write_fifo_q_saved(5), d
      =>write_fifo_q(5), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_4 : dffeas port map ( q=>write_fifo_q_saved(4), d
      =>write_fifo_q(4), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_3 : dffeas port map ( q=>write_fifo_q_saved(3), d
      =>write_fifo_q(3), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_2 : dffeas port map ( q=>write_fifo_q_saved(2), d
      =>write_fifo_q(2), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_1 : dffeas port map ( q=>write_fifo_q_saved(1), d
      =>write_fifo_q(1), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_0 : dffeas port map ( q=>write_fifo_q_saved(0), d
      =>write_fifo_q(0), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   read_fifo_reg_q_saved_7 : dffeas port map ( q=>read_fifo_q_saved(7), d=>
      read_fifo_q(7), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_6 : dffeas port map ( q=>read_fifo_q_saved(6), d=>
      read_fifo_q(6), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_5 : dffeas port map ( q=>read_fifo_q_saved(5), d=>
      read_fifo_q(5), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_4 : dffeas port map ( q=>read_fifo_q_saved(4), d=>
      read_fifo_q(4), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_3 : dffeas port map ( q=>read_fifo_q_saved(3), d=>
      read_fifo_q(3), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_2 : dffeas port map ( q=>read_fifo_q_saved(2), d=>
      read_fifo_q(2), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_1 : dffeas port map ( q=>read_fifo_q_saved(1), d=>
      read_fifo_q(1), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_0 : dffeas port map ( q=>read_fifo_q_saved(0), d=>
      read_fifo_q(0), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_prev_reset : dffeas port map ( q=>
      u_seg7_u_dual_seg7_prev_reset, d=>k_o_data_7, clk=>clk, clrn=>PWR, prn
      =>PWR);
   u_seg7_u_dual_seg7_reg_prev_char0_en : dffeas port map ( q=>
      u_seg7_u_dual_seg7_prev_char0_en, d=>seg7_en_EXMPLR189(0), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_7 : dffeas port map ( q=>seg7_data(7), d=>
      u_seg7_u_dual_seg7_muxed_char_7, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_4 : dffeas port map ( q=>seg7_data(4), d=>
      u_seg7_u_dual_seg7_muxed_char_4, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_3 : dffeas port map ( q=>seg7_data(3), d=>
      u_seg7_u_dual_seg7_muxed_char_3, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_2 : dffeas port map ( q=>seg7_data(2), d=>
      u_seg7_u_dual_seg7_muxed_char_2, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_0 : dffeas port map ( q=>seg7_data(0), d=>
      u_seg7_u_dual_seg7_muxed_char_0, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_uart_reg_Rx_r : dffeas port map ( q=>nx12790z4, d=>NOT_uart_rx, clk=>
      clk, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxDivisor_4 : dffeas port map ( q=>u_uart_RxDivisor_4, d=>PWR, 
      clk=>clk, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_TopRx : dffeas port map ( q=>u_uart_TopRx, d=>nx59343z1, clk=>
      clk, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_TopTx : dffeas port map ( q=>u_uart_TopTx, d=>nx57349z1, clk=>
      clk, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_TxBusy : dffeas port map ( q=>tx_busy, d=>nx13251z1, clk=>clk, 
      clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Tx_Reg_8 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_8, d=>
      NOT_u_uart_Tx_Reg_14n6ss1_8, clk=>clk, ena=>nx18859z1, clrn=>nx4364z1, 
      prn=>PWR);
   u_uart_reg_RxFSM_5 : dffeas port map ( q=>u_uart_RxFSM(5), d=>nx8802z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxFSM_4 : dffeas port map ( q=>u_uart_RxFSM(4), d=>nx9799z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxFSM_3 : dffeas port map ( q=>u_uart_RxFSM(3), d=>nx10796z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxFSM_2 : dffeas port map ( q=>u_uart_RxFSM(2), d=>nx11793z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxFSM_1 : dffeas port map ( q=>u_uart_RxFSM(1), d=>
      u_uart_RxFSM(0), clk=>clk, ena=>nx12790z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxFSM_0 : dffeas port map ( q=>nx64683z2, d=>nx13787z1, clk=>
      clk, ena=>nx12790z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_7 : dffeas port map ( q=>uart_pixel(7), d=>
      u_uart_Rx_Reg(7), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_6 : dffeas port map ( q=>uart_pixel(6), d=>
      u_uart_Rx_Reg(6), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_5 : dffeas port map ( q=>uart_pixel(5), d=>
      u_uart_Rx_Reg(5), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_4 : dffeas port map ( q=>uart_pixel(4), d=>
      u_uart_Rx_Reg(4), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_3 : dffeas port map ( q=>uart_pixel(3), d=>
      u_uart_Rx_Reg(3), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_2 : dffeas port map ( q=>uart_pixel(2), d=>
      u_uart_Rx_Reg(2), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_1 : dffeas port map ( q=>uart_pixel(1), d=>
      u_uart_Rx_Reg(1), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Dout_0 : dffeas port map ( q=>uart_pixel(0), d=>
      u_uart_Rx_Reg(0), clk=>clk, ena=>nx13938z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_7 : dffeas port map ( q=>u_uart_Rx_Reg(7), d=>
      u_uart_Rx_r, clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_6 : dffeas port map ( q=>u_uart_Rx_Reg(6), d=>
      u_uart_Rx_Reg(7), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_5 : dffeas port map ( q=>u_uart_Rx_Reg(5), d=>
      u_uart_Rx_Reg(6), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_4 : dffeas port map ( q=>u_uart_Rx_Reg(4), d=>
      u_uart_Rx_Reg(5), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_3 : dffeas port map ( q=>u_uart_Rx_Reg(3), d=>
      u_uart_Rx_Reg(4), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_2 : dffeas port map ( q=>u_uart_Rx_Reg(2), d=>
      u_uart_Rx_Reg(3), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_1 : dffeas port map ( q=>u_uart_Rx_Reg(1), d=>
      u_uart_Rx_Reg(2), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_Rx_Reg_0 : dffeas port map ( q=>u_uart_Rx_Reg(0), d=>
      u_uart_Rx_Reg(1), clk=>clk, ena=>nx44871z1, clrn=>nx4364z1, prn=>PWR);
   u_uart_reg_RxRDYi : dffeas port map ( q=>rx_valid, d=>nx13938z1, clk=>clk, 
      clrn=>nx4364z1, prn=>PWR);
   u_kirsch_reg_r_e_7 : dffeas port map ( q=>u_kirsch_r_e(7), d=>
      write_fifo_q(7), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_6 : dffeas port map ( q=>u_kirsch_r_e(6), d=>
      write_fifo_q(6), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_5 : dffeas port map ( q=>u_kirsch_r_e(5), d=>
      write_fifo_q(5), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_4 : dffeas port map ( q=>u_kirsch_r_e(4), d=>
      write_fifo_q(4), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_3 : dffeas port map ( q=>u_kirsch_r_e(3), d=>
      write_fifo_q(3), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_2 : dffeas port map ( q=>u_kirsch_r_e(2), d=>
      write_fifo_q(2), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_1 : dffeas port map ( q=>u_kirsch_r_e(1), d=>
      write_fifo_q(1), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_e_0 : dffeas port map ( q=>u_kirsch_r_e(0), d=>
      write_fifo_q(0), clk=>clk, ena=>nx26352z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_f_7 : dffeas port map ( q=>u_kirsch_r_f(7), d=>
      u_kirsch_r_f_11n3ss1(7), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_6 : dffeas port map ( q=>u_kirsch_r_f(6), d=>
      u_kirsch_r_f_11n3ss1(6), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_5 : dffeas port map ( q=>u_kirsch_r_f(5), d=>
      u_kirsch_r_f_11n3ss1(5), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_4 : dffeas port map ( q=>u_kirsch_r_f(4), d=>
      u_kirsch_r_f_11n3ss1(4), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_3 : dffeas port map ( q=>u_kirsch_r_f(3), d=>
      u_kirsch_r_f_11n3ss1(3), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_2 : dffeas port map ( q=>u_kirsch_r_f(2), d=>
      u_kirsch_r_f_11n3ss1(2), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_1 : dffeas port map ( q=>u_kirsch_r_f(1), d=>
      u_kirsch_r_f_11n3ss1(1), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_f_0 : dffeas port map ( q=>u_kirsch_r_f(0), d=>
      u_kirsch_r_f_11n3ss1(0), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_7 : dffeas port map ( q=>u_kirsch_r_i(7), d=>
      u_kirsch_r_i_11n3ss1(7), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_6 : dffeas port map ( q=>u_kirsch_r_i(6), d=>
      u_kirsch_r_i_11n3ss1(6), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_5 : dffeas port map ( q=>u_kirsch_r_i(5), d=>
      u_kirsch_r_i_11n3ss1(5), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_4 : dffeas port map ( q=>u_kirsch_r_i(4), d=>
      u_kirsch_r_i_11n3ss1(4), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_3 : dffeas port map ( q=>u_kirsch_r_i(3), d=>
      u_kirsch_r_i_11n3ss1(3), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_2 : dffeas port map ( q=>u_kirsch_r_i(2), d=>
      u_kirsch_r_i_11n3ss1(2), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_1 : dffeas port map ( q=>u_kirsch_r_i(1), d=>
      u_kirsch_r_i_11n3ss1(1), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_i_0 : dffeas port map ( q=>u_kirsch_r_i(0), d=>
      u_kirsch_r_i_11n3ss1(0), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_7 : dffeas port map ( q=>u_kirsch_r_b(7), d=>
      u_kirsch_r_b_11n3ss1(7), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_6 : dffeas port map ( q=>u_kirsch_r_b(6), d=>
      u_kirsch_r_b_11n3ss1(6), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_5 : dffeas port map ( q=>u_kirsch_r_b(5), d=>
      u_kirsch_r_b_11n3ss1(5), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_4 : dffeas port map ( q=>u_kirsch_r_b(4), d=>
      u_kirsch_r_b_11n3ss1(4), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_3 : dffeas port map ( q=>u_kirsch_r_b(3), d=>
      u_kirsch_r_b_11n3ss1(3), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_2 : dffeas port map ( q=>u_kirsch_r_b(2), d=>
      u_kirsch_r_b_11n3ss1(2), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_1 : dffeas port map ( q=>u_kirsch_r_b(1), d=>
      u_kirsch_r_b_11n3ss1(1), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_b_0 : dffeas port map ( q=>u_kirsch_r_b(0), d=>
      u_kirsch_r_b_11n3ss1(0), clk=>clk, ena=>nx25991z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_7 : dffeas port map ( q=>u_kirsch_r_g(7), d=>
      u_kirsch_r_g_11n3ss1(7), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_6 : dffeas port map ( q=>u_kirsch_r_g(6), d=>
      u_kirsch_r_g_11n3ss1(6), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_5 : dffeas port map ( q=>u_kirsch_r_g(5), d=>
      u_kirsch_r_g_11n3ss1(5), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_4 : dffeas port map ( q=>u_kirsch_r_g(4), d=>
      u_kirsch_r_g_11n3ss1(4), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_3 : dffeas port map ( q=>u_kirsch_r_g(3), d=>
      u_kirsch_r_g_11n3ss1(3), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_2 : dffeas port map ( q=>u_kirsch_r_g(2), d=>
      u_kirsch_r_g_11n3ss1(2), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_1 : dffeas port map ( q=>u_kirsch_r_g(1), d=>
      u_kirsch_r_g_11n3ss1(1), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_g_0 : dffeas port map ( q=>u_kirsch_r_g(0), d=>
      u_kirsch_r_g_11n3ss1(0), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_7 : dffeas port map ( q=>u_kirsch_r_h(7), d=>
      u_kirsch_r_h_11n3ss1(7), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_6 : dffeas port map ( q=>u_kirsch_r_h(6), d=>
      u_kirsch_r_h_11n3ss1(6), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_5 : dffeas port map ( q=>u_kirsch_r_h(5), d=>
      u_kirsch_r_h_11n3ss1(5), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_4 : dffeas port map ( q=>u_kirsch_r_h(4), d=>
      u_kirsch_r_h_11n3ss1(4), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_3 : dffeas port map ( q=>u_kirsch_r_h(3), d=>
      u_kirsch_r_h_11n3ss1(3), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_2 : dffeas port map ( q=>u_kirsch_r_h(2), d=>
      u_kirsch_r_h_11n3ss1(2), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_1 : dffeas port map ( q=>u_kirsch_r_h(1), d=>
      u_kirsch_r_h_11n3ss1(1), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_h_0 : dffeas port map ( q=>u_kirsch_r_h(0), d=>
      u_kirsch_r_h_11n3ss1(0), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_7 : dffeas port map ( q=>u_kirsch_r_a(7), d=>
      u_kirsch_r_a_11n3ss1(7), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_6 : dffeas port map ( q=>u_kirsch_r_a(6), d=>
      u_kirsch_r_a_11n3ss1(6), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_5 : dffeas port map ( q=>u_kirsch_r_a(5), d=>
      u_kirsch_r_a_11n3ss1(5), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_4 : dffeas port map ( q=>u_kirsch_r_a(4), d=>
      u_kirsch_r_a_11n3ss1(4), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_3 : dffeas port map ( q=>u_kirsch_r_a(3), d=>
      u_kirsch_r_a_11n3ss1(3), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_2 : dffeas port map ( q=>u_kirsch_r_a(2), d=>
      u_kirsch_r_a_11n3ss1(2), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_1 : dffeas port map ( q=>u_kirsch_r_a(1), d=>
      u_kirsch_r_a_11n3ss1(1), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_a_0 : dffeas port map ( q=>u_kirsch_r_a(0), d=>
      u_kirsch_r_a_11n3ss1(0), clk=>clk, ena=>nx2550z1, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r1_ty_2 : dffeas port map ( q=>u_kirsch_r1_ty(2), d=>
      nx46527z6, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r1_ty_0 : dffeas port map ( q=>u_kirsch_r1_ty(0), d=>
      nx32900z1, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_8 : dffeas port map ( q=>u_kirsch_r2(8), d=>
      u_kirsch_r2_14n0r1(8), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_7 : dffeas port map ( q=>u_kirsch_r2(7), d=>
      u_kirsch_r2_14n0r1(7), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_6 : dffeas port map ( q=>u_kirsch_r2(6), d=>
      u_kirsch_r2_14n0r1(6), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_5 : dffeas port map ( q=>u_kirsch_r2(5), d=>
      u_kirsch_r2_14n0r1(5), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_4 : dffeas port map ( q=>u_kirsch_r2(4), d=>
      u_kirsch_r2_14n0r1(4), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_3 : dffeas port map ( q=>u_kirsch_r2(3), d=>
      u_kirsch_r2_14n0r1(3), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_2 : dffeas port map ( q=>u_kirsch_r2(2), d=>
      u_kirsch_r2_14n0r1(2), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_1 : dffeas port map ( q=>u_kirsch_r2(1), d=>
      u_kirsch_r2_14n0r1(1), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r2_0 : dffeas port map ( q=>u_kirsch_r2(0), d=>
      u_kirsch_r2_14n0r1(0), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_9 : dffeas port map ( q=>u_kirsch_r4_val(9), d=>
      u_kirsch_r4_16n0r1(9), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_8 : dffeas port map ( q=>u_kirsch_r4_val(8), d=>
      u_kirsch_r4_16n0r1(8), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_7 : dffeas port map ( q=>u_kirsch_r4_val(7), d=>
      u_kirsch_r4_16n0r1(7), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_6 : dffeas port map ( q=>u_kirsch_r4_val(6), d=>
      u_kirsch_r4_16n0r1(6), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_5 : dffeas port map ( q=>u_kirsch_r4_val(5), d=>
      u_kirsch_r4_16n0r1(5), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_4 : dffeas port map ( q=>u_kirsch_r4_val(4), d=>
      u_kirsch_r4_16n0r1(4), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_3 : dffeas port map ( q=>u_kirsch_r4_val(3), d=>
      u_kirsch_r4_16n0r1(3), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_2 : dffeas port map ( q=>u_kirsch_r4_val(2), d=>
      u_kirsch_r4_16n0r1(2), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_1 : dffeas port map ( q=>u_kirsch_r4_val(1), d=>
      u_kirsch_r4_16n0r1(1), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_val_0 : dffeas port map ( q=>u_kirsch_r4_val(0), d=>
      u_kirsch_r4_16n0r1(0), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_ty_2 : dffeas port map ( q=>u_kirsch_r4_ty(2), d=>
      u_kirsch_r1_ty(2), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_ty_1 : dffeas port map ( q=>u_kirsch_r4_ty(1), d=>
      u_kirsch_r1_ty(1), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r4_ty_0 : dffeas port map ( q=>u_kirsch_r4_ty(0), d=>
      u_kirsch_r1_ty(0), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_9 : dffeas port map ( q=>u_kirsch_r5_val(9), d=>
      u_kirsch_r4_val(9), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_8 : dffeas port map ( q=>u_kirsch_r5_val(8), d=>
      u_kirsch_r4_val(8), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_7 : dffeas port map ( q=>u_kirsch_r5_val(7), d=>
      u_kirsch_r4_val(7), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_6 : dffeas port map ( q=>u_kirsch_r5_val(6), d=>
      u_kirsch_r4_val(6), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_5 : dffeas port map ( q=>u_kirsch_r5_val(5), d=>
      u_kirsch_r4_val(5), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_4 : dffeas port map ( q=>u_kirsch_r5_val(4), d=>
      u_kirsch_r4_val(4), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_3 : dffeas port map ( q=>u_kirsch_r5_val(3), d=>
      u_kirsch_r4_val(3), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_2 : dffeas port map ( q=>u_kirsch_r5_val(2), d=>
      u_kirsch_r4_val(2), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_1 : dffeas port map ( q=>u_kirsch_r5_val(1), d=>
      u_kirsch_r4_val(1), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_val_0 : dffeas port map ( q=>u_kirsch_r5_val(0), d=>
      u_kirsch_r4_val(0), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_ty_2 : dffeas port map ( q=>u_kirsch_r5_ty(2), d=>
      u_kirsch_r4_ty(2), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_ty_1 : dffeas port map ( q=>u_kirsch_r5_ty(1), d=>
      u_kirsch_r4_ty(1), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r5_ty_0 : dffeas port map ( q=>u_kirsch_r5_ty(0), d=>
      u_kirsch_r4_ty(0), clk=>clk, ena=>nx3238z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_12 : dffeas port map ( q=>u_kirsch_r6(12), d=>
      u_kirsch_r6_18n0r1(12), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_11 : dffeas port map ( q=>u_kirsch_r6(11), d=>
      u_kirsch_r6_18n0r1(11), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_10 : dffeas port map ( q=>u_kirsch_r6(10), d=>
      u_kirsch_r6_18n0r1(10), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_9 : dffeas port map ( q=>u_kirsch_r6(9), d=>
      u_kirsch_r6_18n0r1(9), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_8 : dffeas port map ( q=>u_kirsch_r6(8), d=>
      u_kirsch_r6_18n0r1(8), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_7 : dffeas port map ( q=>u_kirsch_r6(7), d=>
      u_kirsch_r6_18n0r1(7), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_6 : dffeas port map ( q=>u_kirsch_r6(6), d=>
      u_kirsch_r6_18n0r1(6), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_5 : dffeas port map ( q=>u_kirsch_r6(5), d=>
      u_kirsch_r6_18n0r1(5), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_4 : dffeas port map ( q=>u_kirsch_r6(4), d=>
      u_kirsch_r6_18n0r1(4), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_3 : dffeas port map ( q=>u_kirsch_r6(3), d=>
      u_kirsch_r6_18n0r1(3), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_2 : dffeas port map ( q=>u_kirsch_r6(2), d=>
      u_kirsch_r6_18n0r1(2), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_1 : dffeas port map ( q=>u_kirsch_r6(1), d=>
      u_kirsch_r6_18n0r1(1), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r6_0 : dffeas port map ( q=>u_kirsch_r6(0), d=>
      u_kirsch_r3(0), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_13 : dffeas port map ( q=>u_kirsch_r7_val_13, d=>
      u_kirsch_r7_19n0r1_13, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_12 : dffeas port map ( q=>u_kirsch_r7_val_12, d=>
      u_kirsch_r7_19n0r1_12, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_11 : dffeas port map ( q=>u_kirsch_r7_val_11, d=>
      u_kirsch_r7_19n0r1_11, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_10 : dffeas port map ( q=>u_kirsch_r7_val_10, d=>
      u_kirsch_r7_19n0r1_10, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_9 : dffeas port map ( q=>u_kirsch_r7_val_9, d=>
      u_kirsch_r7_19n0r1_9, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_8 : dffeas port map ( q=>u_kirsch_r7_val_8, d=>
      u_kirsch_r7_19n0r1_8, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_val_7 : dffeas port map ( q=>u_kirsch_r7_val_7, d=>
      u_kirsch_r7_19n0r1_7, clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_ty_2 : dffeas port map ( q=>u_kirsch_r7_ty(2), d=>
      u_kirsch_r5_ty(2), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_ty_1 : dffeas port map ( q=>u_kirsch_r7_ty(1), d=>
      u_kirsch_r5_ty(1), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r7_ty_0 : dffeas port map ( q=>u_kirsch_r7_ty(0), d=>
      u_kirsch_r5_ty(0), clk=>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_edge : dffeas port map ( q=>k_o_data_3, d=>nx22605z1, clk
      =>clk, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_valid : dffeas port map ( q=>k_o_valid, d=>u_kirsch_v(7), 
      clk=>clk, clrn=>PWR, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_3 : dffeas port map ( q=>
      u_uart_TxBitCnt(3), d=>nx62428z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_2 : dffeas port map ( q=>
      u_uart_TxBitCnt(2), d=>nx61431z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_1 : dffeas port map ( q=>
      u_uart_TxBitCnt(1), d=>nx60434z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_0 : dffeas port map ( q=>
      u_uart_TxBitCnt(0), d=>nx59437z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_3 : dffeas port map ( q=>
      u_uart_RxBitCnt(3), d=>nx2138z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_2 : dffeas port map ( q=>
      u_uart_RxBitCnt(2), d=>nx1141z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_1 : dffeas port map ( q=>
      u_uart_RxBitCnt(1), d=>nx144z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx4364z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_0 : dffeas port map ( q=>
      u_uart_RxBitCnt(0), d=>nx64683z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx4364z1, prn=>PWR);
   ix8356z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3cf0") 
       port map ( combout=>nx8356z1, datab=>u_uart_TopTx, datac=>
      u_uart_TxFSM(1), datad=>u_uart_TxFSM(0));
   ix49423z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx49423z1, dataa=>u_kirsch_r_f(0), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(0));
   ix49423z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(0), dataa=>nx49423z1, datab=>b_1, 
      datac=>u_kirsch_r_b(0), datad=>u_kirsch_r_a(0));
   ix18275z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx18275z1, dataa=>u_kirsch_r_f(1), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(1));
   ix18275z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(1), dataa=>nx18275z1, datab=>b_1, 
      datac=>u_kirsch_r_b(1), datad=>u_kirsch_r_a(1));
   ix30930z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx30930z1, dataa=>u_kirsch_r_f(2), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(2));
   ix30930z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(2), dataa=>nx30930z1, datab=>b_1, 
      datac=>u_kirsch_r_b(2), datad=>u_kirsch_r_a(2));
   ix3458z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx3458z1, dataa=>u_kirsch_r_f(3), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(3));
   ix3458z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(3), dataa=>nx3458z1, datab=>b_1, 
      datac=>u_kirsch_r_b(3), datad=>u_kirsch_r_a(3));
   ix19789z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx19789z1, dataa=>u_kirsch_r_f(4), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(4));
   ix19789z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(4), dataa=>nx19789z1, datab=>b_1, 
      datac=>u_kirsch_r_b(4), datad=>u_kirsch_r_a(4));
   ix11359z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx11359z1, dataa=>u_kirsch_r_f(5), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(5));
   ix11359z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(5), dataa=>nx11359z1, datab=>b_1, 
      datac=>u_kirsch_r_b(5), datad=>u_kirsch_r_a(5));
   ix42507z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx42507z1, dataa=>u_kirsch_r_f(6), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(6));
   ix42507z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(6), dataa=>nx42507z1, datab=>b_1, 
      datac=>u_kirsch_r_b(6), datad=>u_kirsch_r_a(6));
   ix39360z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx39360z1, dataa=>u_kirsch_r_f(7), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_d(7));
   ix39360z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i3(7), dataa=>nx39360z1, datab=>b_1, 
      datac=>u_kirsch_r_b(7), datad=>u_kirsch_r_a(7));
   ix49423z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx49423z2, dataa=>u_kirsch_r_g(0), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(0));
   ix49423z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(0), dataa=>nx49423z2, datab=>b_1, 
      datac=>u_kirsch_r_c(0), datad=>u_kirsch_r_h(0));
   ix18275z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx18275z2, dataa=>u_kirsch_r_g(1), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(1));
   ix18275z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(1), dataa=>nx18275z2, datab=>b_1, 
      datac=>u_kirsch_r_c(1), datad=>u_kirsch_r_h(1));
   ix30930z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx30930z2, dataa=>u_kirsch_r_g(2), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(2));
   ix30930z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(2), dataa=>nx30930z2, datab=>b_1, 
      datac=>u_kirsch_r_c(2), datad=>u_kirsch_r_h(2));
   ix3458z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx3458z2, dataa=>u_kirsch_r_g(3), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(3));
   ix3458z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(3), dataa=>nx3458z2, datab=>b_1, 
      datac=>u_kirsch_r_c(3), datad=>u_kirsch_r_h(3));
   ix19789z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx19789z2, dataa=>u_kirsch_r_g(4), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(4));
   ix19789z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(4), dataa=>nx19789z2, datab=>b_1, 
      datac=>u_kirsch_r_c(4), datad=>u_kirsch_r_h(4));
   ix11359z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx11359z2, dataa=>u_kirsch_r_g(5), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(5));
   ix11359z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(5), dataa=>nx11359z2, datab=>b_1, 
      datac=>u_kirsch_r_c(5), datad=>u_kirsch_r_h(5));
   ix42507z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx42507z2, dataa=>u_kirsch_r_g(6), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(6));
   ix42507z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(6), dataa=>nx42507z2, datab=>b_1, 
      datac=>u_kirsch_r_c(6), datad=>u_kirsch_r_h(6));
   ix39360z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx39360z2, dataa=>u_kirsch_r_g(7), datab=>b_0, 
      datac=>b_1, datad=>u_kirsch_r_e(7));
   ix39360z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_kirsch_i4(7), dataa=>nx39360z2, datab=>b_1, 
      datac=>u_kirsch_r_c(7), datad=>u_kirsch_r_h(7));
end main ;

