-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/28/2019 13:16:58"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kirsch_top IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	uart_rx : IN std_logic;
	uart_tx : OUT std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0);
	pb : IN std_logic_vector(3 DOWNTO 0);
	seg7_en : OUT std_logic_vector(1 DOWNTO 0);
	seg7_data : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END kirsch_top;

-- Design Ports Information
-- uart_tx	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_en[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_en[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rx	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kirsch_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_uart_rx : std_logic;
SIGNAL ww_uart_tx : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg7_en : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL clk_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL sw_a0_a_ainput_o : std_logic;
SIGNAL sw_a1_a_ainput_o : std_logic;
SIGNAL sw_a2_a_ainput_o : std_logic;
SIGNAL sw_a3_a_ainput_o : std_logic;
SIGNAL sw_a4_a_ainput_o : std_logic;
SIGNAL sw_a5_a_ainput_o : std_logic;
SIGNAL sw_a6_a_ainput_o : std_logic;
SIGNAL sw_a7_a_ainput_o : std_logic;
SIGNAL pb_a1_a_ainput_o : std_logic;
SIGNAL pb_a2_a_ainput_o : std_logic;
SIGNAL pb_a3_a_ainput_o : std_logic;
SIGNAL a_aQUARTUS_CREATED_GND_aI_combout : std_logic;
SIGNAL a_aQUARTUS_CREATED_UNVM_a_abusy : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC1_a_aeoc : std_logic;
SIGNAL seg7_data_a1_a_aoutput_o : std_logic;
SIGNAL seg7_data_a5_a_aoutput_o : std_logic;
SIGNAL seg7_data_a6_a_aoutput_o : std_logic;
SIGNAL led_a0_a_aoutput_o : std_logic;
SIGNAL led_a1_a_aoutput_o : std_logic;
SIGNAL led_a2_a_aoutput_o : std_logic;
SIGNAL led_a3_a_aoutput_o : std_logic;
SIGNAL led_a4_a_aoutput_o : std_logic;
SIGNAL led_a5_a_aoutput_o : std_logic;
SIGNAL led_a6_a_aoutput_o : std_logic;
SIGNAL led_a7_a_aoutput_o : std_logic;
SIGNAL uart_tx_aoutput_o : std_logic;
SIGNAL seg7_en_a0_a_aoutput_o : std_logic;
SIGNAL seg7_en_a1_a_aoutput_o : std_logic;
SIGNAL seg7_data_a0_a_aoutput_o : std_logic;
SIGNAL seg7_data_a2_a_aoutput_o : std_logic;
SIGNAL seg7_data_a3_a_aoutput_o : std_logic;
SIGNAL seg7_data_a4_a_aoutput_o : std_logic;
SIGNAL seg7_data_a7_a_aoutput_o : std_logic;
SIGNAL clk_ainput_o : std_logic;
SIGNAL clk_ainputclkctrl_outclk : std_logic;
SIGNAL inc_d_0_dup_1070 : std_logic;
SIGNAL reset_n_ainput_o : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_reset_a0_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_reset_aq : std_logic;
SIGNAL nx29573z1 : std_logic;
SIGNAL reg_q_0_dup_60_aq : std_logic;
SIGNAL nx57492z2 : std_logic;
SIGNAL inc_d_1_dup_1071 : std_logic;
SIGNAL reg_q_1_dup_59_aq : std_logic;
SIGNAL nx41918z2 : std_logic;
SIGNAL inc_d_2_dup_1072 : std_logic;
SIGNAL reg_q_2_dup_58_aq : std_logic;
SIGNAL nx39192z2 : std_logic;
SIGNAL inc_d_3_dup_1073 : std_logic;
SIGNAL reg_q_3_dup_57_aq : std_logic;
SIGNAL nx54766z2 : std_logic;
SIGNAL inc_d_4_dup_1074 : std_logic;
SIGNAL reg_q_4_dup_56_aq : std_logic;
SIGNAL nx22861z2 : std_logic;
SIGNAL inc_d_5_dup_1075 : std_logic;
SIGNAL reg_q_5_dup_55_aq : std_logic;
SIGNAL nx38435z2 : std_logic;
SIGNAL inc_d_6_dup_1076 : std_logic;
SIGNAL reg_q_6_dup_54_aq : std_logic;
SIGNAL nx11527z2 : std_logic;
SIGNAL inc_d_7_dup_1077 : std_logic;
SIGNAL reg_q_7_dup_53_aq : std_logic;
SIGNAL nx55707z2 : std_logic;
SIGNAL inc_d_8_dup_1078 : std_logic;
SIGNAL reg_q_8_dup_52_aq : std_logic;
SIGNAL nx44217z2 : std_logic;
SIGNAL inc_d_9_dup_1079 : std_logic;
SIGNAL reg_q_9_dup_51_aq : std_logic;
SIGNAL nx10586z1 : std_logic;
SIGNAL inc_d_10_dup_1080 : std_logic;
SIGNAL reg_q_10_dup_50_aq : std_logic;
SIGNAL inc_d_0_dup_1281 : std_logic;
SIGNAL pb_a0_a_ainput_o : std_logic;
SIGNAL inc_d_0_dup_1118 : std_logic;
SIGNAL inc_d_0_a : std_logic;
SIGNAL reg_q_0_aq : std_logic;
SIGNAL nx27063z1 : std_logic;
SIGNAL inc_d_1_a : std_logic;
SIGNAL reg_q_1_aq : std_logic;
SIGNAL nx39256z1 : std_logic;
SIGNAL inc_d_2_a : std_logic;
SIGNAL reg_q_2_aq : std_logic;
SIGNAL nx57428z1 : std_logic;
SIGNAL inc_d_3_a : std_logic;
SIGNAL reg_q_3_aq : std_logic;
SIGNAL nx23040z1 : std_logic;
SIGNAL inc_d_4_a : std_logic;
SIGNAL reg_q_4_aq : std_logic;
SIGNAL nx58827z1 : std_logic;
SIGNAL inc_d_5_a : std_logic;
SIGNAL reg_q_5_aq : std_logic;
SIGNAL nx37857z1 : std_logic;
SIGNAL inc_d_6_a : std_logic;
SIGNAL reg_q_6_aq : std_logic;
SIGNAL nx2950z1 : std_logic;
SIGNAL inc_d_7_a : std_logic;
SIGNAL reg_q_7_aq : std_logic;
SIGNAL nx47012z1 : std_logic;
SIGNAL inc_d_8_a : std_logic;
SIGNAL reg_q_8_aq : std_logic;
SIGNAL nx9072z1 : std_logic;
SIGNAL inc_d_9_a : std_logic;
SIGNAL reg_q_9_aq : std_logic;
SIGNAL nx40977z1 : std_logic;
SIGNAL inc_d_10_a : std_logic;
SIGNAL reg_q_10_aq : std_logic;
SIGNAL nx60415z4 : std_logic;
SIGNAL nx60415z2 : std_logic;
SIGNAL nx60415z3 : std_logic;
SIGNAL nx60415z5 : std_logic;
SIGNAL nx60415z1 : std_logic;
SIGNAL reg_uart_reset_aq : std_logic;
SIGNAL nx14933z2 : std_logic;
SIGNAL nx14933z5 : std_logic;
SIGNAL u_uart_reg_RxDivisor_4_afeeder_combout : std_logic;
SIGNAL u_uart_reg_RxDivisor_4_aq : std_logic;
SIGNAL nx40606z1 : std_logic;
SIGNAL inc_d_10_dup_1138 : std_logic;
SIGNAL reg_q_10_dup_61_aq : std_logic;
SIGNAL nx14933z6 : std_logic;
SIGNAL nx14933z4 : std_logic;
SIGNAL nx14933z3 : std_logic;
SIGNAL nx64683z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_1_a0_combout : std_logic;
SIGNAL uart_rx_ainput_o : std_logic;
SIGNAL u_uart_reg_Rx_r_a0_combout : std_logic;
SIGNAL u_uart_reg_Rx_r_aq : std_logic;
SIGNAL nx8802z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_5_aq : std_logic;
SIGNAL nx12790z2 : std_logic;
SIGNAL nx12790z3 : std_logic;
SIGNAL nx12790z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_1_aq : std_logic;
SIGNAL nx11793z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_2_aq : std_logic;
SIGNAL nx10796z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_3_aq : std_logic;
SIGNAL nx64683z3 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_0_aq : std_logic;
SIGNAL nx144z1 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_1_aq : std_logic;
SIGNAL nx1141z1 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_2_aq : std_logic;
SIGNAL nx2138z2 : std_logic;
SIGNAL nx2138z1 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_3_aq : std_logic;
SIGNAL nx9799z2 : std_logic;
SIGNAL nx9799z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_4_aq : std_logic;
SIGNAL nx13787z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_0_aq : std_logic;
SIGNAL nx14933z1 : std_logic;
SIGNAL reg_q_0_dup_71_aq : std_logic;
SIGNAL nx7080z1 : std_logic;
SIGNAL inc_d_1_dup_1120 : std_logic;
SIGNAL reg_q_1_dup_70_aq : std_logic;
SIGNAL nx24825z1 : std_logic;
SIGNAL inc_d_2_dup_1122 : std_logic;
SIGNAL reg_q_2_dup_69_aq : std_logic;
SIGNAL nx9251z1 : std_logic;
SIGNAL inc_d_3_dup_1124 : std_logic;
SIGNAL reg_q_3_dup_68_aq : std_logic;
SIGNAL nx59213z1 : std_logic;
SIGNAL inc_d_4_dup_1126 : std_logic;
SIGNAL reg_q_4_dup_67_aq : std_logic;
SIGNAL nx43639z1 : std_logic;
SIGNAL inc_d_5_dup_1128 : std_logic;
SIGNAL reg_q_5_dup_66_aq : std_logic;
SIGNAL nx37471z1 : std_logic;
SIGNAL inc_d_6_dup_1130 : std_logic;
SIGNAL reg_q_6_dup_65_aq : std_logic;
SIGNAL nx51531z1 : std_logic;
SIGNAL inc_d_7_dup_1132 : std_logic;
SIGNAL reg_q_7_dup_64_aq : std_logic;
SIGNAL nx63967z1 : std_logic;
SIGNAL inc_d_8_dup_1134 : std_logic;
SIGNAL reg_q_8_dup_63_aq : std_logic;
SIGNAL nx48393z1 : std_logic;
SIGNAL inc_d_9_dup_1136 : std_logic;
SIGNAL reg_q_9_dup_62_aq : std_logic;
SIGNAL nx59343z3 : std_logic;
SIGNAL nx59343z4 : std_logic;
SIGNAL nx59343z2 : std_logic;
SIGNAL nx59343z1 : std_logic;
SIGNAL u_uart_reg_TopRx_aq : std_logic;
SIGNAL nx13938z1 : std_logic;
SIGNAL u_uart_reg_RxRDYi_afeeder_combout : std_logic;
SIGNAL u_uart_reg_RxRDYi_aq : std_logic;
SIGNAL reg_q_0_dup_24_a_wirecell_combout : std_logic;
SIGNAL nx2541z1 : std_logic;
SIGNAL incdec_mux_8_dup_121 : std_logic;
SIGNAL reg_q_8_dup_16_aq : std_logic;
SIGNAL nx18416z3 : std_logic;
SIGNAL nx18416z4 : std_logic;
SIGNAL nx18416z2 : std_logic;
SIGNAL nx18416z1 : std_logic;
SIGNAL reg_q_0_dup_24_aq : std_logic;
SIGNAL nx14325z1 : std_logic;
SIGNAL incdec_mux_1_dup_114 : std_logic;
SIGNAL reg_q_1_dup_23_aq : std_logic;
SIGNAL nx35637z1 : std_logic;
SIGNAL incdec_mux_2_dup_115 : std_logic;
SIGNAL reg_q_2_dup_22_aq : std_logic;
SIGNAL nx20063z1 : std_logic;
SIGNAL incdec_mux_3_dup_116 : std_logic;
SIGNAL reg_q_3_dup_21_aq : std_logic;
SIGNAL nx4489z1 : std_logic;
SIGNAL incdec_mux_4_dup_117 : std_logic;
SIGNAL reg_q_4_dup_20_aq : std_logic;
SIGNAL nx29142z1 : std_logic;
SIGNAL incdec_mux_5_dup_118 : std_logic;
SIGNAL reg_q_5_dup_19_aq : std_logic;
SIGNAL nx44716z1 : std_logic;
SIGNAL incdec_mux_6_dup_119 : std_logic;
SIGNAL reg_q_6_dup_18_aq : std_logic;
SIGNAL nx60290z1 : std_logic;
SIGNAL incdec_mux_7_dup_120 : std_logic;
SIGNAL reg_q_7_dup_17_aq : std_logic;
SIGNAL nx7605z2 : std_logic;
SIGNAL nx7605z1 : std_logic;
SIGNAL write_fifo_reg_rd_en_delayed_afeeder_combout : std_logic;
SIGNAL write_fifo_reg_rd_en_delayed_aq : std_logic;
SIGNAL nx37156z7 : std_logic;
SIGNAL nx40460z1 : std_logic;
SIGNAL inc_d_2_dup_1285 : std_logic;
SIGNAL reg_q_2_dup_96_aq : std_logic;
SIGNAL nx40650z1 : std_logic;
SIGNAL inc_d_3_dup_1287 : std_logic;
SIGNAL reg_q_3_dup_95_aq : std_logic;
SIGNAL nx56224z1 : std_logic;
SIGNAL inc_d_4_dup_1289 : std_logic;
SIGNAL reg_q_4_dup_94_aq : std_logic;
SIGNAL nx24319z1 : std_logic;
SIGNAL inc_d_5_dup_1291 : std_logic;
SIGNAL reg_q_5_dup_93_aq : std_logic;
SIGNAL nx25643z1 : std_logic;
SIGNAL inc_d_6_dup_1293 : std_logic;
SIGNAL reg_q_6_dup_92_aq : std_logic;
SIGNAL nx17856z1 : std_logic;
SIGNAL inc_d_7_dup_1295 : std_logic;
SIGNAL reg_q_7_dup_91_aq : std_logic;
SIGNAL nx25399z6 : std_logic;
SIGNAL nx37156z4 : std_logic;
SIGNAL nx37156z3 : std_logic;
SIGNAL inc_d_0_dup_1243 : std_logic;
SIGNAL nx38412z1 : std_logic;
SIGNAL reg_q_0_dup_90_aq : std_logic;
SIGNAL nx30952z1 : std_logic;
SIGNAL inc_d_1_dup_1245 : std_logic;
SIGNAL reg_q_1_dup_89_aq : std_logic;
SIGNAL nx50158z1 : std_logic;
SIGNAL inc_d_2_dup_1247 : std_logic;
SIGNAL reg_q_2_dup_88_aq : std_logic;
SIGNAL nx196z1 : std_logic;
SIGNAL inc_d_3_dup_1249 : std_logic;
SIGNAL reg_q_3_dup_87_aq : std_logic;
SIGNAL nx37156z6 : std_logic;
SIGNAL nx33827z1 : std_logic;
SIGNAL inc_d_4_dup_1251 : std_logic;
SIGNAL reg_q_4_dup_86_aq : std_logic;
SIGNAL nx16135z1 : std_logic;
SIGNAL inc_d_5_dup_1253 : std_logic;
SIGNAL reg_q_5_dup_85_aq : std_logic;
SIGNAL nx561z1 : std_logic;
SIGNAL inc_d_6_dup_1255 : std_logic;
SIGNAL reg_q_6_dup_84_aq : std_logic;
SIGNAL nx58310z1 : std_logic;
SIGNAL inc_d_7_dup_1257 : std_logic;
SIGNAL reg_q_7_dup_83_aq : std_logic;
SIGNAL nx25399z5 : std_logic;
SIGNAL nx37156z5 : std_logic;
SIGNAL nx37156z2 : std_logic;
SIGNAL nx37156z1 : std_logic;
SIGNAL u_kirsch_reg_o_mode_0_aq : std_logic;
SIGNAL nx38153z1 : std_logic;
SIGNAL u_kirsch_reg_o_mode_1_aq : std_logic;
SIGNAL nx25399z8 : std_logic;
SIGNAL nx25399z7 : std_logic;
SIGNAL nx25399z4 : std_logic;
SIGNAL nx25399z3 : std_logic;
SIGNAL nx25399z2 : std_logic;
SIGNAL nx25399z1 : std_logic;
SIGNAL reg_q_0_dup_98_aq : std_logic;
SIGNAL nx56034z1 : std_logic;
SIGNAL inc_d_1_dup_1283 : std_logic;
SIGNAL reg_q_1_dup_97_aq : std_logic;
SIGNAL nx18625z2 : std_logic;
SIGNAL nx18625z3 : std_logic;
SIGNAL nx18625z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_char0_en_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_load_reg : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq : std_logic;
SIGNAL nx28027z2 : std_logic;
SIGNAL nx28027z3 : std_logic;
SIGNAL nx28027z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq : std_logic;
SIGNAL nx51544z2 : std_logic;
SIGNAL nx51544z3 : std_logic;
SIGNAL nx51544z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq : std_logic;
SIGNAL inc_d_0_dup_1171 : std_logic;
SIGNAL reg_q_0_dup_82_aq : std_logic;
SIGNAL nx7939z1 : std_logic;
SIGNAL inc_d_1_dup_1173 : std_logic;
SIGNAL reg_q_1_dup_81_aq : std_logic;
SIGNAL nx57901z1 : std_logic;
SIGNAL inc_d_2_dup_1175 : std_logic;
SIGNAL reg_q_2_dup_80_aq : std_logic;
SIGNAL nx57349z3 : std_logic;
SIGNAL nx42327z1 : std_logic;
SIGNAL inc_d_3_dup_1177 : std_logic;
SIGNAL reg_q_3_dup_79_aq : std_logic;
SIGNAL nx38783z1 : std_logic;
SIGNAL inc_d_4_dup_1179 : std_logic;
SIGNAL reg_q_4_dup_78_aq : std_logic;
SIGNAL nx6878z1 : std_logic;
SIGNAL inc_d_5_dup_1181 : std_logic;
SIGNAL reg_q_5_dup_77_aq : std_logic;
SIGNAL nx22452z1 : std_logic;
SIGNAL inc_d_6_dup_1183 : std_logic;
SIGNAL reg_q_6_dup_76_aq : std_logic;
SIGNAL nx38026z1 : std_logic;
SIGNAL inc_d_7_dup_1185 : std_logic;
SIGNAL reg_q_7_dup_75_aq : std_logic;
SIGNAL nx11936z1 : std_logic;
SIGNAL inc_d_8_dup_1187 : std_logic;
SIGNAL reg_q_8_dup_74_aq : std_logic;
SIGNAL nx47250z1 : std_logic;
SIGNAL inc_d_9_dup_1189 : std_logic;
SIGNAL reg_q_9_dup_73_aq : std_logic;
SIGNAL nx61898z1 : std_logic;
SIGNAL inc_d_10_dup_1191 : std_logic;
SIGNAL reg_q_10_dup_72_aq : std_logic;
SIGNAL nx54111z1 : std_logic;
SIGNAL inc_d_11_a : std_logic;
SIGNAL reg_q_11_aq : std_logic;
SIGNAL nx57349z2 : std_logic;
SIGNAL nx57349z5 : std_logic;
SIGNAL nx57349z6 : std_logic;
SIGNAL nx57349z4 : std_logic;
SIGNAL nx57349z1 : std_logic;
SIGNAL u_uart_reg_TopTx_aq : std_logic;
SIGNAL nx8356z1 : std_logic;
SIGNAL u_uart_reg_TxFSM_1_aq : std_logic;
SIGNAL nx61431z2 : std_logic;
SIGNAL nx59437z1 : std_logic;
SIGNAL nx59437z2 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_0_aq : std_logic;
SIGNAL nx60434z1 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_1_aq : std_logic;
SIGNAL nx61431z1 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_2_aq : std_logic;
SIGNAL nx62428z2 : std_logic;
SIGNAL nx62428z1 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_3_aq : std_logic;
SIGNAL nx7359z2 : std_logic;
SIGNAL nx26352z5 : std_logic;
SIGNAL nx26352z6 : std_logic;
SIGNAL nx26352z4 : std_logic;
SIGNAL nx26352z3 : std_logic;
SIGNAL nx26352z2 : std_logic;
SIGNAL nx26352z1 : std_logic;
SIGNAL u_kirsch_reg_v_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_v_1_aq : std_logic;
SIGNAL u_kirsch_reg_v_2_aq : std_logic;
SIGNAL u_kirsch_reg_v_3_aq : std_logic;
SIGNAL u_kirsch_reg_v_4_aq : std_logic;
SIGNAL u_kirsch_reg_v_5_aq : std_logic;
SIGNAL u_kirsch_reg_v_6_aq : std_logic;
SIGNAL u_kirsch_reg_v_7_aq : std_logic;
SIGNAL u_kirsch_reg_o_valid_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_o_valid_aq : std_logic;
SIGNAL nx11963z1 : std_logic;
SIGNAL nx64502z2 : std_logic;
SIGNAL nx64502z1 : std_logic;
SIGNAL reg_wait_for_tx_valid_aq : std_logic;
SIGNAL reg_wait_for_tx_valid_delayed_aq : std_logic;
SIGNAL nx40197z1 : std_logic;
SIGNAL reg_q_0_dup_49_a_wirecell_combout : std_logic;
SIGNAL nx24582z1 : std_logic;
SIGNAL incdec_mux_4_dup_117_dup_1041 : std_logic;
SIGNAL reg_q_4_dup_45_aq : std_logic;
SIGNAL nx20415z3 : std_logic;
SIGNAL nx40156z1 : std_logic;
SIGNAL incdec_mux_5_dup_118_dup_1043 : std_logic;
SIGNAL reg_q_5_dup_44_aq : std_logic;
SIGNAL nx55730z1 : std_logic;
SIGNAL incdec_mux_6_dup_119_dup_1045 : std_logic;
SIGNAL reg_q_6_dup_43_aq : std_logic;
SIGNAL nx59768z1 : std_logic;
SIGNAL incdec_mux_7_dup_120_dup_1047 : std_logic;
SIGNAL reg_q_7_dup_42_aq : std_logic;
SIGNAL nx51981z1 : std_logic;
SIGNAL incdec_mux_8_dup_121_dup_1049 : std_logic;
SIGNAL reg_q_8_dup_41_aq : std_logic;
SIGNAL nx20415z4 : std_logic;
SIGNAL nx20415z2 : std_logic;
SIGNAL nx20415z1 : std_logic;
SIGNAL reg_q_0_dup_49_aq : std_logic;
SIGNAL nx40197z2 : std_logic;
SIGNAL incdec_mux_1_dup_114_dup_1035 : std_logic;
SIGNAL reg_q_1_dup_48_aq : std_logic;
SIGNAL nx24623z1 : std_logic;
SIGNAL incdec_mux_2_dup_115_dup_1037 : std_logic;
SIGNAL reg_q_2_dup_47_aq : std_logic;
SIGNAL nx56487z1 : std_logic;
SIGNAL incdec_mux_3_dup_116_dup_1039 : std_logic;
SIGNAL reg_q_3_dup_46_aq : std_logic;
SIGNAL nx15004z4 : std_logic;
SIGNAL nx15004z3 : std_logic;
SIGNAL nx15004z2 : std_logic;
SIGNAL nx13251z1 : std_logic;
SIGNAL u_uart_reg_TxBusy_aq : std_logic;
SIGNAL reg_tx_busy_delayed_afeeder_combout : std_logic;
SIGNAL reg_tx_busy_delayed_aq : std_logic;
SIGNAL nx15004z1 : std_logic;
SIGNAL reg_rb_rd_en_aq : std_logic;
SIGNAL rb_rd_en_true : std_logic;
SIGNAL reg_rb_rd_en_delayed_aq : std_logic;
SIGNAL reg_rb_rd_en_delayed_a_wirecell_combout : std_logic;
SIGNAL reg_tx_valid_aq : std_logic;
SIGNAL nx7359z3 : std_logic;
SIGNAL nx7359z1 : std_logic;
SIGNAL u_uart_reg_TxFSM_0_aq : std_logic;
SIGNAL nx17862z4 : std_logic;
SIGNAL b_1_a : std_logic;
SIGNAL nx48848z2 : std_logic;
SIGNAL nx46854z1 : std_logic;
SIGNAL u_kirsch_reg_wr_en_2_aq : std_logic;
SIGNAL nx48848z1 : std_logic;
SIGNAL u_kirsch_reg_wr_en_0_aq : std_logic;
SIGNAL nx47851z1 : std_logic;
SIGNAL u_kirsch_reg_wr_en_1_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_7_a0_combout : std_logic;
SIGNAL nx44871z1 : std_logic;
SIGNAL u_uart_reg_Rx_Reg_7_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_6_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Rx_Reg_6_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_5_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Rx_Reg_5_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_4_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Rx_Reg_4_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_3_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_2_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_1_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_0_aq : std_logic;
SIGNAL u_uart_reg_Dout_0_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_0_aq : std_logic;
SIGNAL inc_d_0_dup_894 : std_logic;
SIGNAL nx58143z1 : std_logic;
SIGNAL reg_q_0_dup_15_aq : std_logic;
SIGNAL inc_d_0_dup_858 : std_logic;
SIGNAL nx58151z1 : std_logic;
SIGNAL reg_q_0_dup_7_aq : std_logic;
SIGNAL nx48733z1 : std_logic;
SIGNAL inc_d_1_dup_896 : std_logic;
SIGNAL reg_q_1_dup_14_aq : std_logic;
SIGNAL nx17767z1 : std_logic;
SIGNAL inc_d_1_dup_860 : std_logic;
SIGNAL reg_q_1_dup_6_aq : std_logic;
SIGNAL nx33159z1 : std_logic;
SIGNAL inc_d_2_dup_898 : std_logic;
SIGNAL reg_q_2_dup_13_aq : std_logic;
SIGNAL nx33341z1 : std_logic;
SIGNAL inc_d_2_dup_862 : std_logic;
SIGNAL reg_q_2_dup_5_aq : std_logic;
SIGNAL nx48915z1 : std_logic;
SIGNAL inc_d_3_dup_864 : std_logic;
SIGNAL reg_q_3_dup_4_aq : std_logic;
SIGNAL nx472z1 : std_logic;
SIGNAL inc_d_3_dup_900 : std_logic;
SIGNAL reg_q_3_dup_12_aq : std_logic;
SIGNAL nx16046z1 : std_logic;
SIGNAL inc_d_4_dup_902 : std_logic;
SIGNAL reg_q_4_dup_11_aq : std_logic;
SIGNAL nx64489z1 : std_logic;
SIGNAL inc_d_4_dup_866 : std_logic;
SIGNAL reg_q_4_dup_3_aq : std_logic;
SIGNAL nx31620z1 : std_logic;
SIGNAL inc_d_5_dup_904 : std_logic;
SIGNAL reg_q_5_dup_10_aq : std_logic;
SIGNAL nx32952z1 : std_logic;
SIGNAL inc_d_5_dup_868 : std_logic;
SIGNAL reg_q_5_dup_2_aq : std_logic;
SIGNAL nx47194z1 : std_logic;
SIGNAL inc_d_6_dup_906 : std_logic;
SIGNAL reg_q_6_dup_9_aq : std_logic;
SIGNAL nx17378z1 : std_logic;
SIGNAL inc_d_6_dup_870 : std_logic;
SIGNAL reg_q_6_dup_1_aq : std_logic;
SIGNAL nx9591z1 : std_logic;
SIGNAL inc_d_7_dup_872 : std_logic;
SIGNAL reg_q_7_dup_0_aq : std_logic;
SIGNAL nx10555z1 : std_logic;
SIGNAL inc_d_7_dup_908 : std_logic;
SIGNAL reg_q_7_dup_8_aq : std_logic;
SIGNAL u_uart_reg_Dout_1_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_1_aq : std_logic;
SIGNAL u_uart_reg_Dout_2_aq : std_logic;
SIGNAL u_uart_reg_Dout_3_aq : std_logic;
SIGNAL u_uart_reg_Dout_4_aq : std_logic;
SIGNAL u_uart_reg_Dout_5_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_5_aq : std_logic;
SIGNAL u_uart_reg_Dout_6_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_6_aq : std_logic;
SIGNAL u_uart_reg_Dout_7_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_7_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_0_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_1_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_2_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_3_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_4_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_5_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_6_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_7_aq : std_logic;
SIGNAL nx14288z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_7_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_7_aq : std_logic;
SIGNAL nx25991z1 : std_logic;
SIGNAL u_kirsch_reg_r_b_7_aq : std_logic;
SIGNAL nx2550z1 : std_logic;
SIGNAL u_kirsch_reg_r_a_7_aq : std_logic;
SIGNAL b_0_a : std_logic;
SIGNAL nx22707z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_7_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_7_aq : std_logic;
SIGNAL nx39360z1 : std_logic;
SIGNAL u_kirsch_reg_r_g_7_aq : std_logic;
SIGNAL nx39360z2 : std_logic;
SIGNAL u_kirsch_reg_r_i_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_7_aq : std_logic;
SIGNAL nx23704z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_6_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_6_aq : std_logic;
SIGNAL nx15285z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_6_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_6_aq : std_logic;
SIGNAL nx42507z2 : std_logic;
SIGNAL u_kirsch_reg_r_b_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_6_aq : std_logic;
SIGNAL nx42507z1 : std_logic;
SIGNAL nx16282z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_5_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_5_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_f_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_5_aq : std_logic;
SIGNAL nx11359z2 : std_logic;
SIGNAL nx24701z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_5_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_b_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_5_aq : std_logic;
SIGNAL nx11359z1 : std_logic;
SIGNAL nx25698z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_4_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_4_aq : std_logic;
SIGNAL nx19789z1 : std_logic;
SIGNAL nx17279z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_4_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_b_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_4_aq : std_logic;
SIGNAL nx19789z2 : std_logic;
SIGNAL nx18276z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_3_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_3_aq : std_logic;
SIGNAL nx3458z2 : std_logic;
SIGNAL nx26695z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_3_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_b_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_3_aq : std_logic;
SIGNAL nx3458z1 : std_logic;
SIGNAL nx27692z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_e_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_2_aq : std_logic;
SIGNAL nx30930z2 : std_logic;
SIGNAL nx19273z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_b_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_2_aq : std_logic;
SIGNAL nx30930z1 : std_logic;
SIGNAL nx28689z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_1_aq : std_logic;
SIGNAL nx20270z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_1_aq : std_logic;
SIGNAL nx18275z2 : std_logic;
SIGNAL u_kirsch_reg_r_b_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_1_aq : std_logic;
SIGNAL nx18275z1 : std_logic;
SIGNAL nx21267z1 : std_logic;
SIGNAL u_kirsch_reg_r_c_0_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_c_0_aq : std_logic;
SIGNAL nx29686z1 : std_logic;
SIGNAL u_kirsch_reg_r_d_0_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_d_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_i_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_h_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_e_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_f_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_g_0_aq : std_logic;
SIGNAL nx49423z2 : std_logic;
SIGNAL u_kirsch_reg_r_b_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_a_0_aq : std_logic;
SIGNAL nx49423z1 : std_logic;
SIGNAL nx18275z3 : std_logic;
SIGNAL nx30930z3 : std_logic;
SIGNAL nx3458z3 : std_logic;
SIGNAL nx19789z3 : std_logic;
SIGNAL nx11359z3 : std_logic;
SIGNAL nx42507z3 : std_logic;
SIGNAL nx39360z3 : std_logic;
SIGNAL nx63652z1 : std_logic;
SIGNAL u_kirsch_reg_r2_8_aq : std_logic;
SIGNAL nx46527z2 : std_logic;
SIGNAL nx46527z3 : std_logic;
SIGNAL nx46527z1 : std_logic;
SIGNAL nx46527z4 : std_logic;
SIGNAL nx46527z5 : std_logic;
SIGNAL nx10989z4 : std_logic;
SIGNAL nx10989z3 : std_logic;
SIGNAL nx10989z1 : std_logic;
SIGNAL nx10989z2 : std_logic;
SIGNAL nx26563z1 : std_logic;
SIGNAL nx26563z2 : std_logic;
SIGNAL nx26563z4 : std_logic;
SIGNAL nx26563z3 : std_logic;
SIGNAL nx60194z4 : std_logic;
SIGNAL nx60194z3 : std_logic;
SIGNAL nx60194z1 : std_logic;
SIGNAL nx60194z2 : std_logic;
SIGNAL nx55304z3 : std_logic;
SIGNAL nx55304z4 : std_logic;
SIGNAL nx55304z1 : std_logic;
SIGNAL nx55304z2 : std_logic;
SIGNAL nx39730z1 : std_logic;
SIGNAL nx39730z2 : std_logic;
SIGNAL nx39730z4 : std_logic;
SIGNAL nx39730z3 : std_logic;
SIGNAL nx24156z2 : std_logic;
SIGNAL nx24156z1 : std_logic;
SIGNAL nx24156z3 : std_logic;
SIGNAL nx24156z4 : std_logic;
SIGNAL nx56954z1 : std_logic;
SIGNAL nx56954z2 : std_logic;
SIGNAL nx56954z4 : std_logic;
SIGNAL nx56954z3 : std_logic;
SIGNAL nx24156z5 : std_logic;
SIGNAL nx39730z5 : std_logic;
SIGNAL nx55304z5 : std_logic;
SIGNAL nx60194z5 : std_logic;
SIGNAL nx26563z5 : std_logic;
SIGNAL nx10989z5 : std_logic;
SIGNAL nx4585z1 : std_logic;
SIGNAL nx15243z1 : std_logic;
SIGNAL nx46527z6 : std_logic;
SIGNAL u_kirsch_reg_r1_val_7_aq : std_logic;
SIGNAL u_kirsch_reg_r2_7_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_6_aq : std_logic;
SIGNAL u_kirsch_reg_r2_6_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_5_aq : std_logic;
SIGNAL u_kirsch_reg_r2_5_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_4_aq : std_logic;
SIGNAL u_kirsch_reg_r2_4_aq : std_logic;
SIGNAL u_kirsch_reg_r2_3_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_3_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_2_aq : std_logic;
SIGNAL u_kirsch_reg_r2_2_aq : std_logic;
SIGNAL u_kirsch_reg_r2_1_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_1_aq : std_logic;
SIGNAL u_kirsch_reg_r1_val_0_aq : std_logic;
SIGNAL u_kirsch_reg_r2_0_aq : std_logic;
SIGNAL nx33205z1 : std_logic;
SIGNAL nx2057z1 : std_logic;
SIGNAL nx29091z1 : std_logic;
SIGNAL nx52776z1 : std_logic;
SIGNAL nx21628z1 : std_logic;
SIGNAL nx27577z1 : std_logic;
SIGNAL nx58725z1 : std_logic;
SIGNAL nx41199z1 : std_logic;
SIGNAL nx7965z1 : std_logic;
SIGNAL u_kirsch_reg_r4_val_9_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_8_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_8_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_7_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_7_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_6_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_6_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_5_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_5_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_4_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_4_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_3_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_3_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_2_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_2_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_1_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_1_aq : std_logic;
SIGNAL u_kirsch_reg_r4_val_0_aq : std_logic;
SIGNAL u_kirsch_reg_r5_val_0_aq : std_logic;
SIGNAL nx6531z1 : std_logic;
SIGNAL nx56493z1 : std_logic;
SIGNAL nx22862z1 : std_logic;
SIGNAL nx58248z1 : std_logic;
SIGNAL nx8286z1 : std_logic;
SIGNAL nx23860z1 : std_logic;
SIGNAL nx26102z1 : std_logic;
SIGNAL nx58007z1 : std_logic;
SIGNAL nx42433z1 : std_logic;
SIGNAL nx39326z1 : std_logic;
SIGNAL nx3238z1 : std_logic;
SIGNAL u_kirsch_reg_r5_val_9_aq : std_logic;
SIGNAL u_kirsch_reg_r3_0_aq : std_logic;
SIGNAL nx15489z1 : std_logic;
SIGNAL u_kirsch_reg_r3_1_aq : std_logic;
SIGNAL nx31820z1 : std_logic;
SIGNAL u_kirsch_reg_r3_2_aq : std_logic;
SIGNAL nx64864z1 : std_logic;
SIGNAL u_kirsch_reg_r3_3_aq : std_logic;
SIGNAL nx48533z1 : std_logic;
SIGNAL u_kirsch_reg_r3_4_aq : std_logic;
SIGNAL nx51391z1 : std_logic;
SIGNAL u_kirsch_reg_r3_5_aq : std_logic;
SIGNAL nx45293z1 : std_logic;
SIGNAL u_kirsch_reg_r3_6_aq : std_logic;
SIGNAL nx28962z1 : std_logic;
SIGNAL u_kirsch_reg_r3_7_aq : std_logic;
SIGNAL nx5426z1 : std_logic;
SIGNAL u_kirsch_reg_r3_8_aq : std_logic;
SIGNAL nx43779z1 : std_logic;
SIGNAL nx16733z1 : std_logic;
SIGNAL u_kirsch_reg_r3_9_aq : std_logic;
SIGNAL nx9391z1 : std_logic;
SIGNAL nx51853z1 : std_logic;
SIGNAL u_kirsch_reg_r3_10_aq : std_logic;
SIGNAL nx24965z1 : std_logic;
SIGNAL nx50856z1 : std_logic;
SIGNAL u_kirsch_reg_r3_11_aq : std_logic;
SIGNAL nx45160z1 : std_logic;
SIGNAL nx4045z1 : std_logic;
SIGNAL nx35193z1 : std_logic;
SIGNAL nx46674z1 : std_logic;
SIGNAL nx50010z1 : std_logic;
SIGNAL nx15622z1 : std_logic;
SIGNAL nx709z1 : std_logic;
SIGNAL nx30439z1 : std_logic;
SIGNAL nx14108z1 : std_logic;
SIGNAL nx20280z1 : std_logic;
SIGNAL nx63132z1 : std_logic;
SIGNAL u_kirsch_reg_r6_12_aq : std_logic;
SIGNAL u_kirsch_reg_r6_11_aq : std_logic;
SIGNAL u_kirsch_reg_r6_10_aq : std_logic;
SIGNAL u_kirsch_reg_r6_9_aq : std_logic;
SIGNAL u_kirsch_reg_r6_8_aq : std_logic;
SIGNAL u_kirsch_reg_r6_7_aq : std_logic;
SIGNAL u_kirsch_reg_r6_6_aq : std_logic;
SIGNAL u_kirsch_reg_r6_5_aq : std_logic;
SIGNAL u_kirsch_reg_r6_4_aq : std_logic;
SIGNAL u_kirsch_reg_r6_3_aq : std_logic;
SIGNAL u_kirsch_reg_r6_2_aq : std_logic;
SIGNAL u_kirsch_reg_r6_1_aq : std_logic;
SIGNAL u_kirsch_reg_r6_0_aq : std_logic;
SIGNAL nx14412z1 : std_logic;
SIGNAL nx35550z1 : std_logic;
SIGNAL nx19976z1 : std_logic;
SIGNAL nx51881z1 : std_logic;
SIGNAL nx29229z1 : std_logic;
SIGNAL nx60377z1 : std_logic;
SIGNAL nx21490z1 : std_logic;
SIGNAL nx55878z1 : std_logic;
SIGNAL nx40806z1 : std_logic;
SIGNAL nx41061z1 : std_logic;
SIGNAL nx9913z1 : std_logic;
SIGNAL nx48627z1 : std_logic;
SIGNAL u_kirsch_r7_19n0r1_13_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_13_aq : std_logic;
SIGNAL u_kirsch_r7_19n0r1_11_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_11_aq : std_logic;
SIGNAL u_kirsch_r7_19n0r1_12_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_12_aq : std_logic;
SIGNAL u_kirsch_r7_19n0r1_10_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_10_aq : std_logic;
SIGNAL nx24163z2 : std_logic;
SIGNAL u_kirsch_r7_19n0r1_7_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_7_aq : std_logic;
SIGNAL u_kirsch_r7_19n0r1_9_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_9_aq : std_logic;
SIGNAL u_kirsch_r7_19n0r1_8_a : std_logic;
SIGNAL u_kirsch_reg_r7_val_8_aq : std_logic;
SIGNAL nx22605z3 : std_logic;
SIGNAL nx32900z1 : std_logic;
SIGNAL u_kirsch_reg_r1_ty_0_aq : std_logic;
SIGNAL u_kirsch_reg_r4_ty_0_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r4_ty_0_aq : std_logic;
SIGNAL u_kirsch_reg_r5_ty_0_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r5_ty_0_aq : std_logic;
SIGNAL u_kirsch_reg_r7_ty_0_aq : std_logic;
SIGNAL nx23166z1 : std_logic;
SIGNAL u_kirsch_reg_o_dir_0_aq : std_logic;
SIGNAL inc_d_0_dup_995 : std_logic;
SIGNAL nx24859z1 : std_logic;
SIGNAL reg_q_0_dup_40_aq : std_logic;
SIGNAL inc_d_0_dup_959 : std_logic;
SIGNAL nx23864z1 : std_logic;
SIGNAL reg_q_0_dup_32_aq : std_logic;
SIGNAL nx46785z1 : std_logic;
SIGNAL inc_d_1_dup_997 : std_logic;
SIGNAL reg_q_1_dup_39_aq : std_logic;
SIGNAL nx25574z1 : std_logic;
SIGNAL inc_d_1_dup_961 : std_logic;
SIGNAL reg_q_1_dup_31_aq : std_logic;
SIGNAL nx10000z1 : std_logic;
SIGNAL inc_d_2_dup_963 : std_logic;
SIGNAL reg_q_2_dup_30_aq : std_logic;
SIGNAL nx50656z1 : std_logic;
SIGNAL inc_d_2_dup_999 : std_logic;
SIGNAL reg_q_2_dup_38_aq : std_logic;
SIGNAL nx35082z1 : std_logic;
SIGNAL inc_d_3_dup_1001 : std_logic;
SIGNAL reg_q_3_dup_37_aq : std_logic;
SIGNAL nx5574z1 : std_logic;
SIGNAL inc_d_3_dup_965 : std_logic;
SIGNAL reg_q_3_dup_29_aq : std_logic;
SIGNAL nx19508z1 : std_logic;
SIGNAL inc_d_4_dup_1003 : std_logic;
SIGNAL reg_q_4_dup_36_aq : std_logic;
SIGNAL nx21148z1 : std_logic;
SIGNAL inc_d_4_dup_967 : std_logic;
SIGNAL reg_q_4_dup_28_aq : std_logic;
SIGNAL nx61602z1 : std_logic;
SIGNAL inc_d_5_dup_1005 : std_logic;
SIGNAL reg_q_5_dup_35_aq : std_logic;
SIGNAL nx54779z1 : std_logic;
SIGNAL inc_d_5_dup_969 : std_logic;
SIGNAL reg_q_5_dup_27_aq : std_logic;
SIGNAL nx11640z1 : std_logic;
SIGNAL inc_d_6_dup_1007 : std_logic;
SIGNAL reg_q_6_dup_34_aq : std_logic;
SIGNAL nx60719z1 : std_logic;
SIGNAL inc_d_6_dup_971 : std_logic;
SIGNAL reg_q_6_dup_26_aq : std_logic;
SIGNAL nx52932z1 : std_logic;
SIGNAL inc_d_7_dup_973 : std_logic;
SIGNAL reg_q_7_dup_25_aq : std_logic;
SIGNAL nx19427z1 : std_logic;
SIGNAL inc_d_7_dup_1009 : std_logic;
SIGNAL reg_q_7_dup_33_aq : std_logic;
SIGNAL u_kirsch_reg_r1_ty_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r1_ty_1_aq : std_logic;
SIGNAL u_kirsch_reg_r4_ty_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r4_ty_1_aq : std_logic;
SIGNAL u_kirsch_reg_r5_ty_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r5_ty_1_aq : std_logic;
SIGNAL u_kirsch_reg_r7_ty_1_aq : std_logic;
SIGNAL nx24163z1 : std_logic;
SIGNAL u_kirsch_reg_o_dir_1_aq : std_logic;
SIGNAL u_kirsch_reg_r1_ty_2_aq : std_logic;
SIGNAL u_kirsch_reg_r4_ty_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r4_ty_2_aq : std_logic;
SIGNAL u_kirsch_reg_r5_ty_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r5_ty_2_aq : std_logic;
SIGNAL u_kirsch_reg_r7_ty_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r7_ty_2_aq : std_logic;
SIGNAL nx22605z2 : std_logic;
SIGNAL nx22605z1 : std_logic;
SIGNAL nx25160z1 : std_logic;
SIGNAL u_kirsch_reg_o_dir_2_aq : std_logic;
SIGNAL u_kirsch_reg_o_edge_aq : std_logic;
SIGNAL nx40325z1 : std_logic;
SIGNAL u_uart_reg_RxErr_aq : std_logic;
SIGNAL read_fifo_reg_q_saved_0_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_0_aq : std_logic;
SIGNAL NOT_rb_o_data_0_a : std_logic;
SIGNAL read_fifo_reg_q_saved_1_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_1_aq : std_logic;
SIGNAL NOT_rb_o_data_1_a : std_logic;
SIGNAL read_fifo_reg_q_saved_2_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_2_aq : std_logic;
SIGNAL NOT_rb_o_data_2_a : std_logic;
SIGNAL read_fifo_reg_q_saved_3_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_3_aq : std_logic;
SIGNAL NOT_rb_o_data_3_a : std_logic;
SIGNAL read_fifo_reg_q_saved_4_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_4_aq : std_logic;
SIGNAL NOT_rb_o_data_4_a : std_logic;
SIGNAL read_fifo_reg_q_saved_5_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_5_aq : std_logic;
SIGNAL NOT_rb_o_data_5_a : std_logic;
SIGNAL read_fifo_reg_q_saved_6_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_6_aq : std_logic;
SIGNAL NOT_rb_o_data_6_a : std_logic;
SIGNAL read_fifo_reg_q_saved_7_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_7_aq : std_logic;
SIGNAL NOT_u_uart_Tx_Reg_14n6ss1_8_a : std_logic;
SIGNAL nx18859z1 : std_logic;
SIGNAL u_uart_reg_Tx_Reg_8_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_7_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_6_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_5_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_4_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_3_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_2_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_1_aq : std_logic;
SIGNAL nx17862z2 : std_logic;
SIGNAL nx17862z1 : std_logic;
SIGNAL u_uart_reg_Tx_Reg_0_aq : std_logic;
SIGNAL nx3377z1 : std_logic;
SIGNAL nx3377z2 : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_0_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_0_aq : std_logic;
SIGNAL nx5371z1 : std_logic;
SIGNAL nx5371z2 : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_2_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_2_aq : std_logic;
SIGNAL nx6368z1 : std_logic;
SIGNAL nx6368z2 : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_3_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_3_aq : std_logic;
SIGNAL nx7365z1 : std_logic;
SIGNAL nx7365z2 : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_4_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_4_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_7_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_7_aq : std_logic;
SIGNAL u_kirsch_r_i_11n3ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_i2_val : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r3_15n1s1 : std_logic_vector(8 DOWNTO 0);
SIGNAL write_fifo_pointer : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_pointer : std_logic_vector(7 DOWNTO 0);
SIGNAL rb_i_data : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r4_16n0r1 : std_logic_vector(9 DOWNTO 0);
SIGNAL k_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_i1_val : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r6_18n0r1 : std_logic_vector(12 DOWNTO 1);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r2_14n0r1 : std_logic_vector(8 DOWNTO 0);
SIGNAL u_kirsch_i3 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_i4 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_g_11n3ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_M_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_a_11n3ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_M_b : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_h_11n3ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_f_11n3ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_b_11n3ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_reset_n_ainput_o : std_logic;
SIGNAL ALT_INV_reg_uart_reset_aq : std_logic;
SIGNAL ALT_INV_u_uart_reg_Tx_Reg_0_aq : std_logic;
SIGNAL ALT_INV_u_kirsch_reg_wr_en_0_aq : std_logic;
SIGNAL ALT_INV_reg_q_10_dup_50_aq : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_uart_rx <= uart_rx;
uart_tx <= ww_uart_tx;
ww_sw <= sw;
ww_pb <= pb;
seg7_en <= ww_seg7_en;
seg7_data <= ww_seg7_data;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & rb_i_data(7) & rb_i_data(6) & rb_i_data(5) & rb_i_data(4) & rb_i_data(3) & rb_i_data(2) & 
rb_i_data(1) & rb_i_data(0));

read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (read_fifo_pointer(7) & read_fifo_pointer(6) & read_fifo_pointer(5) & read_fifo_pointer(4) & read_fifo_pointer(3) & read_fifo_pointer(2) & read_fifo_pointer(1)
& read_fifo_pointer(0));

read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & u_uart_reg_Dout_7_aq & u_uart_reg_Dout_6_aq & u_uart_reg_Dout_5_aq & u_uart_reg_Dout_4_aq & 
u_uart_reg_Dout_3_aq & u_uart_reg_Dout_2_aq & u_uart_reg_Dout_1_aq & u_uart_reg_Dout_0_aq);

write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (write_fifo_pointer(7) & write_fifo_pointer(6) & write_fifo_pointer(5) & write_fifo_pointer(4) & write_fifo_pointer(3) & write_fifo_pointer(2) & 
write_fifo_pointer(1) & write_fifo_pointer(0));

write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & k_i_pixel(7) & k_i_pixel(6) & k_i_pixel(5) & k_i_pixel(4) & k_i_pixel(3) & k_i_pixel(2) & 
k_i_pixel(1) & k_i_pixel(0));

u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (reg_q_7_dup_83_aq & reg_q_6_dup_84_aq & reg_q_5_dup_85_aq & reg_q_4_dup_86_aq & reg_q_3_dup_87_aq & reg_q_2_dup_88_aq & reg_q_1_dup_89_aq & reg_q_0_dup_90_aq);

u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(0) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(1) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(2) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(3) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(4) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(5) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(6) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(7) <= u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & k_i_pixel(7) & k_i_pixel(6) & k_i_pixel(5) & k_i_pixel(4) & k_i_pixel(3) & k_i_pixel(2) & 
k_i_pixel(1) & k_i_pixel(0));

u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTAADDR_bus <= (reg_q_7_dup_83_aq & reg_q_6_dup_84_aq & reg_q_5_dup_85_aq & reg_q_4_dup_86_aq & reg_q_3_dup_87_aq & reg_q_2_dup_88_aq & reg_q_1_dup_89_aq & reg_q_0_dup_90_aq);

u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(0) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(1) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(2) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(3) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(4) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(5) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(6) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(7) <= u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & k_i_pixel(7) & k_i_pixel(6) & k_i_pixel(5) & k_i_pixel(4) & k_i_pixel(3) & k_i_pixel(2) & 
k_i_pixel(1) & k_i_pixel(0));

u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTAADDR_bus <= (reg_q_7_dup_83_aq & reg_q_6_dup_84_aq & reg_q_5_dup_85_aq & reg_q_4_dup_86_aq & reg_q_3_dup_87_aq & reg_q_2_dup_88_aq & reg_q_1_dup_89_aq & reg_q_0_dup_90_aq);

u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7) <= u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus <= (a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout);

clk_ainputclkctrl_INCLK_bus <= (vcc & vcc & vcc & clk_ainput_o);
ALT_INV_reset_n_ainput_o <= NOT reset_n_ainput_o;
ALT_INV_reg_uart_reset_aq <= NOT reg_uart_reset_aq;
ALT_INV_u_uart_reg_Tx_Reg_0_aq <= NOT u_uart_reg_Tx_Reg_0_aq;
ALT_INV_u_kirsch_reg_wr_en_0_aq <= NOT u_kirsch_reg_wr_en_0_aq;
ALT_INV_reg_q_10_dup_50_aq <= NOT reg_q_10_dup_50_aq;

-- Location: LCCOMB_X11_Y23_N24
a_aQUARTUS_CREATED_GND_aI : fiftyfivenm_lcell_comb
-- Equation(s):
-- a_aQUARTUS_CREATED_GND_aI_combout = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => a_aQUARTUS_CREATED_GND_aI_combout);

-- Location: IOOBUF_X3_Y10_N23
seg7_data_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq,
	devoe => ww_devoe,
	o => seg7_data_a1_a_aoutput_o);

-- Location: IOOBUF_X6_Y10_N30
seg7_data_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq,
	devoe => ww_devoe,
	o => seg7_data_a5_a_aoutput_o);

-- Location: IOOBUF_X3_Y10_N16
seg7_data_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq,
	devoe => ww_devoe,
	o => seg7_data_a6_a_aoutput_o);

-- Location: IOOBUF_X0_Y7_N23
led_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a0_a_aoutput_o);

-- Location: IOOBUF_X0_Y6_N16
led_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a1_a_aoutput_o);

-- Location: IOOBUF_X10_Y17_N2
led_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a2_a_aoutput_o);

-- Location: IOOBUF_X10_Y20_N23
led_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a3_a_aoutput_o);

-- Location: IOOBUF_X10_Y21_N23
led_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a4_a_aoutput_o);

-- Location: IOOBUF_X10_Y22_N23
led_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a5_a_aoutput_o);

-- Location: IOOBUF_X3_Y0_N16
led_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a6_a_aoutput_o);

-- Location: IOOBUF_X6_Y0_N23
led_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a7_a_aoutput_o);

-- Location: IOOBUF_X11_Y25_N16
uart_tx_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_u_uart_reg_Tx_Reg_0_aq,
	devoe => ww_devoe,
	o => uart_tx_aoutput_o);

-- Location: IOOBUF_X15_Y25_N16
seg7_en_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_reg_q_10_dup_50_aq,
	devoe => ww_devoe,
	o => seg7_en_a0_a_aoutput_o);

-- Location: IOOBUF_X13_Y25_N9
seg7_en_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_q_10_dup_50_aq,
	devoe => ww_devoe,
	o => seg7_en_a1_a_aoutput_o);

-- Location: IOOBUF_X13_Y25_N30
seg7_data_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_0_aq,
	devoe => ww_devoe,
	o => seg7_data_a0_a_aoutput_o);

-- Location: IOOBUF_X1_Y10_N9
seg7_data_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_2_aq,
	devoe => ww_devoe,
	o => seg7_data_a2_a_aoutput_o);

-- Location: IOOBUF_X31_Y22_N23
seg7_data_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_3_aq,
	devoe => ww_devoe,
	o => seg7_data_a3_a_aoutput_o);

-- Location: IOOBUF_X15_Y25_N23
seg7_data_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_4_aq,
	devoe => ww_devoe,
	o => seg7_data_a4_a_aoutput_o);

-- Location: IOOBUF_X11_Y25_N2
seg7_data_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_7_aq,
	devoe => ww_devoe,
	o => seg7_data_a7_a_aoutput_o);

-- Location: IOIBUF_X0_Y6_N22
clk_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => clk_ainput_o);

-- Location: CLKCTRL_G4
clk_ainputclkctrl : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_ainputclkctrl_outclk);

-- Location: LCCOMB_X16_Y16_N6
ix1051_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1070 = reg_q_0_dup_60_aq $ (VCC)
-- nx57492z2 = CARRY(reg_q_0_dup_60_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_60_aq,
	datad => VCC,
	combout => inc_d_0_dup_1070,
	cout => nx57492z2);

-- Location: IOIBUF_X0_Y2_N15
reset_n_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => reset_n_ainput_o);

-- Location: LCCOMB_X16_Y16_N2
u_seg7_u_dual_seg7_reg_prev_reset_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_prev_reset_a0_combout = !reset_n_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reset_n_ainput_o,
	combout => u_seg7_u_dual_seg7_reg_prev_reset_a0_combout);

-- Location: FF_X16_Y16_N3
u_seg7_u_dual_seg7_reg_prev_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_prev_reset_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_prev_reset_aq);

-- Location: LCCOMB_X16_Y16_N0
ix29573z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29573z1 = (!reset_n_ainput_o & !u_seg7_u_dual_seg7_reg_prev_reset_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datad => u_seg7_u_dual_seg7_reg_prev_reset_aq,
	combout => nx29573z1);

-- Location: FF_X16_Y16_N7
reg_q_0_dup_60 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_1070,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_60_aq);

-- Location: LCCOMB_X16_Y16_N8
ix1053_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1071 = (reg_q_1_dup_59_aq & (!nx57492z2)) # (!reg_q_1_dup_59_aq & ((nx57492z2) # (GND)))
-- nx41918z2 = CARRY((!nx57492z2) # (!reg_q_1_dup_59_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_59_aq,
	datad => VCC,
	cin => nx57492z2,
	combout => inc_d_1_dup_1071,
	cout => nx41918z2);

-- Location: FF_X16_Y16_N9
reg_q_1_dup_59 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_1071,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_59_aq);

-- Location: LCCOMB_X16_Y16_N10
ix1055_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1072 = (reg_q_2_dup_58_aq & (nx41918z2 $ (GND))) # (!reg_q_2_dup_58_aq & (!nx41918z2 & VCC))
-- nx39192z2 = CARRY((reg_q_2_dup_58_aq & !nx41918z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_58_aq,
	datad => VCC,
	cin => nx41918z2,
	combout => inc_d_2_dup_1072,
	cout => nx39192z2);

-- Location: FF_X16_Y16_N11
reg_q_2_dup_58 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1072,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_58_aq);

-- Location: LCCOMB_X16_Y16_N12
ix1057_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1073 = (reg_q_3_dup_57_aq & (!nx39192z2)) # (!reg_q_3_dup_57_aq & ((nx39192z2) # (GND)))
-- nx54766z2 = CARRY((!nx39192z2) # (!reg_q_3_dup_57_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_57_aq,
	datad => VCC,
	cin => nx39192z2,
	combout => inc_d_3_dup_1073,
	cout => nx54766z2);

-- Location: FF_X16_Y16_N13
reg_q_3_dup_57 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1073,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_57_aq);

-- Location: LCCOMB_X16_Y16_N14
ix1059_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1074 = (reg_q_4_dup_56_aq & (nx54766z2 $ (GND))) # (!reg_q_4_dup_56_aq & (!nx54766z2 & VCC))
-- nx22861z2 = CARRY((reg_q_4_dup_56_aq & !nx54766z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_56_aq,
	datad => VCC,
	cin => nx54766z2,
	combout => inc_d_4_dup_1074,
	cout => nx22861z2);

-- Location: FF_X16_Y16_N15
reg_q_4_dup_56 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1074,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_56_aq);

-- Location: LCCOMB_X16_Y16_N16
ix1061_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1075 = (reg_q_5_dup_55_aq & (!nx22861z2)) # (!reg_q_5_dup_55_aq & ((nx22861z2) # (GND)))
-- nx38435z2 = CARRY((!nx22861z2) # (!reg_q_5_dup_55_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_55_aq,
	datad => VCC,
	cin => nx22861z2,
	combout => inc_d_5_dup_1075,
	cout => nx38435z2);

-- Location: FF_X16_Y16_N17
reg_q_5_dup_55 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1075,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_55_aq);

-- Location: LCCOMB_X16_Y16_N18
ix1063_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1076 = (reg_q_6_dup_54_aq & (nx38435z2 $ (GND))) # (!reg_q_6_dup_54_aq & (!nx38435z2 & VCC))
-- nx11527z2 = CARRY((reg_q_6_dup_54_aq & !nx38435z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_54_aq,
	datad => VCC,
	cin => nx38435z2,
	combout => inc_d_6_dup_1076,
	cout => nx11527z2);

-- Location: FF_X16_Y16_N19
reg_q_6_dup_54 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1076,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_54_aq);

-- Location: LCCOMB_X16_Y16_N20
ix1065_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1077 = (reg_q_7_dup_53_aq & (!nx11527z2)) # (!reg_q_7_dup_53_aq & ((nx11527z2) # (GND)))
-- nx55707z2 = CARRY((!nx11527z2) # (!reg_q_7_dup_53_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_53_aq,
	datad => VCC,
	cin => nx11527z2,
	combout => inc_d_7_dup_1077,
	cout => nx55707z2);

-- Location: FF_X16_Y16_N21
reg_q_7_dup_53 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1077,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_53_aq);

-- Location: LCCOMB_X16_Y16_N22
ix55_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_1078 = (reg_q_8_dup_52_aq & (nx55707z2 $ (GND))) # (!reg_q_8_dup_52_aq & (!nx55707z2 & VCC))
-- nx44217z2 = CARRY((reg_q_8_dup_52_aq & !nx55707z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_8_dup_52_aq,
	datad => VCC,
	cin => nx55707z2,
	combout => inc_d_8_dup_1078,
	cout => nx44217z2);

-- Location: FF_X16_Y16_N23
reg_q_8_dup_52 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_1078,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_52_aq);

-- Location: LCCOMB_X16_Y16_N24
ix59_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_1079 = (reg_q_9_dup_51_aq & (!nx44217z2)) # (!reg_q_9_dup_51_aq & ((nx44217z2) # (GND)))
-- nx10586z1 = CARRY((!nx44217z2) # (!reg_q_9_dup_51_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_dup_51_aq,
	datad => VCC,
	cin => nx44217z2,
	combout => inc_d_9_dup_1079,
	cout => nx10586z1);

-- Location: FF_X16_Y16_N25
reg_q_9_dup_51 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_1079,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_51_aq);

-- Location: LCCOMB_X16_Y16_N26
ix61_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_1080 = reg_q_10_dup_50_aq $ (!nx10586z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_dup_50_aq,
	cin => nx10586z1,
	combout => inc_d_10_dup_1080);

-- Location: FF_X16_Y16_N27
reg_q_10_dup_50 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_1080,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_50_aq);

-- Location: LCCOMB_X17_Y13_N4
ix1260_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1281 = reg_q_0_dup_98_aq $ (VCC)
-- nx56034z1 = CARRY(reg_q_0_dup_98_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_98_aq,
	datad => VCC,
	combout => inc_d_0_dup_1281,
	cout => nx56034z1);

-- Location: IOIBUF_X9_Y0_N1
pb_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => pb_a0_a_ainput_o);

-- Location: LCCOMB_X22_Y16_N4
ix1086_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1118 = reg_q_0_dup_71_aq $ (VCC)
-- nx7080z1 = CARRY(reg_q_0_dup_71_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_71_aq,
	datad => VCC,
	combout => inc_d_0_dup_1118,
	cout => nx7080z1);

-- Location: LCCOMB_X18_Y14_N0
ix2_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_a = reg_q_0_aq $ (VCC)
-- nx27063z1 = CARRY(reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_aq,
	datad => VCC,
	combout => inc_d_0_a,
	cout => nx27063z1);

-- Location: FF_X18_Y14_N1
reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_aq);

-- Location: LCCOMB_X18_Y14_N2
ix6_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_a = (reg_q_1_aq & (!nx27063z1)) # (!reg_q_1_aq & ((nx27063z1) # (GND)))
-- nx39256z1 = CARRY((!nx27063z1) # (!reg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_aq,
	datad => VCC,
	cin => nx27063z1,
	combout => inc_d_1_a,
	cout => nx39256z1);

-- Location: FF_X18_Y14_N3
reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_aq);

-- Location: LCCOMB_X18_Y14_N4
ix10_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_a = (reg_q_2_aq & (nx39256z1 $ (GND))) # (!reg_q_2_aq & (!nx39256z1 & VCC))
-- nx57428z1 = CARRY((reg_q_2_aq & !nx39256z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_aq,
	datad => VCC,
	cin => nx39256z1,
	combout => inc_d_2_a,
	cout => nx57428z1);

-- Location: FF_X18_Y14_N5
reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_aq);

-- Location: LCCOMB_X18_Y14_N6
ix14_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_a = (reg_q_3_aq & (!nx57428z1)) # (!reg_q_3_aq & ((nx57428z1) # (GND)))
-- nx23040z1 = CARRY((!nx57428z1) # (!reg_q_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_aq,
	datad => VCC,
	cin => nx57428z1,
	combout => inc_d_3_a,
	cout => nx23040z1);

-- Location: FF_X18_Y14_N7
reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_aq);

-- Location: LCCOMB_X18_Y14_N8
ix18_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_a = (reg_q_4_aq & (nx23040z1 $ (GND))) # (!reg_q_4_aq & (!nx23040z1 & VCC))
-- nx58827z1 = CARRY((reg_q_4_aq & !nx23040z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_aq,
	datad => VCC,
	cin => nx23040z1,
	combout => inc_d_4_a,
	cout => nx58827z1);

-- Location: FF_X18_Y14_N9
reg_q_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_aq);

-- Location: LCCOMB_X18_Y14_N10
ix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_a = (reg_q_5_aq & (!nx58827z1)) # (!reg_q_5_aq & ((nx58827z1) # (GND)))
-- nx37857z1 = CARRY((!nx58827z1) # (!reg_q_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_aq,
	datad => VCC,
	cin => nx58827z1,
	combout => inc_d_5_a,
	cout => nx37857z1);

-- Location: FF_X18_Y14_N11
reg_q_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_aq);

-- Location: LCCOMB_X18_Y14_N12
ix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_a = (reg_q_6_aq & (nx37857z1 $ (GND))) # (!reg_q_6_aq & (!nx37857z1 & VCC))
-- nx2950z1 = CARRY((reg_q_6_aq & !nx37857z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_aq,
	datad => VCC,
	cin => nx37857z1,
	combout => inc_d_6_a,
	cout => nx2950z1);

-- Location: FF_X18_Y14_N13
reg_q_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_aq);

-- Location: LCCOMB_X18_Y14_N14
ix834_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_a = (reg_q_7_aq & (!nx2950z1)) # (!reg_q_7_aq & ((nx2950z1) # (GND)))
-- nx47012z1 = CARRY((!nx2950z1) # (!reg_q_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_aq,
	datad => VCC,
	cin => nx2950z1,
	combout => inc_d_7_a,
	cout => nx47012z1);

-- Location: FF_X18_Y14_N15
reg_q_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_aq);

-- Location: LCCOMB_X18_Y14_N16
ix836_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_a = (reg_q_8_aq & (nx47012z1 $ (GND))) # (!reg_q_8_aq & (!nx47012z1 & VCC))
-- nx9072z1 = CARRY((reg_q_8_aq & !nx47012z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_aq,
	datad => VCC,
	cin => nx47012z1,
	combout => inc_d_8_a,
	cout => nx9072z1);

-- Location: FF_X18_Y14_N17
reg_q_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_aq);

-- Location: LCCOMB_X18_Y14_N18
ix49_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_a = (reg_q_9_aq & (!nx9072z1)) # (!reg_q_9_aq & ((nx9072z1) # (GND)))
-- nx40977z1 = CARRY((!nx9072z1) # (!reg_q_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_aq,
	datad => VCC,
	cin => nx9072z1,
	combout => inc_d_9_a,
	cout => nx40977z1);

-- Location: FF_X18_Y14_N19
reg_q_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_aq);

-- Location: LCCOMB_X18_Y14_N20
ix51_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_a = nx40977z1 $ (!reg_q_10_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_10_aq,
	cin => nx40977z1,
	combout => inc_d_10_a);

-- Location: FF_X18_Y14_N21
reg_q_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_aq);

-- Location: LCCOMB_X18_Y14_N26
ix60415z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z4 = (!reset_n_ainput_o & (reg_q_8_aq & (reg_q_10_aq & reg_q_9_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => reg_q_8_aq,
	datac => reg_q_10_aq,
	datad => reg_q_9_aq,
	combout => nx60415z4);

-- Location: LCCOMB_X18_Y14_N30
ix60415z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z2 = (reg_q_0_aq & (reg_q_1_aq & (reg_q_2_aq & reg_q_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_aq,
	datab => reg_q_1_aq,
	datac => reg_q_2_aq,
	datad => reg_q_3_aq,
	combout => nx60415z2);

-- Location: LCCOMB_X18_Y14_N24
ix60415z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z3 = (reg_q_5_aq & (reg_q_4_aq & (reg_q_7_aq & reg_q_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_aq,
	datab => reg_q_4_aq,
	datac => reg_q_7_aq,
	datad => reg_q_6_aq,
	combout => nx60415z3);

-- Location: LCCOMB_X23_Y15_N0
ix60415z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z5 = (!reset_n_ainput_o & reg_uart_reset_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_n_ainput_o,
	datad => reg_uart_reset_aq,
	combout => nx60415z5);

-- Location: LCCOMB_X22_Y16_N0
ix60415z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z1 = (nx60415z5) # ((nx60415z4 & (nx60415z2 & nx60415z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60415z4,
	datab => nx60415z2,
	datac => nx60415z3,
	datad => nx60415z5,
	combout => nx60415z1);

-- Location: FF_X22_Y16_N1
reg_uart_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_uart_reset_aq);

-- Location: LCCOMB_X19_Y14_N24
ix14933z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14933z2 = (!reg_q_1_dup_70_aq & (reg_q_3_dup_68_aq & (!reg_q_0_dup_71_aq & !reg_q_2_dup_69_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_70_aq,
	datab => reg_q_3_dup_68_aq,
	datac => reg_q_0_dup_71_aq,
	datad => reg_q_2_dup_69_aq,
	combout => nx14933z2);

-- Location: LCCOMB_X19_Y14_N28
ix14933z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14933z5 = (!reg_q_7_dup_64_aq & (!reg_q_5_dup_66_aq & (!reg_q_4_dup_67_aq & !reg_q_6_dup_65_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_64_aq,
	datab => reg_q_5_dup_66_aq,
	datac => reg_q_4_dup_67_aq,
	datad => reg_q_6_dup_65_aq,
	combout => nx14933z5);

-- Location: LCCOMB_X19_Y14_N6
u_uart_reg_RxDivisor_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_RxDivisor_4_afeeder_combout = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => u_uart_reg_RxDivisor_4_afeeder_combout);

-- Location: FF_X19_Y14_N7
u_uart_reg_RxDivisor_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_RxDivisor_4_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxDivisor_4_aq);

-- Location: LCCOMB_X22_Y16_N22
ix1104_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_1136 = (reg_q_9_dup_62_aq & (!nx48393z1)) # (!reg_q_9_dup_62_aq & ((nx48393z1) # (GND)))
-- nx40606z1 = CARRY((!nx48393z1) # (!reg_q_9_dup_62_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_9_dup_62_aq,
	datad => VCC,
	cin => nx48393z1,
	combout => inc_d_9_dup_1136,
	cout => nx40606z1);

-- Location: LCCOMB_X22_Y16_N24
ix1105_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_1138 = nx40606z1 $ (!reg_q_10_dup_61_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_10_dup_61_aq,
	cin => nx40606z1,
	combout => inc_d_10_dup_1138);

-- Location: FF_X22_Y16_N25
reg_q_10_dup_61 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_1138,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_61_aq);

-- Location: LCCOMB_X19_Y14_N22
ix14933z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14933z6 = (!u_uart_reg_RxDivisor_4_aq & (!reg_q_9_dup_62_aq & (!reg_q_10_dup_61_aq & !reg_q_8_dup_63_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxDivisor_4_aq,
	datab => reg_q_9_dup_62_aq,
	datac => reg_q_10_dup_61_aq,
	datad => reg_q_8_dup_63_aq,
	combout => nx14933z6);

-- Location: LCCOMB_X19_Y14_N18
ix14933z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14933z4 = (!reg_q_1_dup_70_aq & (!reg_q_2_dup_69_aq & (!reg_q_0_dup_71_aq & !reg_q_3_dup_68_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_70_aq,
	datab => reg_q_2_dup_69_aq,
	datac => reg_q_0_dup_71_aq,
	datad => reg_q_3_dup_68_aq,
	combout => nx14933z4);

-- Location: LCCOMB_X19_Y14_N8
ix14933z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14933z3 = (nx14933z5 & (nx14933z6 & nx14933z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx14933z5,
	datac => nx14933z6,
	datad => nx14933z4,
	combout => nx14933z3);

-- Location: LCCOMB_X18_Y15_N26
ix64683z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64683z1 = (u_uart_reg_RxFSM_0_aq & !u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx64683z1);

-- Location: LCCOMB_X20_Y16_N10
u_uart_reg_RxFSM_1_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_RxFSM_1_a0_combout = !u_uart_reg_RxFSM_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uart_reg_RxFSM_0_aq,
	combout => u_uart_reg_RxFSM_1_a0_combout);

-- Location: IOIBUF_X11_Y25_N22
uart_rx_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rx,
	o => uart_rx_ainput_o);

-- Location: LCCOMB_X20_Y16_N8
u_uart_reg_Rx_r_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_r_a0_combout = !uart_rx_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => uart_rx_ainput_o,
	combout => u_uart_reg_Rx_r_a0_combout);

-- Location: FF_X20_Y16_N9
u_uart_reg_Rx_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_r_a0_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_r_aq);

-- Location: LCCOMB_X20_Y16_N24
ix8802z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8802z1 = (u_uart_reg_Rx_r_aq & ((u_uart_reg_RxFSM_4_aq))) # (!u_uart_reg_Rx_r_aq & (u_uart_reg_RxFSM_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_1_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_4_aq,
	combout => nx8802z1);

-- Location: FF_X20_Y16_N25
u_uart_reg_RxFSM_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx8802z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_5_aq);

-- Location: LCCOMB_X20_Y16_N12
ix12790z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12790z2 = (uart_rx_ainput_o) # (!u_uart_reg_RxFSM_5_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uart_rx_ainput_o,
	datad => u_uart_reg_RxFSM_5_aq,
	combout => nx12790z2);

-- Location: LCCOMB_X20_Y16_N22
ix12790z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12790z3 = (u_uart_reg_RxFSM_0_aq & ((u_uart_reg_RxFSM_5_aq & ((uart_rx_ainput_o))) # (!u_uart_reg_RxFSM_5_aq & (u_uart_reg_TopRx_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TopRx_aq,
	datab => u_uart_reg_RxFSM_5_aq,
	datac => u_uart_reg_RxFSM_0_aq,
	datad => uart_rx_ainput_o,
	combout => nx12790z3);

-- Location: LCCOMB_X20_Y16_N16
ix12790z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12790z1 = (nx12790z3) # ((nx12790z2 & (u_uart_reg_Rx_r_aq & !u_uart_reg_RxFSM_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx12790z2,
	datab => u_uart_reg_Rx_r_aq,
	datac => u_uart_reg_RxFSM_0_aq,
	datad => nx12790z3,
	combout => nx12790z1);

-- Location: FF_X20_Y16_N11
u_uart_reg_RxFSM_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_RxFSM_1_a0_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_1_aq);

-- Location: LCCOMB_X20_Y16_N6
ix11793z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11793z1 = (u_uart_reg_RxFSM_3_aq) # ((u_uart_reg_RxFSM_1_aq & u_uart_reg_Rx_r_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_1_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_3_aq,
	combout => nx11793z1);

-- Location: FF_X20_Y16_N7
u_uart_reg_RxFSM_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx11793z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_2_aq);

-- Location: LCCOMB_X20_Y16_N28
ix10796z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10796z1 = (!nx9799z2 & u_uart_reg_RxFSM_2_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx9799z2,
	datad => u_uart_reg_RxFSM_2_aq,
	combout => nx10796z1);

-- Location: FF_X20_Y16_N29
u_uart_reg_RxFSM_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx10796z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_3_aq);

-- Location: LCCOMB_X20_Y16_N4
ix64683z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64683z3 = (u_uart_reg_RxFSM_3_aq & (u_uart_reg_TopRx_aq)) # (!u_uart_reg_RxFSM_3_aq & ((!u_uart_reg_RxFSM_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TopRx_aq,
	datab => u_uart_reg_RxFSM_3_aq,
	datac => u_uart_reg_RxFSM_0_aq,
	combout => nx64683z3);

-- Location: FF_X18_Y15_N27
u_uart_modgen_counter_RxBitCnt_reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64683z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq);

-- Location: LCCOMB_X18_Y15_N12
ix144z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx144z1 = (u_uart_reg_RxFSM_0_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_1_aq $ (u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx144z1);

-- Location: FF_X18_Y15_N13
u_uart_modgen_counter_RxBitCnt_reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx144z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq);

-- Location: LCCOMB_X18_Y15_N6
ix1141z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1141z1 = (u_uart_reg_RxFSM_0_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_2_aq $ (((u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & u_uart_modgen_counter_RxBitCnt_reg_q_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datab => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	combout => nx1141z1);

-- Location: FF_X18_Y15_N7
u_uart_modgen_counter_RxBitCnt_reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx1141z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq);

-- Location: LCCOMB_X18_Y15_N24
ix2138z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2138z2 = (u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & u_uart_modgen_counter_RxBitCnt_reg_q_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	combout => nx2138z2);

-- Location: LCCOMB_X18_Y15_N10
ix2138z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2138z1 = (u_uart_reg_RxFSM_0_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_3_aq $ (((nx2138z2 & u_uart_modgen_counter_RxBitCnt_reg_q_2_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datab => nx2138z2,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_3_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	combout => nx2138z1);

-- Location: FF_X18_Y15_N11
u_uart_modgen_counter_RxBitCnt_reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx2138z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_3_aq);

-- Location: LCCOMB_X18_Y15_N0
ix9799z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9799z2 = (!u_uart_modgen_counter_RxBitCnt_reg_q_1_aq & (!u_uart_modgen_counter_RxBitCnt_reg_q_2_aq & (!u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & u_uart_modgen_counter_RxBitCnt_reg_q_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datab => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_3_aq,
	combout => nx9799z2);

-- Location: LCCOMB_X20_Y16_N2
ix9799z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9799z1 = (nx9799z2 & u_uart_reg_RxFSM_2_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx9799z2,
	datad => u_uart_reg_RxFSM_2_aq,
	combout => nx9799z1);

-- Location: FF_X20_Y16_N3
u_uart_reg_RxFSM_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx9799z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_4_aq);

-- Location: LCCOMB_X20_Y16_N26
ix13787z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13787z1 = (!u_uart_reg_RxFSM_5_aq & ((u_uart_reg_Rx_r_aq) # (!u_uart_reg_RxFSM_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxFSM_4_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_5_aq,
	combout => nx13787z1);

-- Location: FF_X20_Y16_N27
u_uart_reg_RxFSM_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13787z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_0_aq);

-- Location: LCCOMB_X19_Y14_N4
ix14933z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14933z1 = (nx14933z3) # (((nx59343z2 & nx14933z2)) # (!u_uart_reg_RxFSM_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59343z2,
	datab => nx14933z2,
	datac => nx14933z3,
	datad => u_uart_reg_RxFSM_0_aq,
	combout => nx14933z1);

-- Location: FF_X22_Y16_N5
reg_q_0_dup_71 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_1118,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_71_aq);

-- Location: LCCOMB_X22_Y16_N6
ix1088_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1120 = (reg_q_1_dup_70_aq & (!nx7080z1)) # (!reg_q_1_dup_70_aq & ((nx7080z1) # (GND)))
-- nx24825z1 = CARRY((!nx7080z1) # (!reg_q_1_dup_70_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_70_aq,
	datad => VCC,
	cin => nx7080z1,
	combout => inc_d_1_dup_1120,
	cout => nx24825z1);

-- Location: FF_X22_Y16_N7
reg_q_1_dup_70 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_1120,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_70_aq);

-- Location: LCCOMB_X22_Y16_N8
ix1090_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1122 = (reg_q_2_dup_69_aq & (nx24825z1 $ (GND))) # (!reg_q_2_dup_69_aq & (!nx24825z1 & VCC))
-- nx9251z1 = CARRY((reg_q_2_dup_69_aq & !nx24825z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_69_aq,
	datad => VCC,
	cin => nx24825z1,
	combout => inc_d_2_dup_1122,
	cout => nx9251z1);

-- Location: FF_X22_Y16_N9
reg_q_2_dup_69 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1122,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_69_aq);

-- Location: LCCOMB_X22_Y16_N10
ix1092_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1124 = (reg_q_3_dup_68_aq & (!nx9251z1)) # (!reg_q_3_dup_68_aq & ((nx9251z1) # (GND)))
-- nx59213z1 = CARRY((!nx9251z1) # (!reg_q_3_dup_68_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_68_aq,
	datad => VCC,
	cin => nx9251z1,
	combout => inc_d_3_dup_1124,
	cout => nx59213z1);

-- Location: FF_X22_Y16_N11
reg_q_3_dup_68 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1124,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_68_aq);

-- Location: LCCOMB_X22_Y16_N12
ix1094_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1126 = (reg_q_4_dup_67_aq & (nx59213z1 $ (GND))) # (!reg_q_4_dup_67_aq & (!nx59213z1 & VCC))
-- nx43639z1 = CARRY((reg_q_4_dup_67_aq & !nx59213z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_67_aq,
	datad => VCC,
	cin => nx59213z1,
	combout => inc_d_4_dup_1126,
	cout => nx43639z1);

-- Location: FF_X22_Y16_N13
reg_q_4_dup_67 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1126,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_67_aq);

-- Location: LCCOMB_X22_Y16_N14
ix1096_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1128 = (reg_q_5_dup_66_aq & (!nx43639z1)) # (!reg_q_5_dup_66_aq & ((nx43639z1) # (GND)))
-- nx37471z1 = CARRY((!nx43639z1) # (!reg_q_5_dup_66_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_66_aq,
	datad => VCC,
	cin => nx43639z1,
	combout => inc_d_5_dup_1128,
	cout => nx37471z1);

-- Location: FF_X22_Y16_N15
reg_q_5_dup_66 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1128,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_66_aq);

-- Location: LCCOMB_X22_Y16_N16
ix1098_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1130 = (reg_q_6_dup_65_aq & (nx37471z1 $ (GND))) # (!reg_q_6_dup_65_aq & (!nx37471z1 & VCC))
-- nx51531z1 = CARRY((reg_q_6_dup_65_aq & !nx37471z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_65_aq,
	datad => VCC,
	cin => nx37471z1,
	combout => inc_d_6_dup_1130,
	cout => nx51531z1);

-- Location: FF_X22_Y16_N17
reg_q_6_dup_65 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1130,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_65_aq);

-- Location: LCCOMB_X22_Y16_N18
ix1100_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1132 = (reg_q_7_dup_64_aq & (!nx51531z1)) # (!reg_q_7_dup_64_aq & ((nx51531z1) # (GND)))
-- nx63967z1 = CARRY((!nx51531z1) # (!reg_q_7_dup_64_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_64_aq,
	datad => VCC,
	cin => nx51531z1,
	combout => inc_d_7_dup_1132,
	cout => nx63967z1);

-- Location: FF_X22_Y16_N19
reg_q_7_dup_64 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1132,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_64_aq);

-- Location: LCCOMB_X22_Y16_N20
ix1102_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_1134 = (reg_q_8_dup_63_aq & (nx63967z1 $ (GND))) # (!reg_q_8_dup_63_aq & (!nx63967z1 & VCC))
-- nx48393z1 = CARRY((reg_q_8_dup_63_aq & !nx63967z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_63_aq,
	datad => VCC,
	cin => nx63967z1,
	combout => inc_d_8_dup_1134,
	cout => nx48393z1);

-- Location: FF_X22_Y16_N21
reg_q_8_dup_63 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_1134,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_63_aq);

-- Location: FF_X22_Y16_N23
reg_q_9_dup_62 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_1136,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx14933z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_62_aq);

-- Location: LCCOMB_X19_Y14_N26
ix59343z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z3 = (!reg_q_9_dup_62_aq & !reg_q_8_dup_63_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_dup_62_aq,
	datad => reg_q_8_dup_63_aq,
	combout => nx59343z3);

-- Location: LCCOMB_X19_Y14_N12
ix59343z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z4 = (reg_q_7_dup_64_aq & (!reg_q_5_dup_66_aq & (reg_q_4_dup_67_aq & reg_q_6_dup_65_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_64_aq,
	datab => reg_q_5_dup_66_aq,
	datac => reg_q_4_dup_67_aq,
	datad => reg_q_6_dup_65_aq,
	combout => nx59343z4);

-- Location: LCCOMB_X19_Y14_N30
ix59343z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z2 = (nx59343z3 & (u_uart_reg_RxDivisor_4_aq & (!reg_q_10_dup_61_aq & nx59343z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59343z3,
	datab => u_uart_reg_RxDivisor_4_aq,
	datac => reg_q_10_dup_61_aq,
	datad => nx59343z4,
	combout => nx59343z2);

-- Location: LCCOMB_X19_Y14_N10
ix59343z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z1 = (u_uart_reg_RxFSM_0_aq & ((nx14933z3) # ((nx59343z2 & nx14933z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59343z2,
	datab => nx14933z2,
	datac => nx14933z3,
	datad => u_uart_reg_RxFSM_0_aq,
	combout => nx59343z1);

-- Location: FF_X19_Y14_N11
u_uart_reg_TopRx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59343z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TopRx_aq);

-- Location: LCCOMB_X20_Y16_N0
ix13938z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13938z1 = (u_uart_reg_TopRx_aq & (u_uart_reg_RxFSM_4_aq & !u_uart_reg_Rx_r_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TopRx_aq,
	datab => u_uart_reg_RxFSM_4_aq,
	datac => u_uart_reg_Rx_r_aq,
	combout => nx13938z1);

-- Location: LCCOMB_X20_Y16_N30
u_uart_reg_RxRDYi_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_RxRDYi_afeeder_combout = nx13938z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx13938z1,
	combout => u_uart_reg_RxRDYi_afeeder_combout);

-- Location: FF_X20_Y16_N31
u_uart_reg_RxRDYi : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_RxRDYi_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxRDYi_aq);

-- Location: LCCOMB_X17_Y12_N28
reg_q_0_dup_24_a_wirecell : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_q_0_dup_24_a_wirecell_combout = !reg_q_0_dup_24_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_0_dup_24_aq,
	combout => reg_q_0_dup_24_a_wirecell_combout);

-- Location: LCCOMB_X17_Y12_N14
ix924_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_7_dup_120 = (nx7605z1 & ((reg_q_7_dup_17_aq & (nx60290z1 & VCC)) # (!reg_q_7_dup_17_aq & (!nx60290z1)))) # (!nx7605z1 & ((reg_q_7_dup_17_aq & (!nx60290z1)) # (!reg_q_7_dup_17_aq & ((nx60290z1) # (GND)))))
-- nx2541z1 = CARRY((nx7605z1 & (!reg_q_7_dup_17_aq & !nx60290z1)) # (!nx7605z1 & ((!nx60290z1) # (!reg_q_7_dup_17_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_7_dup_17_aq,
	datad => VCC,
	cin => nx60290z1,
	combout => incdec_mux_7_dup_120,
	cout => nx2541z1);

-- Location: LCCOMB_X17_Y12_N16
ix925_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_8_dup_121 = nx7605z1 $ (reg_q_8_dup_16_aq $ (!nx2541z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_8_dup_16_aq,
	cin => nx2541z1,
	combout => incdec_mux_8_dup_121);

-- Location: FF_X17_Y12_N17
reg_q_8_dup_16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_8_dup_121,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_16_aq);

-- Location: LCCOMB_X17_Y12_N26
ix18416z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18416z3 = (reg_q_0_dup_24_aq) # ((reg_q_7_dup_17_aq) # (!reg_q_8_dup_16_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_24_aq,
	datac => reg_q_7_dup_17_aq,
	datad => reg_q_8_dup_16_aq,
	combout => nx18416z3);

-- Location: LCCOMB_X17_Y12_N24
ix18416z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18416z4 = (!reg_q_6_dup_18_aq & (!reg_q_5_dup_19_aq & (!reg_q_4_dup_20_aq & !reg_q_3_dup_21_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_18_aq,
	datab => reg_q_5_dup_19_aq,
	datac => reg_q_4_dup_20_aq,
	datad => reg_q_3_dup_21_aq,
	combout => nx18416z4);

-- Location: LCCOMB_X17_Y12_N20
ix18416z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18416z2 = (nx18416z3) # ((reg_q_1_dup_23_aq) # ((reg_q_2_dup_22_aq) # (!nx18416z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx18416z3,
	datab => reg_q_1_dup_23_aq,
	datac => reg_q_2_dup_22_aq,
	datad => nx18416z4,
	combout => nx18416z2);

-- Location: LCCOMB_X17_Y12_N30
ix18416z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18416z1 = (nx7605z1) # (((nx18416z2 & u_uart_reg_RxRDYi_aq)) # (!reset_n_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => nx18416z2,
	datac => u_uart_reg_RxRDYi_aq,
	datad => reset_n_ainput_o,
	combout => nx18416z1);

-- Location: FF_X17_Y12_N29
reg_q_0_dup_24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_q_0_dup_24_a_wirecell_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_24_aq);

-- Location: LCCOMB_X17_Y12_N0
ix2404_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14325z1 = CARRY(reg_q_0_dup_24_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_24_aq,
	datad => VCC,
	cout => nx14325z1);

-- Location: LCCOMB_X17_Y12_N2
ix912_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_1_dup_114 = (nx7605z1 & ((reg_q_1_dup_23_aq & (nx14325z1 & VCC)) # (!reg_q_1_dup_23_aq & (!nx14325z1)))) # (!nx7605z1 & ((reg_q_1_dup_23_aq & (!nx14325z1)) # (!reg_q_1_dup_23_aq & ((nx14325z1) # (GND)))))
-- nx35637z1 = CARRY((nx7605z1 & (!reg_q_1_dup_23_aq & !nx14325z1)) # (!nx7605z1 & ((!nx14325z1) # (!reg_q_1_dup_23_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_1_dup_23_aq,
	datad => VCC,
	cin => nx14325z1,
	combout => incdec_mux_1_dup_114,
	cout => nx35637z1);

-- Location: FF_X17_Y12_N3
reg_q_1_dup_23 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_1_dup_114,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_23_aq);

-- Location: LCCOMB_X17_Y12_N4
ix914_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_2_dup_115 = ((nx7605z1 $ (reg_q_2_dup_22_aq $ (!nx35637z1)))) # (GND)
-- nx20063z1 = CARRY((nx7605z1 & ((reg_q_2_dup_22_aq) # (!nx35637z1))) # (!nx7605z1 & (reg_q_2_dup_22_aq & !nx35637z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_2_dup_22_aq,
	datad => VCC,
	cin => nx35637z1,
	combout => incdec_mux_2_dup_115,
	cout => nx20063z1);

-- Location: FF_X17_Y12_N5
reg_q_2_dup_22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_2_dup_115,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_22_aq);

-- Location: LCCOMB_X17_Y12_N6
ix916_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_3_dup_116 = (nx7605z1 & ((reg_q_3_dup_21_aq & (nx20063z1 & VCC)) # (!reg_q_3_dup_21_aq & (!nx20063z1)))) # (!nx7605z1 & ((reg_q_3_dup_21_aq & (!nx20063z1)) # (!reg_q_3_dup_21_aq & ((nx20063z1) # (GND)))))
-- nx4489z1 = CARRY((nx7605z1 & (!reg_q_3_dup_21_aq & !nx20063z1)) # (!nx7605z1 & ((!nx20063z1) # (!reg_q_3_dup_21_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_3_dup_21_aq,
	datad => VCC,
	cin => nx20063z1,
	combout => incdec_mux_3_dup_116,
	cout => nx4489z1);

-- Location: FF_X17_Y12_N7
reg_q_3_dup_21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_3_dup_116,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_21_aq);

-- Location: LCCOMB_X17_Y12_N8
ix918_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_4_dup_117 = ((nx7605z1 $ (reg_q_4_dup_20_aq $ (!nx4489z1)))) # (GND)
-- nx29142z1 = CARRY((nx7605z1 & ((reg_q_4_dup_20_aq) # (!nx4489z1))) # (!nx7605z1 & (reg_q_4_dup_20_aq & !nx4489z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_4_dup_20_aq,
	datad => VCC,
	cin => nx4489z1,
	combout => incdec_mux_4_dup_117,
	cout => nx29142z1);

-- Location: FF_X17_Y12_N9
reg_q_4_dup_20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_4_dup_117,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_20_aq);

-- Location: LCCOMB_X17_Y12_N10
ix920_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_5_dup_118 = (nx7605z1 & ((reg_q_5_dup_19_aq & (nx29142z1 & VCC)) # (!reg_q_5_dup_19_aq & (!nx29142z1)))) # (!nx7605z1 & ((reg_q_5_dup_19_aq & (!nx29142z1)) # (!reg_q_5_dup_19_aq & ((nx29142z1) # (GND)))))
-- nx44716z1 = CARRY((nx7605z1 & (!reg_q_5_dup_19_aq & !nx29142z1)) # (!nx7605z1 & ((!nx29142z1) # (!reg_q_5_dup_19_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_5_dup_19_aq,
	datad => VCC,
	cin => nx29142z1,
	combout => incdec_mux_5_dup_118,
	cout => nx44716z1);

-- Location: FF_X17_Y12_N11
reg_q_5_dup_19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_5_dup_118,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_19_aq);

-- Location: LCCOMB_X17_Y12_N12
ix922_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_6_dup_119 = ((nx7605z1 $ (reg_q_6_dup_18_aq $ (!nx44716z1)))) # (GND)
-- nx60290z1 = CARRY((nx7605z1 & ((reg_q_6_dup_18_aq) # (!nx44716z1))) # (!nx7605z1 & (reg_q_6_dup_18_aq & !nx44716z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datab => reg_q_6_dup_18_aq,
	datad => VCC,
	cin => nx44716z1,
	combout => incdec_mux_6_dup_119,
	cout => nx60290z1);

-- Location: FF_X17_Y12_N13
reg_q_6_dup_18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_6_dup_119,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_18_aq);

-- Location: FF_X17_Y12_N15
reg_q_7_dup_17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_7_dup_120,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx18416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_17_aq);

-- Location: LCCOMB_X17_Y12_N22
ix7605z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7605z2 = (reg_q_7_dup_17_aq) # ((reg_q_0_dup_24_aq) # ((reg_q_2_dup_22_aq) # (reg_q_1_dup_23_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_17_aq,
	datab => reg_q_0_dup_24_aq,
	datac => reg_q_2_dup_22_aq,
	datad => reg_q_1_dup_23_aq,
	combout => nx7605z2);

-- Location: LCCOMB_X20_Y15_N24
ix7605z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7605z1 = (!u_uart_reg_RxRDYi_aq & ((nx7605z2) # ((reg_q_8_dup_16_aq) # (!nx18416z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxRDYi_aq,
	datab => nx7605z2,
	datac => nx18416z4,
	datad => reg_q_8_dup_16_aq,
	combout => nx7605z1);

-- Location: LCCOMB_X22_Y15_N26
write_fifo_reg_rd_en_delayed_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_reg_rd_en_delayed_afeeder_combout = nx7605z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx7605z1,
	combout => write_fifo_reg_rd_en_delayed_afeeder_combout);

-- Location: FF_X22_Y15_N27
write_fifo_reg_rd_en_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => write_fifo_reg_rd_en_delayed_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_rd_en_delayed_aq);

-- Location: LCCOMB_X22_Y14_N12
ix37156z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z7 = (pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pb_a0_a_ainput_o,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => nx37156z7);

-- Location: LCCOMB_X17_Y13_N6
ix1262_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1283 = (reg_q_1_dup_97_aq & (!nx56034z1)) # (!reg_q_1_dup_97_aq & ((nx56034z1) # (GND)))
-- nx40460z1 = CARRY((!nx56034z1) # (!reg_q_1_dup_97_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datad => VCC,
	cin => nx56034z1,
	combout => inc_d_1_dup_1283,
	cout => nx40460z1);

-- Location: LCCOMB_X17_Y13_N8
ix1264_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1285 = (reg_q_2_dup_96_aq & (nx40460z1 $ (GND))) # (!reg_q_2_dup_96_aq & (!nx40460z1 & VCC))
-- nx40650z1 = CARRY((reg_q_2_dup_96_aq & !nx40460z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_96_aq,
	datad => VCC,
	cin => nx40460z1,
	combout => inc_d_2_dup_1285,
	cout => nx40650z1);

-- Location: FF_X17_Y13_N9
reg_q_2_dup_96 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1285,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_96_aq);

-- Location: LCCOMB_X17_Y13_N10
ix1266_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1287 = (reg_q_3_dup_95_aq & (!nx40650z1)) # (!reg_q_3_dup_95_aq & ((nx40650z1) # (GND)))
-- nx56224z1 = CARRY((!nx40650z1) # (!reg_q_3_dup_95_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datad => VCC,
	cin => nx40650z1,
	combout => inc_d_3_dup_1287,
	cout => nx56224z1);

-- Location: FF_X17_Y13_N11
reg_q_3_dup_95 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1287,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_95_aq);

-- Location: LCCOMB_X17_Y13_N12
ix1268_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1289 = (reg_q_4_dup_94_aq & (nx56224z1 $ (GND))) # (!reg_q_4_dup_94_aq & (!nx56224z1 & VCC))
-- nx24319z1 = CARRY((reg_q_4_dup_94_aq & !nx56224z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datad => VCC,
	cin => nx56224z1,
	combout => inc_d_4_dup_1289,
	cout => nx24319z1);

-- Location: FF_X17_Y13_N13
reg_q_4_dup_94 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1289,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_94_aq);

-- Location: LCCOMB_X17_Y13_N14
ix1270_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1291 = (reg_q_5_dup_93_aq & (!nx24319z1)) # (!reg_q_5_dup_93_aq & ((nx24319z1) # (GND)))
-- nx25643z1 = CARRY((!nx24319z1) # (!reg_q_5_dup_93_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_93_aq,
	datad => VCC,
	cin => nx24319z1,
	combout => inc_d_5_dup_1291,
	cout => nx25643z1);

-- Location: FF_X17_Y13_N15
reg_q_5_dup_93 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1291,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_93_aq);

-- Location: LCCOMB_X17_Y13_N16
ix1272_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1293 = (reg_q_6_dup_92_aq & (nx25643z1 $ (GND))) # (!reg_q_6_dup_92_aq & (!nx25643z1 & VCC))
-- nx17856z1 = CARRY((reg_q_6_dup_92_aq & !nx25643z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_92_aq,
	datad => VCC,
	cin => nx25643z1,
	combout => inc_d_6_dup_1293,
	cout => nx17856z1);

-- Location: FF_X17_Y13_N17
reg_q_6_dup_92 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1293,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_92_aq);

-- Location: LCCOMB_X17_Y13_N18
ix1273_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1295 = reg_q_7_dup_91_aq $ (nx17856z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_91_aq,
	cin => nx17856z1,
	combout => inc_d_7_dup_1295);

-- Location: FF_X17_Y13_N19
reg_q_7_dup_91 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1295,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_91_aq);

-- Location: LCCOMB_X17_Y13_N30
ix25399z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z6 = (reg_q_3_dup_95_aq & (reg_q_7_dup_91_aq & (reg_q_2_dup_96_aq & reg_q_6_dup_92_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_2_dup_96_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx25399z6);

-- Location: LCCOMB_X22_Y14_N18
ix37156z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z4 = (reg_q_0_dup_98_aq & reg_q_1_dup_97_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_1_dup_97_aq,
	combout => nx37156z4);

-- Location: LCCOMB_X22_Y14_N20
ix37156z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z3 = (reg_q_4_dup_94_aq & (nx25399z6 & (reg_q_5_dup_93_aq & nx37156z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => nx25399z6,
	datac => reg_q_5_dup_93_aq,
	datad => nx37156z4,
	combout => nx37156z3);

-- Location: LCCOMB_X19_Y15_N12
ix1222_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1243 = reg_q_0_dup_90_aq $ (VCC)
-- nx30952z1 = CARRY(reg_q_0_dup_90_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_90_aq,
	datad => VCC,
	combout => inc_d_0_dup_1243,
	cout => nx30952z1);

-- Location: LCCOMB_X20_Y14_N12
ix38412z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38412z1 = ((write_fifo_reg_rd_en_delayed_aq & pb_a0_a_ainput_o)) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datac => pb_a0_a_ainput_o,
	datad => reset_n_ainput_o,
	combout => nx38412z1);

-- Location: FF_X19_Y15_N13
reg_q_0_dup_90 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_1243,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_90_aq);

-- Location: LCCOMB_X19_Y15_N14
ix1224_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1245 = (reg_q_1_dup_89_aq & (!nx30952z1)) # (!reg_q_1_dup_89_aq & ((nx30952z1) # (GND)))
-- nx50158z1 = CARRY((!nx30952z1) # (!reg_q_1_dup_89_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_89_aq,
	datad => VCC,
	cin => nx30952z1,
	combout => inc_d_1_dup_1245,
	cout => nx50158z1);

-- Location: FF_X19_Y15_N15
reg_q_1_dup_89 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_1245,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_89_aq);

-- Location: LCCOMB_X19_Y15_N16
ix1226_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1247 = (reg_q_2_dup_88_aq & (nx50158z1 $ (GND))) # (!reg_q_2_dup_88_aq & (!nx50158z1 & VCC))
-- nx196z1 = CARRY((reg_q_2_dup_88_aq & !nx50158z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_88_aq,
	datad => VCC,
	cin => nx50158z1,
	combout => inc_d_2_dup_1247,
	cout => nx196z1);

-- Location: FF_X19_Y15_N17
reg_q_2_dup_88 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1247,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_88_aq);

-- Location: LCCOMB_X19_Y15_N18
ix1228_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1249 = (reg_q_3_dup_87_aq & (!nx196z1)) # (!reg_q_3_dup_87_aq & ((nx196z1) # (GND)))
-- nx33827z1 = CARRY((!nx196z1) # (!reg_q_3_dup_87_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_87_aq,
	datad => VCC,
	cin => nx196z1,
	combout => inc_d_3_dup_1249,
	cout => nx33827z1);

-- Location: FF_X19_Y15_N19
reg_q_3_dup_87 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1249,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_87_aq);

-- Location: LCCOMB_X19_Y15_N28
ix37156z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z6 = (reg_q_3_dup_87_aq & reg_q_2_dup_88_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_87_aq,
	datad => reg_q_2_dup_88_aq,
	combout => nx37156z6);

-- Location: LCCOMB_X19_Y15_N20
ix1230_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1251 = (reg_q_4_dup_86_aq & (nx33827z1 $ (GND))) # (!reg_q_4_dup_86_aq & (!nx33827z1 & VCC))
-- nx16135z1 = CARRY((reg_q_4_dup_86_aq & !nx33827z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_86_aq,
	datad => VCC,
	cin => nx33827z1,
	combout => inc_d_4_dup_1251,
	cout => nx16135z1);

-- Location: FF_X19_Y15_N21
reg_q_4_dup_86 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1251,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_86_aq);

-- Location: LCCOMB_X19_Y15_N22
ix1232_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1253 = (reg_q_5_dup_85_aq & (!nx16135z1)) # (!reg_q_5_dup_85_aq & ((nx16135z1) # (GND)))
-- nx561z1 = CARRY((!nx16135z1) # (!reg_q_5_dup_85_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_85_aq,
	datad => VCC,
	cin => nx16135z1,
	combout => inc_d_5_dup_1253,
	cout => nx561z1);

-- Location: FF_X19_Y15_N23
reg_q_5_dup_85 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1253,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_85_aq);

-- Location: LCCOMB_X19_Y15_N24
ix1234_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1255 = (reg_q_6_dup_84_aq & (nx561z1 $ (GND))) # (!reg_q_6_dup_84_aq & (!nx561z1 & VCC))
-- nx58310z1 = CARRY((reg_q_6_dup_84_aq & !nx561z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_84_aq,
	datad => VCC,
	cin => nx561z1,
	combout => inc_d_6_dup_1255,
	cout => nx58310z1);

-- Location: FF_X19_Y15_N25
reg_q_6_dup_84 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1255,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_84_aq);

-- Location: LCCOMB_X19_Y15_N26
ix1235_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1257 = reg_q_7_dup_83_aq $ (nx58310z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_83_aq,
	cin => nx58310z1,
	combout => inc_d_7_dup_1257);

-- Location: FF_X19_Y15_N27
reg_q_7_dup_83 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1257,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx38412z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_83_aq);

-- Location: LCCOMB_X19_Y15_N2
ix25399z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z5 = (reg_q_7_dup_83_aq & (reg_q_6_dup_84_aq & (reg_q_5_dup_85_aq & reg_q_4_dup_86_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_83_aq,
	datab => reg_q_6_dup_84_aq,
	datac => reg_q_5_dup_85_aq,
	datad => reg_q_4_dup_86_aq,
	combout => nx25399z5);

-- Location: LCCOMB_X19_Y15_N30
ix37156z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z5 = (((!nx25399z5) # (!reg_q_1_dup_89_aq)) # (!nx37156z6)) # (!reg_q_0_dup_90_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_90_aq,
	datab => nx37156z6,
	datac => reg_q_1_dup_89_aq,
	datad => nx25399z5,
	combout => nx37156z5);

-- Location: LCCOMB_X22_Y14_N24
ix37156z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z2 = (u_kirsch_reg_o_mode_0_aq) # (!u_kirsch_reg_o_mode_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_mode_1_aq,
	datad => u_kirsch_reg_o_mode_0_aq,
	combout => nx37156z2);

-- Location: LCCOMB_X22_Y14_N0
ix37156z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z1 = (nx37156z7 & (nx37156z3 & (!nx37156z5 & !nx37156z2))) # (!nx37156z7 & (((nx37156z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx37156z7,
	datab => nx37156z3,
	datac => nx37156z5,
	datad => nx37156z2,
	combout => nx37156z1);

-- Location: FF_X22_Y14_N1
u_kirsch_reg_o_mode_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx37156z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_mode_0_aq);

-- Location: LCCOMB_X22_Y14_N10
ix38153z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38153z1 = ((u_kirsch_reg_o_mode_1_aq) # ((pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq))) # (!u_kirsch_reg_o_mode_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => u_kirsch_reg_o_mode_0_aq,
	datac => u_kirsch_reg_o_mode_1_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => nx38153z1);

-- Location: FF_X22_Y14_N11
u_kirsch_reg_o_mode_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx38153z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_mode_1_aq);

-- Location: LCCOMB_X22_Y14_N8
ix25399z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z8 = (((!u_kirsch_reg_o_mode_0_aq) # (!reg_q_5_dup_93_aq)) # (!reg_q_4_dup_94_aq)) # (!u_kirsch_reg_o_mode_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_mode_1_aq,
	datab => reg_q_4_dup_94_aq,
	datac => reg_q_5_dup_93_aq,
	datad => u_kirsch_reg_o_mode_0_aq,
	combout => nx25399z8);

-- Location: LCCOMB_X22_Y14_N26
ix25399z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z7 = (((nx25399z8) # (!reg_q_1_dup_97_aq)) # (!nx25399z6)) # (!reg_q_0_dup_98_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_98_aq,
	datab => nx25399z6,
	datac => nx25399z8,
	datad => reg_q_1_dup_97_aq,
	combout => nx25399z7);

-- Location: LCCOMB_X19_Y15_N8
ix25399z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z4 = (reg_q_0_dup_90_aq & (reg_q_3_dup_87_aq & (reg_q_1_dup_89_aq & reg_q_2_dup_88_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_90_aq,
	datab => reg_q_3_dup_87_aq,
	datac => reg_q_1_dup_89_aq,
	datad => reg_q_2_dup_88_aq,
	combout => nx25399z4);

-- Location: LCCOMB_X22_Y14_N28
ix25399z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z3 = (reg_q_4_dup_94_aq & (reg_q_5_dup_93_aq & (reg_q_0_dup_98_aq & reg_q_1_dup_97_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_5_dup_93_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_1_dup_97_aq,
	combout => nx25399z3);

-- Location: LCCOMB_X22_Y14_N6
ix25399z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z2 = (nx25399z4 & (nx25399z5 & ((!nx25399z3) # (!nx25399z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25399z4,
	datab => nx25399z6,
	datac => nx25399z5,
	datad => nx25399z3,
	combout => nx25399z2);

-- Location: LCCOMB_X22_Y14_N30
ix25399z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25399z1 = ((nx37156z7 & ((nx25399z2) # (!nx25399z7)))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx37156z7,
	datab => reset_n_ainput_o,
	datac => nx25399z7,
	datad => nx25399z2,
	combout => nx25399z1);

-- Location: FF_X17_Y13_N5
reg_q_0_dup_98 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_1281,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_98_aq);

-- Location: FF_X17_Y13_N7
reg_q_1_dup_97 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_1283,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx25399z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_97_aq);

-- Location: LCCOMB_X13_Y15_N4
ix18625z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18625z2 = (reg_q_1_dup_97_aq & ((reg_q_0_dup_98_aq & ((!reg_q_3_dup_95_aq))) # (!reg_q_0_dup_98_aq & (!reg_q_2_dup_96_aq)))) # (!reg_q_1_dup_97_aq & ((reg_q_0_dup_98_aq $ (!reg_q_3_dup_95_aq)) # (!reg_q_2_dup_96_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_3_dup_95_aq,
	combout => nx18625z2);

-- Location: LCCOMB_X17_Y13_N24
ix18625z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18625z3 = (reg_q_7_dup_91_aq & ((reg_q_4_dup_94_aq & (!reg_q_5_dup_93_aq)) # (!reg_q_4_dup_94_aq & ((!reg_q_6_dup_92_aq))))) # (!reg_q_7_dup_91_aq & ((reg_q_4_dup_94_aq $ (!reg_q_5_dup_93_aq)) # (!reg_q_6_dup_92_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx18625z3);

-- Location: LCCOMB_X13_Y15_N14
ix18625z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18625z1 = (reg_q_10_dup_50_aq & ((nx18625z3))) # (!reg_q_10_dup_50_aq & (nx18625z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_10_dup_50_aq,
	datac => nx18625z2,
	datad => nx18625z3,
	combout => nx18625z1);

-- Location: LCCOMB_X13_Y15_N20
u_seg7_u_dual_seg7_reg_prev_char0_en_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout = !reg_q_10_dup_50_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_10_dup_50_aq,
	combout => u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout);

-- Location: FF_X13_Y15_N21
u_seg7_u_dual_seg7_reg_prev_char0_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_prev_char0_en_aq);

-- Location: LCCOMB_X13_Y15_N28
ix10356z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_load_reg = u_seg7_u_dual_seg7_reg_prev_char0_en_aq $ (!reg_q_10_dup_50_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_seg7_u_dual_seg7_reg_prev_char0_en_aq,
	datac => reg_q_10_dup_50_aq,
	combout => u_seg7_u_dual_seg7_load_reg);

-- Location: FF_X13_Y15_N15
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx18625z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq);

-- Location: LCCOMB_X13_Y15_N16
ix28027z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28027z2 = (reg_q_1_dup_97_aq & ((reg_q_3_dup_95_aq) # ((reg_q_2_dup_96_aq & !reg_q_0_dup_98_aq)))) # (!reg_q_1_dup_97_aq & ((reg_q_2_dup_96_aq $ (reg_q_3_dup_95_aq)) # (!reg_q_0_dup_98_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_3_dup_95_aq,
	combout => nx28027z2);

-- Location: LCCOMB_X22_Y15_N28
ix28027z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28027z3 = (reg_q_6_dup_92_aq & ((reg_q_7_dup_91_aq $ (!reg_q_5_dup_93_aq)) # (!reg_q_4_dup_94_aq))) # (!reg_q_6_dup_92_aq & ((reg_q_7_dup_91_aq) # ((!reg_q_4_dup_94_aq & !reg_q_5_dup_93_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_92_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_4_dup_94_aq,
	datad => reg_q_5_dup_93_aq,
	combout => nx28027z3);

-- Location: LCCOMB_X13_Y15_N18
ix28027z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28027z1 = (reg_q_10_dup_50_aq & ((nx28027z3))) # (!reg_q_10_dup_50_aq & (nx28027z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx28027z2,
	datac => reg_q_10_dup_50_aq,
	datad => nx28027z3,
	combout => nx28027z1);

-- Location: FF_X13_Y15_N19
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx28027z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq);

-- Location: LCCOMB_X17_Y13_N2
ix51544z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z2 = (reg_q_0_dup_98_aq & ((reg_q_3_dup_95_aq) # (reg_q_2_dup_96_aq $ (reg_q_1_dup_97_aq)))) # (!reg_q_0_dup_98_aq & ((reg_q_1_dup_97_aq) # (reg_q_3_dup_95_aq $ (reg_q_2_dup_96_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_1_dup_97_aq,
	combout => nx51544z2);

-- Location: LCCOMB_X17_Y13_N20
ix51544z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z3 = (reg_q_4_dup_94_aq & ((reg_q_7_dup_91_aq) # (reg_q_5_dup_93_aq $ (reg_q_6_dup_92_aq)))) # (!reg_q_4_dup_94_aq & ((reg_q_5_dup_93_aq) # (reg_q_7_dup_91_aq $ (reg_q_6_dup_92_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx51544z3);

-- Location: LCCOMB_X16_Y13_N8
ix51544z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z1 = (reg_q_10_dup_50_aq & ((nx51544z3))) # (!reg_q_10_dup_50_aq & (nx51544z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z2,
	datab => reg_q_10_dup_50_aq,
	datac => nx51544z3,
	combout => nx51544z1);

-- Location: FF_X16_Y13_N9
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51544z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq);

-- Location: LCCOMB_X19_Y16_N4
ix1140_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1171 = reg_q_0_dup_82_aq $ (VCC)
-- nx7939z1 = CARRY(reg_q_0_dup_82_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_82_aq,
	datad => VCC,
	combout => inc_d_0_dup_1171,
	cout => nx7939z1);

-- Location: FF_X19_Y16_N5
reg_q_0_dup_82 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_1171,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_82_aq);

-- Location: LCCOMB_X19_Y16_N6
ix1142_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1173 = (reg_q_1_dup_81_aq & (!nx7939z1)) # (!reg_q_1_dup_81_aq & ((nx7939z1) # (GND)))
-- nx57901z1 = CARRY((!nx7939z1) # (!reg_q_1_dup_81_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_81_aq,
	datad => VCC,
	cin => nx7939z1,
	combout => inc_d_1_dup_1173,
	cout => nx57901z1);

-- Location: FF_X19_Y16_N7
reg_q_1_dup_81 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_1173,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_81_aq);

-- Location: LCCOMB_X19_Y16_N8
ix1144_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1175 = (reg_q_2_dup_80_aq & (nx57901z1 $ (GND))) # (!reg_q_2_dup_80_aq & (!nx57901z1 & VCC))
-- nx42327z1 = CARRY((reg_q_2_dup_80_aq & !nx57901z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_80_aq,
	datad => VCC,
	cin => nx57901z1,
	combout => inc_d_2_dup_1175,
	cout => nx42327z1);

-- Location: FF_X19_Y16_N9
reg_q_2_dup_80 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1175,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_80_aq);

-- Location: LCCOMB_X20_Y12_N0
ix57349z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z3 = (!reg_q_1_dup_81_aq & !reg_q_2_dup_80_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_1_dup_81_aq,
	datad => reg_q_2_dup_80_aq,
	combout => nx57349z3);

-- Location: LCCOMB_X19_Y16_N10
ix1146_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1177 = (reg_q_3_dup_79_aq & (!nx42327z1)) # (!reg_q_3_dup_79_aq & ((nx42327z1) # (GND)))
-- nx38783z1 = CARRY((!nx42327z1) # (!reg_q_3_dup_79_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_79_aq,
	datad => VCC,
	cin => nx42327z1,
	combout => inc_d_3_dup_1177,
	cout => nx38783z1);

-- Location: FF_X19_Y16_N11
reg_q_3_dup_79 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1177,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_79_aq);

-- Location: LCCOMB_X19_Y16_N12
ix1148_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1179 = (reg_q_4_dup_78_aq & (nx38783z1 $ (GND))) # (!reg_q_4_dup_78_aq & (!nx38783z1 & VCC))
-- nx6878z1 = CARRY((reg_q_4_dup_78_aq & !nx38783z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_78_aq,
	datad => VCC,
	cin => nx38783z1,
	combout => inc_d_4_dup_1179,
	cout => nx6878z1);

-- Location: FF_X19_Y16_N13
reg_q_4_dup_78 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1179,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_78_aq);

-- Location: LCCOMB_X19_Y16_N14
ix1150_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1181 = (reg_q_5_dup_77_aq & (!nx6878z1)) # (!reg_q_5_dup_77_aq & ((nx6878z1) # (GND)))
-- nx22452z1 = CARRY((!nx6878z1) # (!reg_q_5_dup_77_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_77_aq,
	datad => VCC,
	cin => nx6878z1,
	combout => inc_d_5_dup_1181,
	cout => nx22452z1);

-- Location: FF_X19_Y16_N15
reg_q_5_dup_77 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1181,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_77_aq);

-- Location: LCCOMB_X19_Y16_N16
ix1152_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1183 = (reg_q_6_dup_76_aq & (nx22452z1 $ (GND))) # (!reg_q_6_dup_76_aq & (!nx22452z1 & VCC))
-- nx38026z1 = CARRY((reg_q_6_dup_76_aq & !nx22452z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_76_aq,
	datad => VCC,
	cin => nx22452z1,
	combout => inc_d_6_dup_1183,
	cout => nx38026z1);

-- Location: FF_X19_Y16_N17
reg_q_6_dup_76 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1183,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_76_aq);

-- Location: LCCOMB_X19_Y16_N18
ix1154_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1185 = (reg_q_7_dup_75_aq & (!nx38026z1)) # (!reg_q_7_dup_75_aq & ((nx38026z1) # (GND)))
-- nx11936z1 = CARRY((!nx38026z1) # (!reg_q_7_dup_75_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_75_aq,
	datad => VCC,
	cin => nx38026z1,
	combout => inc_d_7_dup_1185,
	cout => nx11936z1);

-- Location: FF_X19_Y16_N19
reg_q_7_dup_75 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1185,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_75_aq);

-- Location: LCCOMB_X19_Y16_N20
ix1156_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_1187 = (reg_q_8_dup_74_aq & (nx11936z1 $ (GND))) # (!reg_q_8_dup_74_aq & (!nx11936z1 & VCC))
-- nx47250z1 = CARRY((reg_q_8_dup_74_aq & !nx11936z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_74_aq,
	datad => VCC,
	cin => nx11936z1,
	combout => inc_d_8_dup_1187,
	cout => nx47250z1);

-- Location: FF_X19_Y16_N21
reg_q_8_dup_74 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_1187,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_74_aq);

-- Location: LCCOMB_X19_Y16_N22
ix38_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_1189 = (reg_q_9_dup_73_aq & (!nx47250z1)) # (!reg_q_9_dup_73_aq & ((nx47250z1) # (GND)))
-- nx61898z1 = CARRY((!nx47250z1) # (!reg_q_9_dup_73_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_9_dup_73_aq,
	datad => VCC,
	cin => nx47250z1,
	combout => inc_d_9_dup_1189,
	cout => nx61898z1);

-- Location: FF_X19_Y16_N23
reg_q_9_dup_73 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_1189,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_73_aq);

-- Location: LCCOMB_X19_Y16_N24
ix1158_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_1191 = (reg_q_10_dup_72_aq & (nx61898z1 $ (GND))) # (!reg_q_10_dup_72_aq & (!nx61898z1 & VCC))
-- nx54111z1 = CARRY((reg_q_10_dup_72_aq & !nx61898z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_10_dup_72_aq,
	datad => VCC,
	cin => nx61898z1,
	combout => inc_d_10_dup_1191,
	cout => nx54111z1);

-- Location: FF_X19_Y16_N25
reg_q_10_dup_72 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_1191,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_72_aq);

-- Location: LCCOMB_X19_Y16_N26
ix1159_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_11_a = reg_q_11_aq $ (nx54111z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_11_aq,
	cin => nx54111z1,
	combout => inc_d_11_a);

-- Location: FF_X19_Y16_N27
reg_q_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_11_a,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_11_aq);

-- Location: LCCOMB_X19_Y16_N0
ix57349z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z2 = (!reg_q_11_aq & (!reg_q_10_dup_72_aq & (!reg_q_9_dup_73_aq & !reg_q_3_dup_79_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_11_aq,
	datab => reg_q_10_dup_72_aq,
	datac => reg_q_9_dup_73_aq,
	datad => reg_q_3_dup_79_aq,
	combout => nx57349z2);

-- Location: LCCOMB_X19_Y14_N0
ix57349z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z5 = (u_uart_reg_RxDivisor_4_aq & (reg_q_4_dup_78_aq & (reg_q_8_dup_74_aq & reg_q_0_dup_82_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxDivisor_4_aq,
	datab => reg_q_4_dup_78_aq,
	datac => reg_q_8_dup_74_aq,
	datad => reg_q_0_dup_82_aq,
	combout => nx57349z5);

-- Location: LCCOMB_X19_Y16_N2
ix57349z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z6 = (!reg_q_4_dup_78_aq & (!u_uart_reg_RxDivisor_4_aq & (!reg_q_0_dup_82_aq & !reg_q_8_dup_74_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_78_aq,
	datab => u_uart_reg_RxDivisor_4_aq,
	datac => reg_q_0_dup_82_aq,
	datad => reg_q_8_dup_74_aq,
	combout => nx57349z6);

-- Location: LCCOMB_X19_Y16_N28
ix57349z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z4 = (reg_q_7_dup_75_aq & (nx57349z5 & (reg_q_5_dup_77_aq))) # (!reg_q_7_dup_75_aq & (((!reg_q_5_dup_77_aq & nx57349z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57349z5,
	datab => reg_q_7_dup_75_aq,
	datac => reg_q_5_dup_77_aq,
	datad => nx57349z6,
	combout => nx57349z4);

-- Location: LCCOMB_X19_Y16_N30
ix57349z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z1 = (nx57349z3 & (!reg_q_6_dup_76_aq & (nx57349z2 & nx57349z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57349z3,
	datab => reg_q_6_dup_76_aq,
	datac => nx57349z2,
	datad => nx57349z4,
	combout => nx57349z1);

-- Location: FF_X19_Y16_N31
u_uart_reg_TopTx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57349z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TopTx_aq);

-- Location: LCCOMB_X17_Y16_N28
ix8356z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8356z1 = u_uart_reg_TxFSM_1_aq $ (((u_uart_reg_TxFSM_0_aq & u_uart_reg_TopTx_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datac => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx8356z1);

-- Location: FF_X17_Y16_N29
u_uart_reg_TxFSM_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx8356z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TxFSM_1_aq);

-- Location: LCCOMB_X17_Y16_N22
ix61431z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61431z2 = (!u_uart_reg_TxFSM_1_aq & u_uart_reg_TopTx_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx61431z2);

-- Location: LCCOMB_X17_Y16_N0
ix59437z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59437z1 = ((!u_uart_reg_TxFSM_1_aq & u_uart_reg_TopTx_aq)) # (!u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_TxFSM_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx59437z1);

-- Location: LCCOMB_X17_Y16_N2
ix59437z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59437z2 = (u_uart_reg_TopTx_aq & (u_uart_reg_TxFSM_0_aq $ (u_uart_reg_TxFSM_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx59437z2);

-- Location: FF_X17_Y16_N1
u_uart_modgen_counter_TxBitCnt_reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59437z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq);

-- Location: LCCOMB_X17_Y16_N4
ix60434z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60434z1 = (u_uart_reg_TopTx_aq & (u_uart_reg_TxFSM_1_aq & (u_uart_modgen_counter_TxBitCnt_reg_q_1_aq $ (!u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)))) # (!u_uart_reg_TopTx_aq & ((u_uart_modgen_counter_TxBitCnt_reg_q_1_aq $ 
-- (!u_uart_modgen_counter_TxBitCnt_reg_q_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TopTx_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx60434z1);

-- Location: FF_X17_Y16_N5
u_uart_modgen_counter_TxBitCnt_reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60434z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq);

-- Location: LCCOMB_X17_Y16_N8
ix61431z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61431z1 = (!nx61431z2 & (u_uart_modgen_counter_TxBitCnt_reg_q_2_aq $ (((!u_uart_modgen_counter_TxBitCnt_reg_q_1_aq & !u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx61431z2,
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx61431z1);

-- Location: FF_X17_Y16_N9
u_uart_modgen_counter_TxBitCnt_reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx61431z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq);

-- Location: LCCOMB_X17_Y16_N26
ix62428z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62428z2 = (u_uart_modgen_counter_TxBitCnt_reg_q_1_aq) # (u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx62428z2);

-- Location: LCCOMB_X17_Y16_N20
ix62428z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62428z1 = (nx61431z2) # (u_uart_modgen_counter_TxBitCnt_reg_q_3_aq $ (((!nx62428z2 & !u_uart_modgen_counter_TxBitCnt_reg_q_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62428z2,
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_3_aq,
	datad => nx61431z2,
	combout => nx62428z1);

-- Location: FF_X17_Y16_N21
u_uart_modgen_counter_TxBitCnt_reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62428z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_3_aq);

-- Location: LCCOMB_X17_Y16_N30
ix7359z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7359z2 = (u_uart_modgen_counter_TxBitCnt_reg_q_2_aq) # ((u_uart_modgen_counter_TxBitCnt_reg_q_3_aq) # ((u_uart_modgen_counter_TxBitCnt_reg_q_1_aq) # (!u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_3_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx7359z2);

-- Location: LCCOMB_X22_Y15_N22
ix26352z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26352z5 = (reg_q_2_dup_96_aq) # ((reg_q_5_dup_93_aq) # ((reg_q_4_dup_94_aq) # (reg_q_1_dup_97_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_96_aq,
	datab => reg_q_5_dup_93_aq,
	datac => reg_q_4_dup_94_aq,
	datad => reg_q_1_dup_97_aq,
	combout => nx26352z5);

-- Location: LCCOMB_X22_Y15_N20
ix26352z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26352z6 = (reg_q_3_dup_95_aq) # ((reg_q_7_dup_91_aq) # (reg_q_6_dup_92_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datac => reg_q_7_dup_91_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx26352z6);

-- Location: LCCOMB_X22_Y15_N12
ix26352z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26352z4 = (write_fifo_reg_rd_en_delayed_aq & (pb_a0_a_ainput_o & ((nx26352z5) # (nx26352z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => pb_a0_a_ainput_o,
	datac => nx26352z5,
	datad => nx26352z6,
	combout => nx26352z4);

-- Location: LCCOMB_X19_Y15_N10
ix26352z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26352z3 = (!reg_q_7_dup_83_aq & (!reg_q_6_dup_84_aq & (!reg_q_5_dup_85_aq & !reg_q_4_dup_86_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_83_aq,
	datab => reg_q_6_dup_84_aq,
	datac => reg_q_5_dup_85_aq,
	datad => reg_q_4_dup_86_aq,
	combout => nx26352z3);

-- Location: LCCOMB_X19_Y15_N4
ix26352z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26352z2 = (nx26352z3 & (!reg_q_2_dup_88_aq & (!reg_q_1_dup_89_aq & !reg_q_3_dup_87_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z3,
	datab => reg_q_2_dup_88_aq,
	datac => reg_q_1_dup_89_aq,
	datad => reg_q_3_dup_87_aq,
	combout => nx26352z2);

-- Location: LCCOMB_X19_Y15_N6
ix26352z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26352z1 = (nx26352z4 & !nx26352z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datac => nx26352z2,
	combout => nx26352z1);

-- Location: LCCOMB_X19_Y15_N0
u_kirsch_reg_v_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_v_1_afeeder_combout = nx26352z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx26352z1,
	combout => u_kirsch_reg_v_1_afeeder_combout);

-- Location: FF_X19_Y15_N1
u_kirsch_reg_v_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_v_1_afeeder_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_1_aq);

-- Location: FF_X22_Y15_N31
u_kirsch_reg_v_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_v_1_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_2_aq);

-- Location: FF_X22_Y15_N1
u_kirsch_reg_v_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_v_2_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_3_aq);

-- Location: FF_X20_Y15_N9
u_kirsch_reg_v_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_v_3_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_4_aq);

-- Location: FF_X20_Y15_N31
u_kirsch_reg_v_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_v_4_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_5_aq);

-- Location: FF_X20_Y15_N5
u_kirsch_reg_v_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_v_5_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_6_aq);

-- Location: FF_X20_Y15_N27
u_kirsch_reg_v_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_v_6_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_v_7_aq);

-- Location: LCCOMB_X20_Y12_N4
u_kirsch_reg_o_valid_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_o_valid_afeeder_combout = u_kirsch_reg_v_7_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_v_7_aq,
	combout => u_kirsch_reg_o_valid_afeeder_combout);

-- Location: FF_X20_Y12_N5
u_kirsch_reg_o_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_o_valid_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_valid_aq);

-- Location: LCCOMB_X20_Y12_N26
ix11963z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11963z1 = (pb_a0_a_ainput_o & (u_kirsch_reg_o_valid_aq)) # (!pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_o_valid_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => nx11963z1);

-- Location: LCCOMB_X23_Y12_N26
ix64502z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64502z2 = (reg_wait_for_tx_valid_aq & reg_tx_valid_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_wait_for_tx_valid_aq,
	datac => reg_tx_valid_aq,
	combout => nx64502z2);

-- Location: LCCOMB_X23_Y12_N22
ix64502z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64502z1 = (nx64502z2) # ((reg_rb_rd_en_aq & (!nx11963z1 & !reg_wait_for_tx_valid_delayed_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx64502z2,
	datab => reg_rb_rd_en_aq,
	datac => nx11963z1,
	datad => reg_wait_for_tx_valid_delayed_aq,
	combout => nx64502z1);

-- Location: FF_X23_Y12_N23
reg_wait_for_tx_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64502z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_wait_for_tx_valid_aq);

-- Location: FF_X25_Y12_N9
reg_wait_for_tx_valid_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_wait_for_tx_valid_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_wait_for_tx_valid_delayed_aq);

-- Location: LCCOMB_X19_Y10_N2
ix40197z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40197z1 = (!nx11963z1 & (nx15004z2 & (reg_rb_rd_en_aq & !reg_wait_for_tx_valid_delayed_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11963z1,
	datab => nx15004z2,
	datac => reg_rb_rd_en_aq,
	datad => reg_wait_for_tx_valid_delayed_aq,
	combout => nx40197z1);

-- Location: LCCOMB_X18_Y10_N18
reg_q_0_dup_49_a_wirecell : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_q_0_dup_49_a_wirecell_combout = !reg_q_0_dup_49_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_0_dup_49_aq,
	combout => reg_q_0_dup_49_a_wirecell_combout);

-- Location: LCCOMB_X18_Y10_N6
ix1018_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_3_dup_116_dup_1039 = (nx40197z1 & ((reg_q_3_dup_46_aq & (nx56487z1 & VCC)) # (!reg_q_3_dup_46_aq & (!nx56487z1)))) # (!nx40197z1 & ((reg_q_3_dup_46_aq & (!nx56487z1)) # (!reg_q_3_dup_46_aq & ((nx56487z1) # (GND)))))
-- nx24582z1 = CARRY((nx40197z1 & (!reg_q_3_dup_46_aq & !nx56487z1)) # (!nx40197z1 & ((!nx56487z1) # (!reg_q_3_dup_46_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_3_dup_46_aq,
	datad => VCC,
	cin => nx56487z1,
	combout => incdec_mux_3_dup_116_dup_1039,
	cout => nx24582z1);

-- Location: LCCOMB_X18_Y10_N8
ix1020_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_4_dup_117_dup_1041 = ((nx40197z1 $ (reg_q_4_dup_45_aq $ (!nx24582z1)))) # (GND)
-- nx40156z1 = CARRY((nx40197z1 & ((reg_q_4_dup_45_aq) # (!nx24582z1))) # (!nx40197z1 & (reg_q_4_dup_45_aq & !nx24582z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_4_dup_45_aq,
	datad => VCC,
	cin => nx24582z1,
	combout => incdec_mux_4_dup_117_dup_1041,
	cout => nx40156z1);

-- Location: FF_X18_Y10_N9
reg_q_4_dup_45 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_4_dup_117_dup_1041,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_45_aq);

-- Location: LCCOMB_X18_Y10_N26
ix20415z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20415z3 = (reg_q_3_dup_46_aq) # ((reg_q_4_dup_45_aq) # ((reg_q_2_dup_47_aq) # (reg_q_1_dup_48_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_46_aq,
	datab => reg_q_4_dup_45_aq,
	datac => reg_q_2_dup_47_aq,
	datad => reg_q_1_dup_48_aq,
	combout => nx20415z3);

-- Location: LCCOMB_X18_Y10_N10
ix1022_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_5_dup_118_dup_1043 = (nx40197z1 & ((reg_q_5_dup_44_aq & (nx40156z1 & VCC)) # (!reg_q_5_dup_44_aq & (!nx40156z1)))) # (!nx40197z1 & ((reg_q_5_dup_44_aq & (!nx40156z1)) # (!reg_q_5_dup_44_aq & ((nx40156z1) # (GND)))))
-- nx55730z1 = CARRY((nx40197z1 & (!reg_q_5_dup_44_aq & !nx40156z1)) # (!nx40197z1 & ((!nx40156z1) # (!reg_q_5_dup_44_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_5_dup_44_aq,
	datad => VCC,
	cin => nx40156z1,
	combout => incdec_mux_5_dup_118_dup_1043,
	cout => nx55730z1);

-- Location: FF_X18_Y10_N11
reg_q_5_dup_44 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_5_dup_118_dup_1043,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_44_aq);

-- Location: LCCOMB_X18_Y10_N12
ix1024_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_6_dup_119_dup_1045 = ((nx40197z1 $ (reg_q_6_dup_43_aq $ (!nx55730z1)))) # (GND)
-- nx59768z1 = CARRY((nx40197z1 & ((reg_q_6_dup_43_aq) # (!nx55730z1))) # (!nx40197z1 & (reg_q_6_dup_43_aq & !nx55730z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_6_dup_43_aq,
	datad => VCC,
	cin => nx55730z1,
	combout => incdec_mux_6_dup_119_dup_1045,
	cout => nx59768z1);

-- Location: FF_X18_Y10_N13
reg_q_6_dup_43 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_6_dup_119_dup_1045,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_43_aq);

-- Location: LCCOMB_X18_Y10_N14
ix1026_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_7_dup_120_dup_1047 = (nx40197z1 & ((reg_q_7_dup_42_aq & (nx59768z1 & VCC)) # (!reg_q_7_dup_42_aq & (!nx59768z1)))) # (!nx40197z1 & ((reg_q_7_dup_42_aq & (!nx59768z1)) # (!reg_q_7_dup_42_aq & ((nx59768z1) # (GND)))))
-- nx51981z1 = CARRY((nx40197z1 & (!reg_q_7_dup_42_aq & !nx59768z1)) # (!nx40197z1 & ((!nx59768z1) # (!reg_q_7_dup_42_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_7_dup_42_aq,
	datad => VCC,
	cin => nx59768z1,
	combout => incdec_mux_7_dup_120_dup_1047,
	cout => nx51981z1);

-- Location: FF_X18_Y10_N15
reg_q_7_dup_42 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_7_dup_120_dup_1047,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_42_aq);

-- Location: LCCOMB_X18_Y10_N16
ix1027_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_8_dup_121_dup_1049 = reg_q_8_dup_41_aq $ (nx51981z1 $ (!nx40197z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_41_aq,
	datad => nx40197z1,
	cin => nx51981z1,
	combout => incdec_mux_8_dup_121_dup_1049);

-- Location: FF_X18_Y10_N17
reg_q_8_dup_41 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_8_dup_121_dup_1049,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_41_aq);

-- Location: LCCOMB_X18_Y10_N28
ix20415z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20415z4 = (reg_q_5_dup_44_aq) # (((reg_q_7_dup_42_aq) # (reg_q_6_dup_43_aq)) # (!reg_q_8_dup_41_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_44_aq,
	datab => reg_q_8_dup_41_aq,
	datac => reg_q_7_dup_42_aq,
	datad => reg_q_6_dup_43_aq,
	combout => nx20415z4);

-- Location: LCCOMB_X20_Y10_N24
ix20415z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20415z2 = (nx11963z1 & ((nx20415z3) # ((reg_q_0_dup_49_aq) # (nx20415z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx20415z3,
	datab => reg_q_0_dup_49_aq,
	datac => nx20415z4,
	datad => nx11963z1,
	combout => nx20415z2);

-- Location: LCCOMB_X19_Y10_N0
ix20415z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20415z1 = (nx20415z2) # (((nx15004z2 & rb_rd_en_true)) # (!reset_n_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx20415z2,
	datab => nx15004z2,
	datac => reset_n_ainput_o,
	datad => rb_rd_en_true,
	combout => nx20415z1);

-- Location: FF_X18_Y10_N19
reg_q_0_dup_49 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_q_0_dup_49_a_wirecell_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_49_aq);

-- Location: LCCOMB_X18_Y10_N0
ix2403_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40197z2 = CARRY(reg_q_0_dup_49_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_49_aq,
	datad => VCC,
	cout => nx40197z2);

-- Location: LCCOMB_X18_Y10_N2
ix1014_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_1_dup_114_dup_1035 = (nx40197z1 & ((reg_q_1_dup_48_aq & (nx40197z2 & VCC)) # (!reg_q_1_dup_48_aq & (!nx40197z2)))) # (!nx40197z1 & ((reg_q_1_dup_48_aq & (!nx40197z2)) # (!reg_q_1_dup_48_aq & ((nx40197z2) # (GND)))))
-- nx24623z1 = CARRY((nx40197z1 & (!reg_q_1_dup_48_aq & !nx40197z2)) # (!nx40197z1 & ((!nx40197z2) # (!reg_q_1_dup_48_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_1_dup_48_aq,
	datad => VCC,
	cin => nx40197z2,
	combout => incdec_mux_1_dup_114_dup_1035,
	cout => nx24623z1);

-- Location: FF_X18_Y10_N3
reg_q_1_dup_48 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_1_dup_114_dup_1035,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_48_aq);

-- Location: LCCOMB_X18_Y10_N4
ix1016_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_2_dup_115_dup_1037 = ((nx40197z1 $ (reg_q_2_dup_47_aq $ (!nx24623z1)))) # (GND)
-- nx56487z1 = CARRY((nx40197z1 & ((reg_q_2_dup_47_aq) # (!nx24623z1))) # (!nx40197z1 & (reg_q_2_dup_47_aq & !nx24623z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40197z1,
	datab => reg_q_2_dup_47_aq,
	datad => VCC,
	cin => nx24623z1,
	combout => incdec_mux_2_dup_115_dup_1037,
	cout => nx56487z1);

-- Location: FF_X18_Y10_N5
reg_q_2_dup_47 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_2_dup_115_dup_1037,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_47_aq);

-- Location: FF_X18_Y10_N7
reg_q_3_dup_46 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_3_dup_116_dup_1039,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx20415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_46_aq);

-- Location: LCCOMB_X18_Y10_N30
ix15004z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z4 = (reg_q_3_dup_46_aq) # ((reg_q_5_dup_44_aq) # ((reg_q_4_dup_45_aq) # (reg_q_6_dup_43_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_46_aq,
	datab => reg_q_5_dup_44_aq,
	datac => reg_q_4_dup_45_aq,
	datad => reg_q_6_dup_43_aq,
	combout => nx15004z4);

-- Location: LCCOMB_X18_Y10_N20
ix15004z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z3 = (reg_q_1_dup_48_aq) # ((reg_q_2_dup_47_aq) # (reg_q_0_dup_49_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_48_aq,
	datac => reg_q_2_dup_47_aq,
	datad => reg_q_0_dup_49_aq,
	combout => nx15004z3);

-- Location: LCCOMB_X18_Y10_N24
ix15004z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z2 = (nx15004z4) # ((reg_q_8_dup_41_aq) # ((reg_q_7_dup_42_aq) # (nx15004z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx15004z4,
	datab => reg_q_8_dup_41_aq,
	datac => reg_q_7_dup_42_aq,
	datad => nx15004z3,
	combout => nx15004z2);

-- Location: LCCOMB_X17_Y16_N14
ix13251z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13251z1 = (u_uart_reg_TxFSM_0_aq) # ((u_uart_reg_TxFSM_1_aq) # (!reg_tx_valid_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datac => reg_tx_valid_aq,
	datad => u_uart_reg_TxFSM_1_aq,
	combout => nx13251z1);

-- Location: FF_X17_Y16_N15
u_uart_reg_TxBusy : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13251z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TxBusy_aq);

-- Location: LCCOMB_X23_Y12_N20
reg_tx_busy_delayed_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_tx_busy_delayed_afeeder_combout = u_uart_reg_TxBusy_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_TxBusy_aq,
	combout => reg_tx_busy_delayed_afeeder_combout);

-- Location: FF_X23_Y12_N21
reg_tx_busy_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_tx_busy_delayed_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_tx_busy_delayed_aq);

-- Location: LCCOMB_X23_Y12_N24
ix15004z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z1 = (nx15004z2 & (!u_uart_reg_TxBusy_aq & (!reg_rb_rd_en_aq & !reg_tx_busy_delayed_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx15004z2,
	datab => u_uart_reg_TxBusy_aq,
	datac => reg_rb_rd_en_aq,
	datad => reg_tx_busy_delayed_aq,
	combout => nx15004z1);

-- Location: FF_X23_Y12_N25
reg_rb_rd_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx15004z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_rb_rd_en_aq);

-- Location: LCCOMB_X23_Y12_N2
ix11963z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_rd_en_true = (reg_rb_rd_en_aq & (!nx11963z1 & !reg_wait_for_tx_valid_delayed_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_rb_rd_en_aq,
	datac => nx11963z1,
	datad => reg_wait_for_tx_valid_delayed_aq,
	combout => rb_rd_en_true);

-- Location: FF_X23_Y12_N3
reg_rb_rd_en_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => rb_rd_en_true,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_rb_rd_en_delayed_aq);

-- Location: LCCOMB_X17_Y12_N18
reg_rb_rd_en_delayed_a_wirecell : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_rb_rd_en_delayed_a_wirecell_combout = !reg_rb_rd_en_delayed_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_rb_rd_en_delayed_aq,
	combout => reg_rb_rd_en_delayed_a_wirecell_combout);

-- Location: FF_X17_Y12_N19
reg_tx_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_rb_rd_en_delayed_a_wirecell_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_tx_valid_aq);

-- Location: LCCOMB_X17_Y16_N24
ix7359z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7359z3 = (u_uart_reg_TxFSM_0_aq & (((!u_uart_reg_TopTx_aq)))) # (!u_uart_reg_TxFSM_0_aq & ((u_uart_reg_TxFSM_1_aq & ((!u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_1_aq & (reg_tx_valid_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => reg_tx_valid_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx7359z3);

-- Location: LCCOMB_X17_Y16_N10
ix7359z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7359z1 = (nx7359z3 & (((u_uart_reg_TxFSM_0_aq)))) # (!nx7359z3 & (!u_uart_reg_TxFSM_0_aq & ((!u_uart_reg_TxFSM_1_aq) # (!nx7359z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx7359z2,
	datab => nx7359z3,
	datac => u_uart_reg_TxFSM_0_aq,
	datad => u_uart_reg_TxFSM_1_aq,
	combout => nx7359z1);

-- Location: FF_X17_Y16_N11
u_uart_reg_TxFSM_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx7359z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TxFSM_0_aq);

-- Location: LCCOMB_X17_Y16_N18
ix17862z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17862z4 = (u_uart_reg_TxFSM_0_aq & ((u_uart_reg_TxFSM_1_aq) # ((!u_uart_reg_TopTx_aq)))) # (!u_uart_reg_TxFSM_0_aq & ((u_uart_reg_TxFSM_1_aq & ((!u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_1_aq & (reg_tx_valid_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => reg_tx_valid_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx17862z4);

-- Location: LCCOMB_X22_Y15_N14
ix39360z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- b_1_a = (u_kirsch_reg_v_1_aq) # ((pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pb_a0_a_ainput_o,
	datac => write_fifo_reg_rd_en_delayed_aq,
	datad => u_kirsch_reg_v_1_aq,
	combout => b_1_a);

-- Location: LCCOMB_X22_Y14_N14
ix48848z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48848z2 = (nx25399z5 & (pb_a0_a_ainput_o & (nx25399z4 & write_fifo_reg_rd_en_delayed_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25399z5,
	datab => pb_a0_a_ainput_o,
	datac => nx25399z4,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => nx48848z2);

-- Location: LCCOMB_X22_Y14_N4
ix46854z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46854z1 = (nx48848z2 & ((nx37156z3 & ((u_kirsch_reg_wr_en_2_aq))) # (!nx37156z3 & (u_kirsch_reg_wr_en_1_aq)))) # (!nx48848z2 & (((u_kirsch_reg_wr_en_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => nx48848z2,
	datac => u_kirsch_reg_wr_en_2_aq,
	datad => nx37156z3,
	combout => nx46854z1);

-- Location: FF_X22_Y14_N5
u_kirsch_reg_wr_en_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46854z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_wr_en_2_aq);

-- Location: LCCOMB_X22_Y14_N2
ix48848z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48848z1 = (nx48848z2 & ((nx37156z3 & ((u_kirsch_reg_wr_en_0_aq))) # (!nx37156z3 & (!u_kirsch_reg_wr_en_2_aq)))) # (!nx48848z2 & (((u_kirsch_reg_wr_en_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx48848z2,
	datab => u_kirsch_reg_wr_en_2_aq,
	datac => u_kirsch_reg_wr_en_0_aq,
	datad => nx37156z3,
	combout => nx48848z1);

-- Location: FF_X22_Y14_N3
u_kirsch_reg_wr_en_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx48848z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_wr_en_0_aq);

-- Location: LCCOMB_X22_Y14_N16
ix47851z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47851z1 = (nx48848z2 & ((nx37156z3 & ((u_kirsch_reg_wr_en_1_aq))) # (!nx37156z3 & (!u_kirsch_reg_wr_en_0_aq)))) # (!nx48848z2 & (((u_kirsch_reg_wr_en_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datab => nx48848z2,
	datac => u_kirsch_reg_wr_en_1_aq,
	datad => nx37156z3,
	combout => nx47851z1);

-- Location: FF_X22_Y14_N17
u_kirsch_reg_wr_en_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx47851z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_wr_en_1_aq);

-- Location: LCCOMB_X23_Y15_N6
u_uart_reg_Rx_Reg_7_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_7_a0_combout = !u_uart_reg_Rx_r_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uart_reg_Rx_r_aq,
	combout => u_uart_reg_Rx_Reg_7_a0_combout);

-- Location: LCCOMB_X20_Y16_N18
ix44871z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx44871z1 = (u_uart_reg_TopRx_aq & u_uart_reg_RxFSM_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TopRx_aq,
	datad => u_uart_reg_RxFSM_3_aq,
	combout => nx44871z1);

-- Location: FF_X23_Y15_N7
u_uart_reg_Rx_Reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_7_a0_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_7_aq);

-- Location: LCCOMB_X23_Y15_N16
u_uart_reg_Rx_Reg_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_6_afeeder_combout = u_uart_reg_Rx_Reg_7_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_7_aq,
	combout => u_uart_reg_Rx_Reg_6_afeeder_combout);

-- Location: FF_X23_Y15_N17
u_uart_reg_Rx_Reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_6_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_6_aq);

-- Location: LCCOMB_X23_Y15_N28
u_uart_reg_Rx_Reg_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_5_afeeder_combout = u_uart_reg_Rx_Reg_6_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_6_aq,
	combout => u_uart_reg_Rx_Reg_5_afeeder_combout);

-- Location: FF_X23_Y15_N29
u_uart_reg_Rx_Reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_5_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_5_aq);

-- Location: LCCOMB_X23_Y15_N22
u_uart_reg_Rx_Reg_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_4_afeeder_combout = u_uart_reg_Rx_Reg_5_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_5_aq,
	combout => u_uart_reg_Rx_Reg_4_afeeder_combout);

-- Location: FF_X23_Y15_N23
u_uart_reg_Rx_Reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_4_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_4_aq);

-- Location: FF_X23_Y15_N27
u_uart_reg_Rx_Reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_4_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_3_aq);

-- Location: FF_X23_Y15_N31
u_uart_reg_Rx_Reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_3_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_2_aq);

-- Location: FF_X23_Y15_N5
u_uart_reg_Rx_Reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_2_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_1_aq);

-- Location: FF_X23_Y15_N3
u_uart_reg_Rx_Reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_1_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_0_aq);

-- Location: LCCOMB_X22_Y16_N2
u_uart_reg_Dout_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_0_afeeder_combout = u_uart_reg_Rx_Reg_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uart_reg_Rx_Reg_0_aq,
	combout => u_uart_reg_Dout_0_afeeder_combout);

-- Location: FF_X22_Y16_N3
u_uart_reg_Dout_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_0_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_0_aq);

-- Location: LCCOMB_X23_Y12_N4
ix875_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_894 = reg_q_0_dup_15_aq $ (VCC)
-- nx48733z1 = CARRY(reg_q_0_dup_15_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_15_aq,
	datad => VCC,
	combout => inc_d_0_dup_894,
	cout => nx48733z1);

-- Location: LCCOMB_X23_Y12_N0
ix58143z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58143z1 = (nx7605z1) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	datad => nx7605z1,
	combout => nx58143z1);

-- Location: FF_X23_Y12_N5
reg_q_0_dup_15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_894,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_15_aq);

-- Location: LCCOMB_X24_Y12_N8
ix840_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_858 = reg_q_0_dup_7_aq $ (VCC)
-- nx17767z1 = CARRY(reg_q_0_dup_7_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_7_aq,
	datad => VCC,
	combout => inc_d_0_dup_858,
	cout => nx17767z1);

-- Location: LCCOMB_X24_Y12_N30
ix58151z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58151z1 = (u_uart_reg_RxRDYi_aq) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_n_ainput_o,
	datad => u_uart_reg_RxRDYi_aq,
	combout => nx58151z1);

-- Location: FF_X24_Y12_N9
reg_q_0_dup_7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_858,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_7_aq);

-- Location: LCCOMB_X24_Y12_N24
ix49438z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(0) = (u_uart_reg_RxRDYi_aq & ((reg_q_0_dup_7_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_0_dup_15_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_15_aq,
	datac => reg_q_0_dup_7_aq,
	datad => u_uart_reg_RxRDYi_aq,
	combout => write_fifo_pointer(0));

-- Location: LCCOMB_X23_Y12_N6
ix877_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_896 = (reg_q_1_dup_14_aq & (!nx48733z1)) # (!reg_q_1_dup_14_aq & ((nx48733z1) # (GND)))
-- nx33159z1 = CARRY((!nx48733z1) # (!reg_q_1_dup_14_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_14_aq,
	datad => VCC,
	cin => nx48733z1,
	combout => inc_d_1_dup_896,
	cout => nx33159z1);

-- Location: FF_X23_Y12_N7
reg_q_1_dup_14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_896,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_14_aq);

-- Location: LCCOMB_X24_Y12_N10
ix842_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_860 = (reg_q_1_dup_6_aq & (!nx17767z1)) # (!reg_q_1_dup_6_aq & ((nx17767z1) # (GND)))
-- nx33341z1 = CARRY((!nx17767z1) # (!reg_q_1_dup_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_6_aq,
	datad => VCC,
	cin => nx17767z1,
	combout => inc_d_1_dup_860,
	cout => nx33341z1);

-- Location: FF_X24_Y12_N11
reg_q_1_dup_6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_860,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_6_aq);

-- Location: LCCOMB_X24_Y12_N2
ix49438z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(1) = (u_uart_reg_RxRDYi_aq & ((reg_q_1_dup_6_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_1_dup_14_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxRDYi_aq,
	datac => reg_q_1_dup_14_aq,
	datad => reg_q_1_dup_6_aq,
	combout => write_fifo_pointer(1));

-- Location: LCCOMB_X23_Y12_N8
ix879_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_898 = (reg_q_2_dup_13_aq & (nx33159z1 $ (GND))) # (!reg_q_2_dup_13_aq & (!nx33159z1 & VCC))
-- nx472z1 = CARRY((reg_q_2_dup_13_aq & !nx33159z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_13_aq,
	datad => VCC,
	cin => nx33159z1,
	combout => inc_d_2_dup_898,
	cout => nx472z1);

-- Location: FF_X23_Y12_N9
reg_q_2_dup_13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_898,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_13_aq);

-- Location: LCCOMB_X24_Y12_N12
ix844_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_862 = (reg_q_2_dup_5_aq & (nx33341z1 $ (GND))) # (!reg_q_2_dup_5_aq & (!nx33341z1 & VCC))
-- nx48915z1 = CARRY((reg_q_2_dup_5_aq & !nx33341z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_5_aq,
	datad => VCC,
	cin => nx33341z1,
	combout => inc_d_2_dup_862,
	cout => nx48915z1);

-- Location: FF_X24_Y12_N13
reg_q_2_dup_5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_862,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_5_aq);

-- Location: LCCOMB_X24_Y12_N28
ix49438z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(2) = (u_uart_reg_RxRDYi_aq & ((reg_q_2_dup_5_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_2_dup_13_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_13_aq,
	datab => u_uart_reg_RxRDYi_aq,
	datad => reg_q_2_dup_5_aq,
	combout => write_fifo_pointer(2));

-- Location: LCCOMB_X24_Y12_N14
ix846_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_864 = (reg_q_3_dup_4_aq & (!nx48915z1)) # (!reg_q_3_dup_4_aq & ((nx48915z1) # (GND)))
-- nx64489z1 = CARRY((!nx48915z1) # (!reg_q_3_dup_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_4_aq,
	datad => VCC,
	cin => nx48915z1,
	combout => inc_d_3_dup_864,
	cout => nx64489z1);

-- Location: FF_X24_Y12_N15
reg_q_3_dup_4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_864,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_4_aq);

-- Location: LCCOMB_X23_Y12_N10
ix881_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_900 = (reg_q_3_dup_12_aq & (!nx472z1)) # (!reg_q_3_dup_12_aq & ((nx472z1) # (GND)))
-- nx16046z1 = CARRY((!nx472z1) # (!reg_q_3_dup_12_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_12_aq,
	datad => VCC,
	cin => nx472z1,
	combout => inc_d_3_dup_900,
	cout => nx16046z1);

-- Location: FF_X23_Y12_N11
reg_q_3_dup_12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_900,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_12_aq);

-- Location: LCCOMB_X23_Y12_N28
ix49438z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(3) = (u_uart_reg_RxRDYi_aq & (reg_q_3_dup_4_aq)) # (!u_uart_reg_RxRDYi_aq & ((reg_q_3_dup_12_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxRDYi_aq,
	datac => reg_q_3_dup_4_aq,
	datad => reg_q_3_dup_12_aq,
	combout => write_fifo_pointer(3));

-- Location: LCCOMB_X23_Y12_N12
ix883_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_902 = (reg_q_4_dup_11_aq & (nx16046z1 $ (GND))) # (!reg_q_4_dup_11_aq & (!nx16046z1 & VCC))
-- nx31620z1 = CARRY((reg_q_4_dup_11_aq & !nx16046z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_11_aq,
	datad => VCC,
	cin => nx16046z1,
	combout => inc_d_4_dup_902,
	cout => nx31620z1);

-- Location: FF_X23_Y12_N13
reg_q_4_dup_11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_902,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_11_aq);

-- Location: LCCOMB_X24_Y12_N16
ix848_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_866 = (reg_q_4_dup_3_aq & (nx64489z1 $ (GND))) # (!reg_q_4_dup_3_aq & (!nx64489z1 & VCC))
-- nx32952z1 = CARRY((reg_q_4_dup_3_aq & !nx64489z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_3_aq,
	datad => VCC,
	cin => nx64489z1,
	combout => inc_d_4_dup_866,
	cout => nx32952z1);

-- Location: FF_X24_Y12_N17
reg_q_4_dup_3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_866,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_3_aq);

-- Location: LCCOMB_X24_Y12_N6
ix49438z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(4) = (u_uart_reg_RxRDYi_aq & ((reg_q_4_dup_3_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_4_dup_11_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_11_aq,
	datab => u_uart_reg_RxRDYi_aq,
	datad => reg_q_4_dup_3_aq,
	combout => write_fifo_pointer(4));

-- Location: LCCOMB_X23_Y12_N14
ix885_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_904 = (reg_q_5_dup_10_aq & (!nx31620z1)) # (!reg_q_5_dup_10_aq & ((nx31620z1) # (GND)))
-- nx47194z1 = CARRY((!nx31620z1) # (!reg_q_5_dup_10_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_10_aq,
	datad => VCC,
	cin => nx31620z1,
	combout => inc_d_5_dup_904,
	cout => nx47194z1);

-- Location: FF_X23_Y12_N15
reg_q_5_dup_10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_904,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_10_aq);

-- Location: LCCOMB_X24_Y12_N18
ix850_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_868 = (reg_q_5_dup_2_aq & (!nx32952z1)) # (!reg_q_5_dup_2_aq & ((nx32952z1) # (GND)))
-- nx17378z1 = CARRY((!nx32952z1) # (!reg_q_5_dup_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_2_aq,
	datad => VCC,
	cin => nx32952z1,
	combout => inc_d_5_dup_868,
	cout => nx17378z1);

-- Location: FF_X24_Y12_N19
reg_q_5_dup_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_868,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_2_aq);

-- Location: LCCOMB_X24_Y12_N0
ix49438z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(5) = (u_uart_reg_RxRDYi_aq & ((reg_q_5_dup_2_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_5_dup_10_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_10_aq,
	datab => u_uart_reg_RxRDYi_aq,
	datad => reg_q_5_dup_2_aq,
	combout => write_fifo_pointer(5));

-- Location: LCCOMB_X23_Y12_N16
ix887_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_906 = (reg_q_6_dup_9_aq & (nx47194z1 $ (GND))) # (!reg_q_6_dup_9_aq & (!nx47194z1 & VCC))
-- nx10555z1 = CARRY((reg_q_6_dup_9_aq & !nx47194z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_9_aq,
	datad => VCC,
	cin => nx47194z1,
	combout => inc_d_6_dup_906,
	cout => nx10555z1);

-- Location: FF_X23_Y12_N17
reg_q_6_dup_9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_906,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_9_aq);

-- Location: LCCOMB_X24_Y12_N20
ix852_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_870 = (reg_q_6_dup_1_aq & (nx17378z1 $ (GND))) # (!reg_q_6_dup_1_aq & (!nx17378z1 & VCC))
-- nx9591z1 = CARRY((reg_q_6_dup_1_aq & !nx17378z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_1_aq,
	datad => VCC,
	cin => nx17378z1,
	combout => inc_d_6_dup_870,
	cout => nx9591z1);

-- Location: FF_X24_Y12_N21
reg_q_6_dup_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_870,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_1_aq);

-- Location: LCCOMB_X24_Y12_N26
ix49438z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(6) = (u_uart_reg_RxRDYi_aq & ((reg_q_6_dup_1_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_6_dup_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxRDYi_aq,
	datac => reg_q_6_dup_9_aq,
	datad => reg_q_6_dup_1_aq,
	combout => write_fifo_pointer(6));

-- Location: LCCOMB_X24_Y12_N22
ix853_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_872 = reg_q_7_dup_0_aq $ (nx9591z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_0_aq,
	cin => nx9591z1,
	combout => inc_d_7_dup_872);

-- Location: FF_X24_Y12_N23
reg_q_7_dup_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_872,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_0_aq);

-- Location: LCCOMB_X23_Y12_N18
ix888_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_908 = reg_q_7_dup_8_aq $ (nx10555z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_8_aq,
	cin => nx10555z1,
	combout => inc_d_7_dup_908);

-- Location: FF_X23_Y12_N19
reg_q_7_dup_8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_908,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_8_aq);

-- Location: LCCOMB_X24_Y12_N4
ix49438z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(7) = (u_uart_reg_RxRDYi_aq & (reg_q_7_dup_0_aq)) # (!u_uart_reg_RxRDYi_aq & ((reg_q_7_dup_8_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxRDYi_aq,
	datac => reg_q_7_dup_0_aq,
	datad => reg_q_7_dup_8_aq,
	combout => write_fifo_pointer(7));

-- Location: LCCOMB_X22_Y16_N28
u_uart_reg_Dout_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_1_afeeder_combout = u_uart_reg_Rx_Reg_1_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_1_aq,
	combout => u_uart_reg_Dout_1_afeeder_combout);

-- Location: FF_X22_Y16_N29
u_uart_reg_Dout_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_1_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_1_aq);

-- Location: FF_X23_Y15_N1
u_uart_reg_Dout_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_2_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_2_aq);

-- Location: FF_X23_Y15_N9
u_uart_reg_Dout_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_3_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_3_aq);

-- Location: FF_X23_Y15_N21
u_uart_reg_Dout_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_4_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_4_aq);

-- Location: LCCOMB_X23_Y15_N24
u_uart_reg_Dout_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_5_afeeder_combout = u_uart_reg_Rx_Reg_5_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_5_aq,
	combout => u_uart_reg_Dout_5_afeeder_combout);

-- Location: FF_X23_Y15_N25
u_uart_reg_Dout_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_5_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_5_aq);

-- Location: LCCOMB_X23_Y15_N10
u_uart_reg_Dout_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_6_afeeder_combout = u_uart_reg_Rx_Reg_6_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_6_aq,
	combout => u_uart_reg_Dout_6_afeeder_combout);

-- Location: FF_X23_Y15_N11
u_uart_reg_Dout_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_6_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_6_aq);

-- Location: LCCOMB_X22_Y16_N30
u_uart_reg_Dout_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_7_afeeder_combout = u_uart_reg_Rx_Reg_7_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_7_aq,
	combout => u_uart_reg_Dout_7_afeeder_combout);

-- Location: FF_X22_Y16_N31
u_uart_reg_Dout_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_7_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_7_aq);

-- Location: M9K_X26_Y15_N0
write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:write_fifo_mem_mem|altsyncram:ix64056z29481|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => u_uart_reg_RxRDYi_aq,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: FF_X20_Y14_N25
write_fifo_reg_q_saved_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_0_aq);

-- Location: LCCOMB_X20_Y14_N24
ix22500z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(0) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0),
	datac => write_fifo_reg_q_saved_0_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(0));

-- Location: FF_X24_Y15_N13
write_fifo_reg_q_saved_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_1_aq);

-- Location: LCCOMB_X25_Y15_N24
ix22500z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(1) = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1)))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => write_fifo_reg_q_saved_1_aq,
	datad => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1),
	combout => k_i_pixel(1));

-- Location: FF_X25_Y15_N29
write_fifo_reg_q_saved_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_2_aq);

-- Location: LCCOMB_X25_Y15_N28
ix22500z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(2) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2),
	datac => write_fifo_reg_q_saved_2_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(2));

-- Location: FF_X20_Y14_N7
write_fifo_reg_q_saved_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_3_aq);

-- Location: LCCOMB_X20_Y14_N6
ix22500z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(3) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3),
	datac => write_fifo_reg_q_saved_3_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(3));

-- Location: FF_X24_Y15_N9
write_fifo_reg_q_saved_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_4_aq);

-- Location: LCCOMB_X25_Y15_N22
ix59319z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(4) = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4)))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_q_saved_4_aq,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datad => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4),
	combout => k_i_pixel(4));

-- Location: FF_X24_Y15_N31
write_fifo_reg_q_saved_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_5_aq);

-- Location: LCCOMB_X24_Y15_N30
ix59319z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(5) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5),
	datac => write_fifo_reg_q_saved_5_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(5));

-- Location: FF_X24_Y15_N27
write_fifo_reg_q_saved_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_6_aq);

-- Location: LCCOMB_X24_Y15_N26
ix59319z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(6) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6),
	datac => write_fifo_reg_q_saved_6_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(6));

-- Location: FF_X24_Y15_N25
write_fifo_reg_q_saved_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_7_aq);

-- Location: LCCOMB_X24_Y15_N24
ix59319z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(7) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7),
	datac => write_fifo_reg_q_saved_7_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(7));

-- Location: M9K_X26_Y16_N0
u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_4:u_kirsch_mem_gen_2_m_mem|altsyncram:ix64056z29485|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => u_kirsch_reg_wr_en_2_aq,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: M9K_X26_Y17_N0
u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:u_kirsch_mem_gen_0_m_mem|altsyncram:ix64056z29483|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X24_Y18_N16
ix14288z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14288z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(7))) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(7)))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(7),
	datad => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx14288z1);

-- Location: LCCOMB_X25_Y16_N8
u_kirsch_reg_r_c_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_7_afeeder_combout = nx14288z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx14288z1,
	combout => u_kirsch_reg_r_c_7_afeeder_combout);

-- Location: M9K_X26_Y14_N0
u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_3:u_kirsch_mem_gen_1_m_mem|altsyncram:ix64056z29484|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => u_kirsch_reg_wr_en_1_aq,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: FF_X25_Y16_N9
u_kirsch_reg_r_c_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_7_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_7_aq);

-- Location: LCCOMB_X24_Y18_N10
ix59667z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(7) = (u_kirsch_reg_wr_en_0_aq & ((nx14288z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7),
	datac => u_kirsch_reg_wr_en_0_aq,
	datad => nx14288z1,
	combout => u_kirsch_M_a(7));

-- Location: LCCOMB_X24_Y18_N28
ix59667z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(7) = (nx26352z4 & ((u_kirsch_M_a(7)))) # (!nx26352z4 & (u_kirsch_reg_r_c_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => u_kirsch_reg_r_c_7_aq,
	datad => u_kirsch_M_a(7),
	combout => u_kirsch_r_b_11n3ss1(7));

-- Location: LCCOMB_X20_Y15_N20
ix25991z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25991z1 = (nx26352z4 & (reg_q_0_dup_90_aq & (nx26352z2))) # (!nx26352z4 & (((u_kirsch_reg_v_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_90_aq,
	datab => nx26352z2,
	datac => u_kirsch_reg_v_3_aq,
	datad => nx26352z4,
	combout => nx25991z1);

-- Location: FF_X24_Y18_N29
u_kirsch_reg_r_b_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(7),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_7_aq);

-- Location: LCCOMB_X24_Y18_N4
ix2550z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(7) = (nx26352z4 & ((u_kirsch_M_a(7)))) # (!nx26352z4 & (u_kirsch_reg_r_b_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_b_7_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(7),
	combout => u_kirsch_r_a_11n3ss1(7));

-- Location: LCCOMB_X20_Y15_N10
ix2550z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2550z1 = (nx26352z4 & (!reg_q_0_dup_90_aq & (nx26352z2))) # (!nx26352z4 & (((u_kirsch_reg_v_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_90_aq,
	datab => nx26352z2,
	datac => u_kirsch_reg_v_3_aq,
	datad => nx26352z4,
	combout => nx2550z1);

-- Location: FF_X24_Y18_N5
u_kirsch_reg_r_a_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(7),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_7_aq);

-- Location: LCCOMB_X22_Y14_N22
ix39360z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- b_0_a = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq) # ((!u_kirsch_reg_v_1_aq & u_kirsch_reg_v_2_aq)))) # (!pb_a0_a_ainput_o & (!u_kirsch_reg_v_1_aq & (u_kirsch_reg_v_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => u_kirsch_reg_v_1_aq,
	datac => u_kirsch_reg_v_2_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => b_0_a);

-- Location: LCCOMB_X24_Y18_N6
ix22707z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22707z1 = (u_kirsch_reg_wr_en_0_aq & ((u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(7))) # (!u_kirsch_reg_wr_en_1_aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7)))))) # 
-- (!u_kirsch_reg_wr_en_0_aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(7),
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_reg_wr_en_1_aq,
	datad => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(7),
	combout => nx22707z1);

-- Location: LCCOMB_X25_Y16_N18
u_kirsch_reg_r_d_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_7_afeeder_combout = nx22707z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx22707z1,
	combout => u_kirsch_reg_r_d_7_afeeder_combout);

-- Location: FF_X25_Y16_N19
u_kirsch_reg_r_d_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_7_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(7),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_7_aq);

-- Location: FF_X24_Y15_N19
u_kirsch_reg_r_e_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_7_aq);

-- Location: LCCOMB_X24_Y16_N2
ix25991z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(7) = (nx26352z4 & ((k_i_pixel(7)))) # (!nx26352z4 & (u_kirsch_reg_r_e_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datac => u_kirsch_reg_r_e_7_aq,
	datad => k_i_pixel(7),
	combout => u_kirsch_r_f_11n3ss1(7));

-- Location: FF_X24_Y16_N3
u_kirsch_reg_r_f_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(7),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_7_aq);

-- Location: LCCOMB_X24_Y18_N12
ix39360z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39360z1 = (b_0_a & ((u_kirsch_reg_r_d_7_aq) # ((b_1_a)))) # (!b_0_a & (((u_kirsch_reg_r_f_7_aq & !b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_0_a,
	datab => u_kirsch_reg_r_d_7_aq,
	datac => u_kirsch_reg_r_f_7_aq,
	datad => b_1_a,
	combout => nx39360z1);

-- Location: LCCOMB_X24_Y18_N30
ix39360z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(7) = (b_1_a & ((nx39360z1 & ((u_kirsch_reg_r_a_7_aq))) # (!nx39360z1 & (u_kirsch_reg_r_b_7_aq)))) # (!b_1_a & (((nx39360z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_b_7_aq,
	datac => u_kirsch_reg_r_a_7_aq,
	datad => nx39360z1,
	combout => u_kirsch_i3(7));

-- Location: LCCOMB_X23_Y16_N14
ix47964z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(7) = (nx26352z4 & (k_i_pixel(7))) # (!nx26352z4 & ((u_kirsch_reg_r_f_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => k_i_pixel(7),
	datad => u_kirsch_reg_r_f_7_aq,
	combout => u_kirsch_r_g_11n3ss1(7));

-- Location: FF_X23_Y16_N15
u_kirsch_reg_r_g_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(7),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_7_aq);

-- Location: LCCOMB_X23_Y18_N22
ix39360z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39360z2 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & (u_kirsch_reg_r_e_7_aq)) # (!b_0_a & ((u_kirsch_reg_r_g_7_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_e_7_aq,
	datab => u_kirsch_reg_r_g_7_aq,
	datac => b_1_a,
	datad => b_0_a,
	combout => nx39360z2);

-- Location: LCCOMB_X24_Y18_N0
ix734z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(7) = (u_kirsch_reg_wr_en_0_aq & ((nx22707z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(7),
	datad => nx22707z1,
	combout => u_kirsch_M_b(7));

-- Location: LCCOMB_X24_Y18_N22
ix734z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(7) = (nx26352z4 & ((u_kirsch_M_b(7)))) # (!nx26352z4 & (u_kirsch_reg_r_d_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_d_7_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(7),
	combout => u_kirsch_r_i_11n3ss1(7));

-- Location: FF_X24_Y18_N23
u_kirsch_reg_r_i_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(7),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_7_aq);

-- Location: LCCOMB_X24_Y18_N18
ix56383z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(7) = (nx26352z4 & ((u_kirsch_M_b(7)))) # (!nx26352z4 & (u_kirsch_reg_r_i_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_i_7_aq,
	datab => nx26352z4,
	datad => u_kirsch_M_b(7),
	combout => u_kirsch_r_h_11n3ss1(7));

-- Location: FF_X24_Y18_N19
u_kirsch_reg_r_h_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(7),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_7_aq);

-- Location: LCCOMB_X23_Y18_N24
ix39360z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(7) = (nx39360z2 & ((u_kirsch_reg_r_h_7_aq) # ((!b_1_a)))) # (!nx39360z2 & (((u_kirsch_reg_r_c_7_aq & b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx39360z2,
	datab => u_kirsch_reg_r_h_7_aq,
	datac => u_kirsch_reg_r_c_7_aq,
	datad => b_1_a,
	combout => u_kirsch_i4(7));

-- Location: LCCOMB_X24_Y16_N12
ix23704z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23704z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(6))) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6)))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(6),
	datad => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6),
	combout => nx23704z1);

-- Location: LCCOMB_X24_Y16_N22
ix65273z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(6) = (u_kirsch_reg_wr_en_0_aq & ((nx23704z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(6),
	datad => nx23704z1,
	combout => u_kirsch_M_b(6));

-- Location: LCCOMB_X25_Y16_N4
u_kirsch_reg_r_d_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_6_afeeder_combout = nx23704z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx23704z1,
	combout => u_kirsch_reg_r_d_6_afeeder_combout);

-- Location: FF_X25_Y16_N5
u_kirsch_reg_r_d_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_6_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(6),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_6_aq);

-- Location: LCCOMB_X24_Y16_N14
ix65273z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(6) = (nx26352z4 & (u_kirsch_M_b(6))) # (!nx26352z4 & ((u_kirsch_reg_r_d_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datac => u_kirsch_M_b(6),
	datad => u_kirsch_reg_r_d_6_aq,
	combout => u_kirsch_r_i_11n3ss1(6));

-- Location: FF_X24_Y16_N15
u_kirsch_reg_r_i_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(6),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_6_aq);

-- Location: LCCOMB_X24_Y16_N8
ix57380z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(6) = (nx26352z4 & ((u_kirsch_M_b(6)))) # (!nx26352z4 & (u_kirsch_reg_r_i_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_i_6_aq,
	datac => u_kirsch_M_b(6),
	datad => nx26352z4,
	combout => u_kirsch_r_h_11n3ss1(6));

-- Location: FF_X24_Y16_N9
u_kirsch_reg_r_h_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(6),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_6_aq);

-- Location: LCCOMB_X24_Y16_N28
ix15285z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15285z1 = (u_kirsch_reg_wr_en_0_aq & ((u_kirsch_reg_wr_en_1_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(6)))) # (!u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(6))))) # 
-- (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(6),
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(6),
	datad => u_kirsch_reg_wr_en_1_aq,
	combout => nx15285z1);

-- Location: LCCOMB_X25_Y16_N22
u_kirsch_reg_r_c_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_6_afeeder_combout = nx15285z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx15285z1,
	combout => u_kirsch_reg_r_c_6_afeeder_combout);

-- Location: FF_X25_Y16_N23
u_kirsch_reg_r_c_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_6_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_6_aq);

-- Location: FF_X24_Y15_N7
u_kirsch_reg_r_e_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_6_aq);

-- Location: LCCOMB_X24_Y16_N26
ix24994z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(6) = (nx26352z4 & ((k_i_pixel(6)))) # (!nx26352z4 & (u_kirsch_reg_r_e_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_e_6_aq,
	datac => k_i_pixel(6),
	datad => nx26352z4,
	combout => u_kirsch_r_f_11n3ss1(6));

-- Location: FF_X24_Y16_N27
u_kirsch_reg_r_f_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(6),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_6_aq);

-- Location: LCCOMB_X24_Y16_N18
ix48961z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(6) = (nx26352z4 & ((k_i_pixel(6)))) # (!nx26352z4 & (u_kirsch_reg_r_f_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_6_aq,
	datac => k_i_pixel(6),
	datad => nx26352z4,
	combout => u_kirsch_r_g_11n3ss1(6));

-- Location: FF_X24_Y16_N19
u_kirsch_reg_r_g_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(6),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_6_aq);

-- Location: LCCOMB_X24_Y16_N6
ix42507z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42507z2 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & ((u_kirsch_reg_r_e_6_aq))) # (!b_0_a & (u_kirsch_reg_r_g_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_g_6_aq,
	datac => u_kirsch_reg_r_e_6_aq,
	datad => b_0_a,
	combout => nx42507z2);

-- Location: LCCOMB_X24_Y16_N24
ix42507z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(6) = (b_1_a & ((nx42507z2 & (u_kirsch_reg_r_h_6_aq)) # (!nx42507z2 & ((u_kirsch_reg_r_c_6_aq))))) # (!b_1_a & (((nx42507z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_h_6_aq,
	datab => u_kirsch_reg_r_c_6_aq,
	datac => b_1_a,
	datad => nx42507z2,
	combout => u_kirsch_i4(6));

-- Location: LCCOMB_X24_Y16_N30
ix58670z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(6) = (u_kirsch_reg_wr_en_0_aq & ((nx15285z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(6),
	datac => u_kirsch_reg_wr_en_0_aq,
	datad => nx15285z1,
	combout => u_kirsch_M_a(6));

-- Location: LCCOMB_X24_Y16_N0
ix58670z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(6) = (nx26352z4 & (u_kirsch_M_a(6))) # (!nx26352z4 & ((u_kirsch_reg_r_c_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datac => u_kirsch_M_a(6),
	datad => u_kirsch_reg_r_c_6_aq,
	combout => u_kirsch_r_b_11n3ss1(6));

-- Location: FF_X24_Y16_N1
u_kirsch_reg_r_b_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(6),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_6_aq);

-- Location: LCCOMB_X24_Y16_N20
ix1553z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(6) = (nx26352z4 & (u_kirsch_M_a(6))) # (!nx26352z4 & ((u_kirsch_reg_r_b_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datac => u_kirsch_M_a(6),
	datad => u_kirsch_reg_r_b_6_aq,
	combout => u_kirsch_r_a_11n3ss1(6));

-- Location: FF_X24_Y16_N21
u_kirsch_reg_r_a_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(6),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_6_aq);

-- Location: LCCOMB_X24_Y16_N10
ix42507z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42507z1 = (b_0_a & (((b_1_a) # (u_kirsch_reg_r_d_6_aq)))) # (!b_0_a & (u_kirsch_reg_r_f_6_aq & (!b_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_6_aq,
	datab => b_0_a,
	datac => b_1_a,
	datad => u_kirsch_reg_r_d_6_aq,
	combout => nx42507z1);

-- Location: LCCOMB_X24_Y16_N4
ix42507z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(6) = (b_1_a & ((nx42507z1 & ((u_kirsch_reg_r_a_6_aq))) # (!nx42507z1 & (u_kirsch_reg_r_b_6_aq)))) # (!b_1_a & (((nx42507z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_6_aq,
	datab => u_kirsch_reg_r_a_6_aq,
	datac => b_1_a,
	datad => nx42507z1,
	combout => u_kirsch_i3(6));

-- Location: LCCOMB_X25_Y17_N6
ix16282z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16282z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(5)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(5))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(5),
	datac => u_kirsch_reg_wr_en_0_aq,
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(5),
	combout => nx16282z1);

-- Location: LCCOMB_X25_Y16_N2
u_kirsch_reg_r_c_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_5_afeeder_combout = nx16282z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx16282z1,
	combout => u_kirsch_reg_r_c_5_afeeder_combout);

-- Location: FF_X25_Y16_N3
u_kirsch_reg_r_c_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_5_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_5_aq);

-- Location: FF_X24_Y15_N17
u_kirsch_reg_r_e_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_5_aq);

-- Location: LCCOMB_X24_Y15_N12
ix23997z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(5) = (nx26352z4 & ((k_i_pixel(5)))) # (!nx26352z4 & (u_kirsch_reg_r_e_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datab => u_kirsch_reg_r_e_5_aq,
	datad => k_i_pixel(5),
	combout => u_kirsch_r_f_11n3ss1(5));

-- Location: LCCOMB_X25_Y15_N26
u_kirsch_reg_r_f_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_f_5_afeeder_combout = u_kirsch_r_f_11n3ss1(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_r_f_11n3ss1(5),
	combout => u_kirsch_reg_r_f_5_afeeder_combout);

-- Location: FF_X25_Y15_N27
u_kirsch_reg_r_f_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_f_5_afeeder_combout,
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_5_aq);

-- Location: LCCOMB_X27_Y16_N0
ix49958z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(5) = (nx26352z4 & ((k_i_pixel(5)))) # (!nx26352z4 & (u_kirsch_reg_r_f_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_f_5_aq,
	datac => nx26352z4,
	datad => k_i_pixel(5),
	combout => u_kirsch_r_g_11n3ss1(5));

-- Location: FF_X27_Y16_N1
u_kirsch_reg_r_g_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(5),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_5_aq);

-- Location: LCCOMB_X25_Y17_N4
ix11359z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11359z2 = (b_0_a & ((u_kirsch_reg_r_e_5_aq) # ((b_1_a)))) # (!b_0_a & (((u_kirsch_reg_r_g_5_aq & !b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_e_5_aq,
	datab => u_kirsch_reg_r_g_5_aq,
	datac => b_0_a,
	datad => b_1_a,
	combout => nx11359z2);

-- Location: LCCOMB_X25_Y17_N16
ix24701z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24701z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(5)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5),
	datad => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx24701z1);

-- Location: LCCOMB_X25_Y16_N24
u_kirsch_reg_r_d_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_5_afeeder_combout = nx24701z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx24701z1,
	combout => u_kirsch_reg_r_d_5_afeeder_combout);

-- Location: FF_X25_Y16_N25
u_kirsch_reg_r_d_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_5_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(5),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_5_aq);

-- Location: LCCOMB_X25_Y17_N2
ix64276z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(5) = (u_kirsch_reg_wr_en_0_aq & (nx24701z1)) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => nx24701z1,
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(5),
	combout => u_kirsch_M_b(5));

-- Location: LCCOMB_X25_Y17_N14
ix64276z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(5) = (nx26352z4 & ((u_kirsch_M_b(5)))) # (!nx26352z4 & (u_kirsch_reg_r_d_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_5_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(5),
	combout => u_kirsch_r_i_11n3ss1(5));

-- Location: FF_X25_Y17_N15
u_kirsch_reg_r_i_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(5),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_5_aq);

-- Location: LCCOMB_X25_Y17_N12
ix58377z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(5) = (nx26352z4 & ((u_kirsch_M_b(5)))) # (!nx26352z4 & (u_kirsch_reg_r_i_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_i_5_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(5),
	combout => u_kirsch_r_h_11n3ss1(5));

-- Location: FF_X25_Y17_N13
u_kirsch_reg_r_h_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(5),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_5_aq);

-- Location: LCCOMB_X25_Y17_N22
ix11359z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(5) = (b_1_a & ((nx11359z2 & ((u_kirsch_reg_r_h_5_aq))) # (!nx11359z2 & (u_kirsch_reg_r_c_5_aq)))) # (!b_1_a & (((nx11359z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_c_5_aq,
	datac => nx11359z2,
	datad => u_kirsch_reg_r_h_5_aq,
	combout => u_kirsch_i4(5));

-- Location: LCCOMB_X25_Y17_N24
ix57673z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(5) = (u_kirsch_reg_wr_en_0_aq & (nx16282z1)) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx16282z1,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(5),
	combout => u_kirsch_M_a(5));

-- Location: LCCOMB_X25_Y17_N26
ix57673z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(5) = (nx26352z4 & ((u_kirsch_M_a(5)))) # (!nx26352z4 & (u_kirsch_reg_r_c_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_c_5_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(5),
	combout => u_kirsch_r_b_11n3ss1(5));

-- Location: FF_X25_Y17_N27
u_kirsch_reg_r_b_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(5),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_5_aq);

-- Location: LCCOMB_X25_Y17_N28
ix556z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(5) = (nx26352z4 & ((u_kirsch_M_a(5)))) # (!nx26352z4 & (u_kirsch_reg_r_b_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_5_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(5),
	combout => u_kirsch_r_a_11n3ss1(5));

-- Location: FF_X25_Y17_N29
u_kirsch_reg_r_a_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(5),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_5_aq);

-- Location: LCCOMB_X25_Y17_N0
ix11359z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11359z1 = (b_0_a & ((u_kirsch_reg_r_d_5_aq) # ((b_1_a)))) # (!b_0_a & (((u_kirsch_reg_r_f_5_aq & !b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_5_aq,
	datab => b_0_a,
	datac => u_kirsch_reg_r_f_5_aq,
	datad => b_1_a,
	combout => nx11359z1);

-- Location: LCCOMB_X25_Y17_N10
ix11359z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(5) = (b_1_a & ((nx11359z1 & (u_kirsch_reg_r_a_5_aq)) # (!nx11359z1 & ((u_kirsch_reg_r_b_5_aq))))) # (!b_1_a & (((nx11359z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_a_5_aq,
	datac => u_kirsch_reg_r_b_5_aq,
	datad => nx11359z1,
	combout => u_kirsch_i3(5));

-- Location: LCCOMB_X22_Y17_N30
ix25698z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25698z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(4))) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4)))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx25698z1);

-- Location: LCCOMB_X25_Y16_N12
u_kirsch_reg_r_d_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_4_afeeder_combout = nx25698z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx25698z1,
	combout => u_kirsch_reg_r_d_4_afeeder_combout);

-- Location: FF_X25_Y16_N13
u_kirsch_reg_r_d_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_4_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(4),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_4_aq);

-- Location: FF_X24_Y15_N11
u_kirsch_reg_r_e_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_4_aq);

-- Location: LCCOMB_X22_Y17_N4
ix23000z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(4) = (nx26352z4 & ((k_i_pixel(4)))) # (!nx26352z4 & (u_kirsch_reg_r_e_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26352z4,
	datac => u_kirsch_reg_r_e_4_aq,
	datad => k_i_pixel(4),
	combout => u_kirsch_r_f_11n3ss1(4));

-- Location: FF_X22_Y17_N5
u_kirsch_reg_r_f_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(4),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_4_aq);

-- Location: LCCOMB_X22_Y17_N6
ix19789z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19789z1 = (b_0_a & ((u_kirsch_reg_r_d_4_aq) # ((b_1_a)))) # (!b_0_a & (((u_kirsch_reg_r_f_4_aq & !b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_0_a,
	datab => u_kirsch_reg_r_d_4_aq,
	datac => u_kirsch_reg_r_f_4_aq,
	datad => b_1_a,
	combout => nx19789z1);

-- Location: LCCOMB_X22_Y17_N14
ix17279z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17279z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(4)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(4))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(4),
	combout => nx17279z1);

-- Location: LCCOMB_X23_Y14_N8
u_kirsch_reg_r_c_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_4_afeeder_combout = nx17279z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx17279z1,
	combout => u_kirsch_reg_r_c_4_afeeder_combout);

-- Location: FF_X23_Y14_N9
u_kirsch_reg_r_c_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_4_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_4_aq);

-- Location: LCCOMB_X22_Y17_N24
ix56676z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(4) = (u_kirsch_reg_wr_en_0_aq & (nx17279z1)) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => nx17279z1,
	datad => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => u_kirsch_M_a(4));

-- Location: LCCOMB_X22_Y17_N2
ix56676z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(4) = (nx26352z4 & ((u_kirsch_M_a(4)))) # (!nx26352z4 & (u_kirsch_reg_r_c_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_4_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(4),
	combout => u_kirsch_r_b_11n3ss1(4));

-- Location: FF_X22_Y17_N3
u_kirsch_reg_r_b_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(4),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_4_aq);

-- Location: LCCOMB_X22_Y17_N20
ix65095z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(4) = (nx26352z4 & ((u_kirsch_M_a(4)))) # (!nx26352z4 & (u_kirsch_reg_r_b_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_b_4_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(4),
	combout => u_kirsch_r_a_11n3ss1(4));

-- Location: FF_X22_Y17_N21
u_kirsch_reg_r_a_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(4),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_4_aq);

-- Location: LCCOMB_X22_Y17_N0
ix19789z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(4) = (nx19789z1 & (((u_kirsch_reg_r_a_4_aq) # (!b_1_a)))) # (!nx19789z1 & (u_kirsch_reg_r_b_4_aq & ((b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19789z1,
	datab => u_kirsch_reg_r_b_4_aq,
	datac => u_kirsch_reg_r_a_4_aq,
	datad => b_1_a,
	combout => u_kirsch_i3(4));

-- Location: LCCOMB_X22_Y17_N16
ix63279z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(4) = (u_kirsch_reg_wr_en_0_aq & (nx25698z1)) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => nx25698z1,
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(4),
	combout => u_kirsch_M_b(4));

-- Location: LCCOMB_X22_Y17_N22
ix63279z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(4) = (nx26352z4 & ((u_kirsch_M_b(4)))) # (!nx26352z4 & (u_kirsch_reg_r_d_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_d_4_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(4),
	combout => u_kirsch_r_i_11n3ss1(4));

-- Location: FF_X22_Y17_N23
u_kirsch_reg_r_i_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(4),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_4_aq);

-- Location: LCCOMB_X22_Y17_N26
ix59374z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(4) = (nx26352z4 & ((u_kirsch_M_b(4)))) # (!nx26352z4 & (u_kirsch_reg_r_i_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_i_4_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(4),
	combout => u_kirsch_r_h_11n3ss1(4));

-- Location: FF_X22_Y17_N27
u_kirsch_reg_r_h_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(4),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_4_aq);

-- Location: LCCOMB_X24_Y17_N2
ix50955z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(4) = (nx26352z4 & ((k_i_pixel(4)))) # (!nx26352z4 & (u_kirsch_reg_r_f_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => u_kirsch_reg_r_f_4_aq,
	datad => k_i_pixel(4),
	combout => u_kirsch_r_g_11n3ss1(4));

-- Location: FF_X24_Y17_N3
u_kirsch_reg_r_g_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(4),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_4_aq);

-- Location: LCCOMB_X22_Y17_N10
ix19789z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19789z2 = (b_0_a & (((u_kirsch_reg_r_e_4_aq) # (b_1_a)))) # (!b_0_a & (u_kirsch_reg_r_g_4_aq & ((!b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_0_a,
	datab => u_kirsch_reg_r_g_4_aq,
	datac => u_kirsch_reg_r_e_4_aq,
	datad => b_1_a,
	combout => nx19789z2);

-- Location: LCCOMB_X22_Y17_N12
ix19789z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(4) = (b_1_a & ((nx19789z2 & ((u_kirsch_reg_r_h_4_aq))) # (!nx19789z2 & (u_kirsch_reg_r_c_4_aq)))) # (!b_1_a & (((nx19789z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_4_aq,
	datab => b_1_a,
	datac => u_kirsch_reg_r_h_4_aq,
	datad => nx19789z2,
	combout => u_kirsch_i4(4));

-- Location: LCCOMB_X23_Y17_N0
ix18276z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18276z1 = (u_kirsch_reg_wr_en_0_aq & ((u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(3))) # (!u_kirsch_reg_wr_en_1_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(3)))))) # 
-- (!u_kirsch_reg_wr_en_0_aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datab => u_kirsch_reg_wr_en_1_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(3),
	datad => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx18276z1);

-- Location: LCCOMB_X27_Y15_N8
u_kirsch_reg_r_c_3_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_3_afeeder_combout = nx18276z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx18276z1,
	combout => u_kirsch_reg_r_c_3_afeeder_combout);

-- Location: FF_X27_Y15_N9
u_kirsch_reg_r_c_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_3_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_3_aq);

-- Location: FF_X23_Y18_N21
u_kirsch_reg_r_e_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_3_aq);

-- Location: LCCOMB_X23_Y17_N22
ix22003z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(3) = (nx26352z4 & ((k_i_pixel(3)))) # (!nx26352z4 & (u_kirsch_reg_r_e_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_e_3_aq,
	datac => nx26352z4,
	datad => k_i_pixel(3),
	combout => u_kirsch_r_f_11n3ss1(3));

-- Location: FF_X23_Y17_N23
u_kirsch_reg_r_f_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(3),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_3_aq);

-- Location: LCCOMB_X23_Y17_N4
ix51952z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(3) = (nx26352z4 & ((k_i_pixel(3)))) # (!nx26352z4 & (u_kirsch_reg_r_f_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_3_aq,
	datac => nx26352z4,
	datad => k_i_pixel(3),
	combout => u_kirsch_r_g_11n3ss1(3));

-- Location: FF_X23_Y17_N5
u_kirsch_reg_r_g_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(3),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_3_aq);

-- Location: LCCOMB_X22_Y15_N4
ix3458z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3458z2 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & ((u_kirsch_reg_r_e_3_aq))) # (!b_0_a & (u_kirsch_reg_r_g_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_3_aq,
	datab => b_1_a,
	datac => b_0_a,
	datad => u_kirsch_reg_r_e_3_aq,
	combout => nx3458z2);

-- Location: LCCOMB_X23_Y17_N6
ix26695z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26695z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(3)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3),
	datab => u_kirsch_reg_wr_en_1_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(3),
	datad => u_kirsch_reg_wr_en_0_aq,
	combout => nx26695z1);

-- Location: LCCOMB_X23_Y14_N26
u_kirsch_reg_r_d_3_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_3_afeeder_combout = nx26695z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx26695z1,
	combout => u_kirsch_reg_r_d_3_afeeder_combout);

-- Location: FF_X23_Y14_N27
u_kirsch_reg_r_d_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_3_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(3),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_3_aq);

-- Location: LCCOMB_X23_Y17_N24
ix62282z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(3) = (u_kirsch_reg_wr_en_0_aq & ((nx26695z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(3),
	datad => nx26695z1,
	combout => u_kirsch_M_b(3));

-- Location: LCCOMB_X23_Y17_N28
ix62282z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(3) = (nx26352z4 & ((u_kirsch_M_b(3)))) # (!nx26352z4 & (u_kirsch_reg_r_d_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_3_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(3),
	combout => u_kirsch_r_i_11n3ss1(3));

-- Location: FF_X23_Y17_N29
u_kirsch_reg_r_i_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(3),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_3_aq);

-- Location: LCCOMB_X23_Y17_N10
ix60371z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(3) = (nx26352z4 & ((u_kirsch_M_b(3)))) # (!nx26352z4 & (u_kirsch_reg_r_i_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_i_3_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(3),
	combout => u_kirsch_r_h_11n3ss1(3));

-- Location: FF_X23_Y17_N11
u_kirsch_reg_r_h_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(3),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_3_aq);

-- Location: LCCOMB_X22_Y15_N16
ix3458z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(3) = (b_1_a & ((nx3458z2 & ((u_kirsch_reg_r_h_3_aq))) # (!nx3458z2 & (u_kirsch_reg_r_c_3_aq)))) # (!b_1_a & (((nx3458z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_3_aq,
	datab => b_1_a,
	datac => nx3458z2,
	datad => u_kirsch_reg_r_h_3_aq,
	combout => u_kirsch_i4(3));

-- Location: LCCOMB_X23_Y17_N2
ix55679z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(3) = (u_kirsch_reg_wr_en_0_aq & ((nx18276z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(3),
	datad => nx18276z1,
	combout => u_kirsch_M_a(3));

-- Location: LCCOMB_X23_Y17_N20
ix55679z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(3) = (nx26352z4 & ((u_kirsch_M_a(3)))) # (!nx26352z4 & (u_kirsch_reg_r_c_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_c_3_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(3),
	combout => u_kirsch_r_b_11n3ss1(3));

-- Location: FF_X23_Y17_N21
u_kirsch_reg_r_b_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(3),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_3_aq);

-- Location: LCCOMB_X23_Y17_N14
ix64098z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(3) = (nx26352z4 & ((u_kirsch_M_a(3)))) # (!nx26352z4 & (u_kirsch_reg_r_b_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_b_3_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(3),
	combout => u_kirsch_r_a_11n3ss1(3));

-- Location: FF_X23_Y17_N15
u_kirsch_reg_r_a_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(3),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_3_aq);

-- Location: LCCOMB_X23_Y17_N8
ix3458z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3458z1 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & (u_kirsch_reg_r_d_3_aq)) # (!b_0_a & ((u_kirsch_reg_r_f_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_3_aq,
	datab => b_1_a,
	datac => u_kirsch_reg_r_f_3_aq,
	datad => b_0_a,
	combout => nx3458z1);

-- Location: LCCOMB_X23_Y17_N18
ix3458z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(3) = (b_1_a & ((nx3458z1 & (u_kirsch_reg_r_a_3_aq)) # (!nx3458z1 & ((u_kirsch_reg_r_b_3_aq))))) # (!b_1_a & (((nx3458z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_a_3_aq,
	datac => nx3458z1,
	datad => u_kirsch_reg_r_b_3_aq,
	combout => u_kirsch_i3(3));

-- Location: LCCOMB_X25_Y16_N0
ix27692z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27692z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(2)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2),
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(2),
	datad => u_kirsch_reg_wr_en_0_aq,
	combout => nx27692z1);

-- Location: LCCOMB_X25_Y16_N6
u_kirsch_reg_r_d_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_2_afeeder_combout = nx27692z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx27692z1,
	combout => u_kirsch_reg_r_d_2_afeeder_combout);

-- Location: FF_X25_Y16_N7
u_kirsch_reg_r_d_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_2_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(2),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_2_aq);

-- Location: LCCOMB_X24_Y17_N6
ix61285z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(2) = (u_kirsch_reg_wr_en_0_aq & (nx27692z1)) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => nx27692z1,
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(2),
	combout => u_kirsch_M_b(2));

-- Location: LCCOMB_X24_Y17_N22
ix61285z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(2) = (nx26352z4 & ((u_kirsch_M_b(2)))) # (!nx26352z4 & (u_kirsch_reg_r_d_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_d_2_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(2),
	combout => u_kirsch_r_i_11n3ss1(2));

-- Location: FF_X24_Y17_N23
u_kirsch_reg_r_i_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(2),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_2_aq);

-- Location: LCCOMB_X24_Y17_N24
ix61368z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(2) = (nx26352z4 & ((u_kirsch_M_b(2)))) # (!nx26352z4 & (u_kirsch_reg_r_i_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => u_kirsch_reg_r_i_2_aq,
	datad => u_kirsch_M_b(2),
	combout => u_kirsch_r_h_11n3ss1(2));

-- Location: FF_X24_Y17_N25
u_kirsch_reg_r_h_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(2),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_2_aq);

-- Location: LCCOMB_X24_Y15_N28
u_kirsch_reg_r_e_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_e_2_afeeder_combout = write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2),
	combout => u_kirsch_reg_r_e_2_afeeder_combout);

-- Location: FF_X24_Y15_N29
u_kirsch_reg_r_e_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_e_2_afeeder_combout,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_2_aq);

-- Location: LCCOMB_X24_Y17_N12
ix21006z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(2) = (nx26352z4 & (k_i_pixel(2))) # (!nx26352z4 & ((u_kirsch_reg_r_e_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => k_i_pixel(2),
	datad => u_kirsch_reg_r_e_2_aq,
	combout => u_kirsch_r_f_11n3ss1(2));

-- Location: FF_X24_Y17_N13
u_kirsch_reg_r_f_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(2),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_2_aq);

-- Location: LCCOMB_X24_Y17_N18
ix52949z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(2) = (nx26352z4 & (k_i_pixel(2))) # (!nx26352z4 & ((u_kirsch_reg_r_f_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => k_i_pixel(2),
	datad => u_kirsch_reg_r_f_2_aq,
	combout => u_kirsch_r_g_11n3ss1(2));

-- Location: FF_X24_Y17_N19
u_kirsch_reg_r_g_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(2),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_2_aq);

-- Location: LCCOMB_X24_Y17_N14
ix30930z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx30930z2 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & ((u_kirsch_reg_r_e_2_aq))) # (!b_0_a & (u_kirsch_reg_r_g_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_2_aq,
	datab => b_1_a,
	datac => b_0_a,
	datad => u_kirsch_reg_r_e_2_aq,
	combout => nx30930z2);

-- Location: LCCOMB_X27_Y16_N2
ix19273z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19273z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(2)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(2))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(2),
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(2),
	combout => nx19273z1);

-- Location: LCCOMB_X25_Y16_N16
u_kirsch_reg_r_c_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_2_afeeder_combout = nx19273z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx19273z1,
	combout => u_kirsch_reg_r_c_2_afeeder_combout);

-- Location: FF_X25_Y16_N17
u_kirsch_reg_r_c_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_2_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_2_aq);

-- Location: LCCOMB_X24_Y17_N8
ix30930z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(2) = (b_1_a & ((nx30930z2 & (u_kirsch_reg_r_h_2_aq)) # (!nx30930z2 & ((u_kirsch_reg_r_c_2_aq))))) # (!b_1_a & (((nx30930z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_h_2_aq,
	datac => nx30930z2,
	datad => u_kirsch_reg_r_c_2_aq,
	combout => u_kirsch_i4(2));

-- Location: LCCOMB_X27_Y16_N20
ix54682z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(2) = (u_kirsch_reg_wr_en_0_aq & ((nx19273z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(2),
	datad => nx19273z1,
	combout => u_kirsch_M_a(2));

-- Location: LCCOMB_X27_Y16_N6
ix54682z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(2) = (nx26352z4 & ((u_kirsch_M_a(2)))) # (!nx26352z4 & (u_kirsch_reg_r_c_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_c_2_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(2),
	combout => u_kirsch_r_b_11n3ss1(2));

-- Location: FF_X27_Y16_N7
u_kirsch_reg_r_b_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(2),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_2_aq);

-- Location: LCCOMB_X27_Y16_N16
ix63101z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(2) = (nx26352z4 & ((u_kirsch_M_a(2)))) # (!nx26352z4 & (u_kirsch_reg_r_b_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_2_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(2),
	combout => u_kirsch_r_a_11n3ss1(2));

-- Location: FF_X27_Y16_N17
u_kirsch_reg_r_a_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(2),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_2_aq);

-- Location: LCCOMB_X24_Y17_N10
ix30930z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx30930z1 = (b_0_a & (((u_kirsch_reg_r_d_2_aq) # (b_1_a)))) # (!b_0_a & (u_kirsch_reg_r_f_2_aq & ((!b_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_2_aq,
	datab => u_kirsch_reg_r_d_2_aq,
	datac => b_0_a,
	datad => b_1_a,
	combout => nx30930z1);

-- Location: LCCOMB_X24_Y17_N4
ix30930z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(2) = (b_1_a & ((nx30930z1 & (u_kirsch_reg_r_a_2_aq)) # (!nx30930z1 & ((u_kirsch_reg_r_b_2_aq))))) # (!b_1_a & (((nx30930z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_a_2_aq,
	datac => u_kirsch_reg_r_b_2_aq,
	datad => nx30930z1,
	combout => u_kirsch_i3(2));

-- Location: LCCOMB_X27_Y16_N24
ix28689z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28689z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(1))) # (!u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1)))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1),
	combout => nx28689z1);

-- Location: LCCOMB_X25_Y16_N10
u_kirsch_reg_r_d_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_1_afeeder_combout = nx28689z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx28689z1,
	combout => u_kirsch_reg_r_d_1_afeeder_combout);

-- Location: FF_X25_Y16_N11
u_kirsch_reg_r_d_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_1_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(1),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_1_aq);

-- Location: LCCOMB_X27_Y16_N10
ix60288z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(1) = (u_kirsch_reg_wr_en_0_aq & ((nx28689z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(1),
	datac => u_kirsch_reg_wr_en_0_aq,
	datad => nx28689z1,
	combout => u_kirsch_M_b(1));

-- Location: LCCOMB_X27_Y16_N26
ix60288z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(1) = (nx26352z4 & ((u_kirsch_M_b(1)))) # (!nx26352z4 & (u_kirsch_reg_r_d_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_1_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(1),
	combout => u_kirsch_r_i_11n3ss1(1));

-- Location: FF_X27_Y16_N27
u_kirsch_reg_r_i_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(1),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_1_aq);

-- Location: LCCOMB_X27_Y16_N4
ix62365z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(1) = (nx26352z4 & ((u_kirsch_M_b(1)))) # (!nx26352z4 & (u_kirsch_reg_r_i_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_i_1_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(1),
	combout => u_kirsch_r_h_11n3ss1(1));

-- Location: FF_X27_Y16_N5
u_kirsch_reg_r_h_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(1),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_1_aq);

-- Location: LCCOMB_X27_Y16_N18
ix20270z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20270z1 = (u_kirsch_reg_wr_en_1_aq & ((u_kirsch_reg_wr_en_0_aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(1)))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(1))))) # 
-- (!u_kirsch_reg_wr_en_1_aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_1_aq,
	datab => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(1),
	combout => nx20270z1);

-- Location: LCCOMB_X25_Y16_N28
u_kirsch_reg_r_c_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_1_afeeder_combout = nx20270z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx20270z1,
	combout => u_kirsch_reg_r_c_1_afeeder_combout);

-- Location: FF_X25_Y16_N29
u_kirsch_reg_r_c_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_1_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_1_aq);

-- Location: FF_X24_Y15_N15
u_kirsch_reg_r_e_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_1_aq);

-- Location: LCCOMB_X23_Y17_N16
ix20009z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(1) = (nx26352z4 & ((k_i_pixel(1)))) # (!nx26352z4 & (u_kirsch_reg_r_e_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_e_1_aq,
	datac => nx26352z4,
	datad => k_i_pixel(1),
	combout => u_kirsch_r_f_11n3ss1(1));

-- Location: FF_X23_Y17_N17
u_kirsch_reg_r_f_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(1),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_1_aq);

-- Location: LCCOMB_X23_Y17_N26
ix53946z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(1) = (nx26352z4 & ((k_i_pixel(1)))) # (!nx26352z4 & (u_kirsch_reg_r_f_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_f_1_aq,
	datac => nx26352z4,
	datad => k_i_pixel(1),
	combout => u_kirsch_r_g_11n3ss1(1));

-- Location: FF_X23_Y17_N27
u_kirsch_reg_r_g_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(1),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_1_aq);

-- Location: LCCOMB_X23_Y18_N28
ix18275z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18275z2 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & (u_kirsch_reg_r_e_1_aq)) # (!b_0_a & ((u_kirsch_reg_r_g_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_e_1_aq,
	datac => u_kirsch_reg_r_g_1_aq,
	datad => b_0_a,
	combout => nx18275z2);

-- Location: LCCOMB_X23_Y18_N30
ix18275z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(1) = (b_1_a & ((nx18275z2 & (u_kirsch_reg_r_h_1_aq)) # (!nx18275z2 & ((u_kirsch_reg_r_c_1_aq))))) # (!b_1_a & (((nx18275z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_h_1_aq,
	datac => u_kirsch_reg_r_c_1_aq,
	datad => nx18275z2,
	combout => u_kirsch_i4(1));

-- Location: LCCOMB_X27_Y16_N28
ix53685z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(1) = (u_kirsch_reg_wr_en_0_aq & ((nx20270z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(1),
	datac => u_kirsch_reg_wr_en_0_aq,
	datad => nx20270z1,
	combout => u_kirsch_M_a(1));

-- Location: LCCOMB_X27_Y16_N22
ix53685z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(1) = (nx26352z4 & ((u_kirsch_M_a(1)))) # (!nx26352z4 & (u_kirsch_reg_r_c_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_1_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(1),
	combout => u_kirsch_r_b_11n3ss1(1));

-- Location: FF_X27_Y16_N23
u_kirsch_reg_r_b_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(1),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_1_aq);

-- Location: LCCOMB_X27_Y16_N30
ix62104z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(1) = (nx26352z4 & ((u_kirsch_M_a(1)))) # (!nx26352z4 & (u_kirsch_reg_r_b_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_1_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(1),
	combout => u_kirsch_r_a_11n3ss1(1));

-- Location: FF_X27_Y16_N31
u_kirsch_reg_r_a_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(1),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_1_aq);

-- Location: LCCOMB_X23_Y17_N12
ix18275z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18275z1 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & ((u_kirsch_reg_r_d_1_aq))) # (!b_0_a & (u_kirsch_reg_r_f_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_1_aq,
	datab => u_kirsch_reg_r_d_1_aq,
	datac => b_1_a,
	datad => b_0_a,
	combout => nx18275z1);

-- Location: LCCOMB_X23_Y18_N18
ix18275z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(1) = (b_1_a & ((nx18275z1 & (u_kirsch_reg_r_a_1_aq)) # (!nx18275z1 & ((u_kirsch_reg_r_b_1_aq))))) # (!b_1_a & (((nx18275z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_a_1_aq,
	datac => nx18275z1,
	datad => u_kirsch_reg_r_b_1_aq,
	combout => u_kirsch_i3(1));

-- Location: LCCOMB_X23_Y16_N0
ix21267z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21267z1 = (u_kirsch_reg_wr_en_0_aq & ((u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(0))) # (!u_kirsch_reg_wr_en_1_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(0)))))) # 
-- (!u_kirsch_reg_wr_en_0_aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datab => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(0),
	datac => u_kirsch_reg_wr_en_1_aq,
	datad => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx21267z1);

-- Location: LCCOMB_X27_Y15_N2
u_kirsch_reg_r_c_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_c_0_afeeder_combout = nx21267z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx21267z1,
	combout => u_kirsch_reg_r_c_0_afeeder_combout);

-- Location: FF_X27_Y15_N3
u_kirsch_reg_r_c_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_c_0_afeeder_combout,
	asdata => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_c_0_aq);

-- Location: LCCOMB_X23_Y16_N20
ix29686z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29686z1 = (u_kirsch_reg_wr_en_0_aq & ((u_kirsch_reg_wr_en_1_aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(0)))) # (!u_kirsch_reg_wr_en_1_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0))))) # 
-- (!u_kirsch_reg_wr_en_0_aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datab => u_kirsch_reg_wr_en_1_aq,
	datac => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0),
	datad => u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx29686z1);

-- Location: LCCOMB_X25_Y16_N30
u_kirsch_reg_r_d_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_d_0_afeeder_combout = nx29686z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx29686z1,
	combout => u_kirsch_reg_r_d_0_afeeder_combout);

-- Location: FF_X25_Y16_N31
u_kirsch_reg_r_d_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_d_0_afeeder_combout,
	asdata => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(0),
	sload => ALT_INV_u_kirsch_reg_wr_en_0_aq,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_d_0_aq);

-- Location: LCCOMB_X23_Y16_N30
ix59291z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_b(0) = (u_kirsch_reg_wr_en_0_aq & ((nx29686z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a(0),
	datad => nx29686z1,
	combout => u_kirsch_M_b(0));

-- Location: LCCOMB_X23_Y17_N30
ix59291z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_i_11n3ss1(0) = (nx26352z4 & ((u_kirsch_M_b(0)))) # (!nx26352z4 & (u_kirsch_reg_r_d_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_0_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_b(0),
	combout => u_kirsch_r_i_11n3ss1(0));

-- Location: FF_X23_Y17_N31
u_kirsch_reg_r_i_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_i_11n3ss1(0),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_i_0_aq);

-- Location: LCCOMB_X23_Y16_N24
ix63362z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_h_11n3ss1(0) = (nx26352z4 & ((u_kirsch_M_b(0)))) # (!nx26352z4 & (u_kirsch_reg_r_i_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_i_0_aq,
	datab => nx26352z4,
	datac => u_kirsch_M_b(0),
	combout => u_kirsch_r_h_11n3ss1(0));

-- Location: FF_X23_Y16_N25
u_kirsch_reg_r_h_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_h_11n3ss1(0),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_h_0_aq);

-- Location: FF_X23_Y16_N23
u_kirsch_reg_r_e_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0),
	sload => VCC,
	ena => nx26352z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_e_0_aq);

-- Location: LCCOMB_X24_Y17_N20
ix19012z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_f_11n3ss1(0) = (nx26352z4 & ((k_i_pixel(0)))) # (!nx26352z4 & (u_kirsch_reg_r_e_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => u_kirsch_reg_r_e_0_aq,
	datad => k_i_pixel(0),
	combout => u_kirsch_r_f_11n3ss1(0));

-- Location: FF_X24_Y17_N21
u_kirsch_reg_r_f_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_f_11n3ss1(0),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_f_0_aq);

-- Location: LCCOMB_X23_Y16_N10
ix54943z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_g_11n3ss1(0) = (nx26352z4 & ((k_i_pixel(0)))) # (!nx26352z4 & (u_kirsch_reg_r_f_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_f_0_aq,
	datac => nx26352z4,
	datad => k_i_pixel(0),
	combout => u_kirsch_r_g_11n3ss1(0));

-- Location: FF_X23_Y16_N11
u_kirsch_reg_r_g_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_g_11n3ss1(0),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_g_0_aq);

-- Location: LCCOMB_X23_Y16_N18
ix49423z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49423z2 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & ((u_kirsch_reg_r_e_0_aq))) # (!b_0_a & (u_kirsch_reg_r_g_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_0_aq,
	datab => u_kirsch_reg_r_e_0_aq,
	datac => b_1_a,
	datad => b_0_a,
	combout => nx49423z2);

-- Location: LCCOMB_X23_Y16_N4
ix49423z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i4(0) = (b_1_a & ((nx49423z2 & ((u_kirsch_reg_r_h_0_aq))) # (!nx49423z2 & (u_kirsch_reg_r_c_0_aq)))) # (!b_1_a & (((nx49423z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_0_aq,
	datab => u_kirsch_reg_r_h_0_aq,
	datac => b_1_a,
	datad => nx49423z2,
	combout => u_kirsch_i4(0));

-- Location: LCCOMB_X23_Y16_N26
ix52688z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_M_a(0) = (u_kirsch_reg_wr_en_0_aq & ((nx21267z1))) # (!u_kirsch_reg_wr_en_0_aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_wr_en_0_aq,
	datac => u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a(0),
	datad => nx21267z1,
	combout => u_kirsch_M_a(0));

-- Location: LCCOMB_X27_Y16_N8
ix52688z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_b_11n3ss1(0) = (nx26352z4 & ((u_kirsch_M_a(0)))) # (!nx26352z4 & (u_kirsch_reg_r_c_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_0_aq,
	datac => nx26352z4,
	datad => u_kirsch_M_a(0),
	combout => u_kirsch_r_b_11n3ss1(0));

-- Location: FF_X27_Y16_N9
u_kirsch_reg_r_b_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_b_11n3ss1(0),
	ena => nx25991z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_b_0_aq);

-- Location: LCCOMB_X23_Y16_N28
ix61107z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_a_11n3ss1(0) = (nx26352z4 & ((u_kirsch_M_a(0)))) # (!nx26352z4 & (u_kirsch_reg_r_b_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx26352z4,
	datac => u_kirsch_reg_r_b_0_aq,
	datad => u_kirsch_M_a(0),
	combout => u_kirsch_r_a_11n3ss1(0));

-- Location: FF_X23_Y16_N29
u_kirsch_reg_r_a_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_a_11n3ss1(0),
	ena => nx2550z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_a_0_aq);

-- Location: LCCOMB_X23_Y16_N6
ix49423z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49423z1 = (b_1_a & (((b_0_a)))) # (!b_1_a & ((b_0_a & ((u_kirsch_reg_r_d_0_aq))) # (!b_0_a & (u_kirsch_reg_r_f_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_f_0_aq,
	datac => u_kirsch_reg_r_d_0_aq,
	datad => b_0_a,
	combout => nx49423z1);

-- Location: LCCOMB_X23_Y16_N16
ix49423z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i3(0) = (b_1_a & ((nx49423z1 & ((u_kirsch_reg_r_a_0_aq))) # (!nx49423z1 & (u_kirsch_reg_r_b_0_aq)))) # (!b_1_a & (((nx49423z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_0_aq,
	datab => u_kirsch_reg_r_a_0_aq,
	datac => b_1_a,
	datad => nx49423z1,
	combout => u_kirsch_i3(0));

-- Location: LCCOMB_X23_Y18_N0
u_kirsch_r2_add8_14i1_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(0) = (u_kirsch_i4(0) & (u_kirsch_i3(0) $ (VCC))) # (!u_kirsch_i4(0) & (u_kirsch_i3(0) & VCC))
-- nx18275z3 = CARRY((u_kirsch_i4(0) & u_kirsch_i3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i4(0),
	datab => u_kirsch_i3(0),
	datad => VCC,
	combout => u_kirsch_r2_14n0r1(0),
	cout => nx18275z3);

-- Location: LCCOMB_X23_Y18_N2
u_kirsch_r2_add8_14i1_ix39_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(1) = (u_kirsch_i4(1) & ((u_kirsch_i3(1) & (nx18275z3 & VCC)) # (!u_kirsch_i3(1) & (!nx18275z3)))) # (!u_kirsch_i4(1) & ((u_kirsch_i3(1) & (!nx18275z3)) # (!u_kirsch_i3(1) & ((nx18275z3) # (GND)))))
-- nx30930z3 = CARRY((u_kirsch_i4(1) & (!u_kirsch_i3(1) & !nx18275z3)) # (!u_kirsch_i4(1) & ((!nx18275z3) # (!u_kirsch_i3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i4(1),
	datab => u_kirsch_i3(1),
	datad => VCC,
	cin => nx18275z3,
	combout => u_kirsch_r2_14n0r1(1),
	cout => nx30930z3);

-- Location: LCCOMB_X23_Y18_N4
u_kirsch_r2_add8_14i1_ix43_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(2) = ((u_kirsch_i4(2) $ (u_kirsch_i3(2) $ (!nx30930z3)))) # (GND)
-- nx3458z3 = CARRY((u_kirsch_i4(2) & ((u_kirsch_i3(2)) # (!nx30930z3))) # (!u_kirsch_i4(2) & (u_kirsch_i3(2) & !nx30930z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i4(2),
	datab => u_kirsch_i3(2),
	datad => VCC,
	cin => nx30930z3,
	combout => u_kirsch_r2_14n0r1(2),
	cout => nx3458z3);

-- Location: LCCOMB_X23_Y18_N6
u_kirsch_r2_add8_14i1_ix47_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(3) = (u_kirsch_i4(3) & ((u_kirsch_i3(3) & (nx3458z3 & VCC)) # (!u_kirsch_i3(3) & (!nx3458z3)))) # (!u_kirsch_i4(3) & ((u_kirsch_i3(3) & (!nx3458z3)) # (!u_kirsch_i3(3) & ((nx3458z3) # (GND)))))
-- nx19789z3 = CARRY((u_kirsch_i4(3) & (!u_kirsch_i3(3) & !nx3458z3)) # (!u_kirsch_i4(3) & ((!nx3458z3) # (!u_kirsch_i3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i4(3),
	datab => u_kirsch_i3(3),
	datad => VCC,
	cin => nx3458z3,
	combout => u_kirsch_r2_14n0r1(3),
	cout => nx19789z3);

-- Location: LCCOMB_X23_Y18_N8
u_kirsch_r2_add8_14i1_ix51_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(4) = ((u_kirsch_i3(4) $ (u_kirsch_i4(4) $ (!nx19789z3)))) # (GND)
-- nx11359z3 = CARRY((u_kirsch_i3(4) & ((u_kirsch_i4(4)) # (!nx19789z3))) # (!u_kirsch_i3(4) & (u_kirsch_i4(4) & !nx19789z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i3(4),
	datab => u_kirsch_i4(4),
	datad => VCC,
	cin => nx19789z3,
	combout => u_kirsch_r2_14n0r1(4),
	cout => nx11359z3);

-- Location: LCCOMB_X23_Y18_N10
u_kirsch_r2_add8_14i1_ix55_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(5) = (u_kirsch_i4(5) & ((u_kirsch_i3(5) & (nx11359z3 & VCC)) # (!u_kirsch_i3(5) & (!nx11359z3)))) # (!u_kirsch_i4(5) & ((u_kirsch_i3(5) & (!nx11359z3)) # (!u_kirsch_i3(5) & ((nx11359z3) # (GND)))))
-- nx42507z3 = CARRY((u_kirsch_i4(5) & (!u_kirsch_i3(5) & !nx11359z3)) # (!u_kirsch_i4(5) & ((!nx11359z3) # (!u_kirsch_i3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i4(5),
	datab => u_kirsch_i3(5),
	datad => VCC,
	cin => nx11359z3,
	combout => u_kirsch_r2_14n0r1(5),
	cout => nx42507z3);

-- Location: LCCOMB_X23_Y18_N12
u_kirsch_r2_add8_14i1_ix59_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(6) = ((u_kirsch_i4(6) $ (u_kirsch_i3(6) $ (!nx42507z3)))) # (GND)
-- nx39360z3 = CARRY((u_kirsch_i4(6) & ((u_kirsch_i3(6)) # (!nx42507z3))) # (!u_kirsch_i4(6) & (u_kirsch_i3(6) & !nx42507z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i4(6),
	datab => u_kirsch_i3(6),
	datad => VCC,
	cin => nx42507z3,
	combout => u_kirsch_r2_14n0r1(6),
	cout => nx39360z3);

-- Location: LCCOMB_X23_Y18_N14
u_kirsch_r2_add8_14i1_ix63_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(7) = (u_kirsch_i3(7) & ((u_kirsch_i4(7) & (nx39360z3 & VCC)) # (!u_kirsch_i4(7) & (!nx39360z3)))) # (!u_kirsch_i3(7) & ((u_kirsch_i4(7) & (!nx39360z3)) # (!u_kirsch_i4(7) & ((nx39360z3) # (GND)))))
-- nx63652z1 = CARRY((u_kirsch_i3(7) & (!u_kirsch_i4(7) & !nx39360z3)) # (!u_kirsch_i3(7) & ((!nx39360z3) # (!u_kirsch_i4(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i3(7),
	datab => u_kirsch_i4(7),
	datad => VCC,
	cin => nx39360z3,
	combout => u_kirsch_r2_14n0r1(7),
	cout => nx63652z1);

-- Location: LCCOMB_X23_Y18_N16
u_kirsch_r2_add8_14i1_ix63_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r2_14n0r1(8) = !nx63652z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx63652z1,
	combout => u_kirsch_r2_14n0r1(8));

-- Location: FF_X23_Y18_N17
u_kirsch_reg_r2_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_8_aq);

-- Location: LCCOMB_X24_Y15_N18
ix46527z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46527z2 = (b_1_a & (u_kirsch_reg_r_a_7_aq)) # (!b_1_a & ((u_kirsch_reg_r_e_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_a_7_aq,
	datac => u_kirsch_reg_r_e_7_aq,
	datad => b_1_a,
	combout => nx46527z2);

-- Location: LCCOMB_X22_Y15_N10
ix46527z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46527z3 = (write_fifo_reg_rd_en_delayed_aq & (!pb_a0_a_ainput_o & ((u_kirsch_reg_v_1_aq) # (!u_kirsch_reg_v_2_aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (((u_kirsch_reg_v_1_aq) # (!u_kirsch_reg_v_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_v_2_aq,
	datad => u_kirsch_reg_v_1_aq,
	combout => nx46527z3);

-- Location: LCCOMB_X23_Y18_N26
ix46527z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46527z1 = (b_1_a & ((u_kirsch_reg_r_g_7_aq))) # (!b_1_a & (u_kirsch_reg_r_c_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_c_7_aq,
	datac => u_kirsch_reg_r_g_7_aq,
	datad => b_1_a,
	combout => nx46527z1);

-- Location: LCCOMB_X23_Y19_N8
ix46527z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(7) = (nx46527z3 & (nx46527z2)) # (!nx46527z3 & ((nx46527z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46527z2,
	datab => nx46527z3,
	datad => nx46527z1,
	combout => u_kirsch_i2_val(7));

-- Location: LCCOMB_X24_Y18_N8
ix46527z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46527z4 = (b_1_a & ((u_kirsch_reg_r_d_7_aq))) # (!b_1_a & (u_kirsch_reg_r_h_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_h_7_aq,
	datad => u_kirsch_reg_r_d_7_aq,
	combout => nx46527z4);

-- Location: LCCOMB_X24_Y18_N2
ix46527z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46527z5 = (b_1_a & (u_kirsch_reg_r_b_7_aq)) # (!b_1_a & ((u_kirsch_reg_r_f_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_b_7_aq,
	datac => u_kirsch_reg_r_f_7_aq,
	datad => b_1_a,
	combout => nx46527z5);

-- Location: LCCOMB_X24_Y18_N20
ix46527z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(7) = (nx46527z3 & (nx46527z4)) # (!nx46527z3 & ((nx46527z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46527z3,
	datac => nx46527z4,
	datad => nx46527z5,
	combout => u_kirsch_i1_val(7));

-- Location: LCCOMB_X24_Y15_N4
ix10989z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10989z4 = (b_1_a & ((u_kirsch_reg_r_a_6_aq))) # (!b_1_a & (u_kirsch_reg_r_e_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_e_6_aq,
	datac => u_kirsch_reg_r_a_6_aq,
	datad => b_1_a,
	combout => nx10989z4);

-- Location: LCCOMB_X24_Y16_N16
ix10989z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10989z3 = (b_1_a & (u_kirsch_reg_r_g_6_aq)) # (!b_1_a & ((u_kirsch_reg_r_c_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_g_6_aq,
	datac => b_1_a,
	datad => u_kirsch_reg_r_c_6_aq,
	combout => nx10989z3);

-- Location: LCCOMB_X23_Y19_N10
ix10989z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(6) = (nx46527z3 & (nx10989z4)) # (!nx46527z3 & ((nx10989z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx10989z4,
	datab => nx46527z3,
	datad => nx10989z3,
	combout => u_kirsch_i2_val(6));

-- Location: LCCOMB_X24_Y18_N14
ix10989z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10989z1 = (b_1_a & (u_kirsch_reg_r_d_6_aq)) # (!b_1_a & ((u_kirsch_reg_r_h_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_6_aq,
	datac => u_kirsch_reg_r_h_6_aq,
	datad => b_1_a,
	combout => nx10989z1);

-- Location: LCCOMB_X24_Y18_N24
ix10989z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10989z2 = (b_1_a & ((u_kirsch_reg_r_b_6_aq))) # (!b_1_a & (u_kirsch_reg_r_f_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_6_aq,
	datab => u_kirsch_reg_r_b_6_aq,
	datad => b_1_a,
	combout => nx10989z2);

-- Location: LCCOMB_X24_Y18_N26
ix10989z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(6) = (nx46527z3 & (nx10989z1)) # (!nx46527z3 & ((nx10989z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46527z3,
	datac => nx10989z1,
	datad => nx10989z2,
	combout => u_kirsch_i1_val(6));

-- Location: LCCOMB_X25_Y17_N8
ix26563z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26563z1 = (b_1_a & ((u_kirsch_reg_r_d_5_aq))) # (!b_1_a & (u_kirsch_reg_r_h_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_h_5_aq,
	datac => u_kirsch_reg_r_d_5_aq,
	datad => b_1_a,
	combout => nx26563z1);

-- Location: LCCOMB_X25_Y17_N18
ix26563z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26563z2 = (b_1_a & (u_kirsch_reg_r_b_5_aq)) # (!b_1_a & ((u_kirsch_reg_r_f_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_5_aq,
	datac => u_kirsch_reg_r_f_5_aq,
	datad => b_1_a,
	combout => nx26563z2);

-- Location: LCCOMB_X25_Y17_N20
ix26563z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(5) = (nx46527z3 & (nx26563z1)) # (!nx46527z3 & ((nx26563z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46527z3,
	datac => nx26563z1,
	datad => nx26563z2,
	combout => u_kirsch_i1_val(5));

-- Location: LCCOMB_X24_Y15_N22
ix26563z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26563z4 = (b_1_a & ((u_kirsch_reg_r_a_5_aq))) # (!b_1_a & (u_kirsch_reg_r_e_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_e_5_aq,
	datac => u_kirsch_reg_r_a_5_aq,
	datad => b_1_a,
	combout => nx26563z4);

-- Location: LCCOMB_X25_Y17_N30
ix26563z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26563z3 = (b_1_a & (u_kirsch_reg_r_g_5_aq)) # (!b_1_a & ((u_kirsch_reg_r_c_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_g_5_aq,
	datac => u_kirsch_reg_r_c_5_aq,
	datad => b_1_a,
	combout => nx26563z3);

-- Location: LCCOMB_X23_Y19_N4
ix26563z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(5) = (nx46527z3 & (nx26563z4)) # (!nx46527z3 & ((nx26563z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46527z3,
	datab => nx26563z4,
	datad => nx26563z3,
	combout => u_kirsch_i2_val(5));

-- Location: LCCOMB_X24_Y15_N8
ix60194z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60194z4 = (b_1_a & ((u_kirsch_reg_r_a_4_aq))) # (!b_1_a & (u_kirsch_reg_r_e_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_e_4_aq,
	datab => u_kirsch_reg_r_a_4_aq,
	datad => b_1_a,
	combout => nx60194z4);

-- Location: LCCOMB_X24_Y17_N16
ix60194z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60194z3 = (b_1_a & ((u_kirsch_reg_r_g_4_aq))) # (!b_1_a & (u_kirsch_reg_r_c_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_c_4_aq,
	datab => u_kirsch_reg_r_g_4_aq,
	datad => b_1_a,
	combout => nx60194z3);

-- Location: LCCOMB_X23_Y19_N6
ix60194z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(4) = (nx46527z3 & (nx60194z4)) # (!nx46527z3 & ((nx60194z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60194z4,
	datab => nx46527z3,
	datad => nx60194z3,
	combout => u_kirsch_i2_val(4));

-- Location: LCCOMB_X22_Y17_N8
ix60194z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60194z1 = (b_1_a & (u_kirsch_reg_r_d_4_aq)) # (!b_1_a & ((u_kirsch_reg_r_h_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_d_4_aq,
	datac => u_kirsch_reg_r_h_4_aq,
	datad => b_1_a,
	combout => nx60194z1);

-- Location: LCCOMB_X22_Y17_N18
ix60194z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60194z2 = (b_1_a & (u_kirsch_reg_r_b_4_aq)) # (!b_1_a & ((u_kirsch_reg_r_f_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_b_4_aq,
	datac => u_kirsch_reg_r_f_4_aq,
	datad => b_1_a,
	combout => nx60194z2);

-- Location: LCCOMB_X22_Y17_N28
ix60194z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(4) = (nx46527z3 & (nx60194z1)) # (!nx46527z3 & ((nx60194z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46527z3,
	datac => nx60194z1,
	datad => nx60194z2,
	combout => u_kirsch_i1_val(4));

-- Location: LCCOMB_X22_Y22_N26
ix55304z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55304z3 = (nx46527z3) # ((b_1_a & (u_kirsch_reg_r_g_3_aq)) # (!b_1_a & ((u_kirsch_reg_r_c_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_3_aq,
	datab => u_kirsch_reg_r_c_3_aq,
	datac => nx46527z3,
	datad => b_1_a,
	combout => nx55304z3);

-- Location: LCCOMB_X23_Y18_N20
ix55304z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55304z4 = (b_1_a & (u_kirsch_reg_r_a_3_aq)) # (!b_1_a & ((u_kirsch_reg_r_e_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_a_3_aq,
	datac => u_kirsch_reg_r_e_3_aq,
	datad => b_1_a,
	combout => nx55304z4);

-- Location: LCCOMB_X22_Y22_N16
ix55304z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(3) = (nx55304z3 & ((nx55304z4) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx55304z3,
	datab => nx46527z3,
	datad => nx55304z4,
	combout => u_kirsch_i2_val(3));

-- Location: LCCOMB_X22_Y15_N2
ix55304z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55304z1 = (nx46527z3) # ((b_1_a & (u_kirsch_reg_r_b_3_aq)) # (!b_1_a & ((u_kirsch_reg_r_f_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_3_aq,
	datab => b_1_a,
	datac => u_kirsch_reg_r_f_3_aq,
	datad => nx46527z3,
	combout => nx55304z1);

-- Location: LCCOMB_X22_Y15_N18
ix55304z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55304z2 = (b_1_a & ((u_kirsch_reg_r_d_3_aq))) # (!b_1_a & (u_kirsch_reg_r_h_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_h_3_aq,
	datac => u_kirsch_reg_r_d_3_aq,
	datad => b_1_a,
	combout => nx55304z2);

-- Location: LCCOMB_X22_Y15_N0
ix55304z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(3) = (nx55304z1 & ((nx55304z2) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46527z3,
	datab => nx55304z1,
	datad => nx55304z2,
	combout => u_kirsch_i1_val(3));

-- Location: LCCOMB_X24_Y17_N26
ix39730z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39730z1 = (nx46527z3) # ((b_1_a & ((u_kirsch_reg_r_b_2_aq))) # (!b_1_a & (u_kirsch_reg_r_f_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_f_2_aq,
	datab => u_kirsch_reg_r_b_2_aq,
	datac => nx46527z3,
	datad => b_1_a,
	combout => nx39730z1);

-- Location: LCCOMB_X24_Y17_N28
ix39730z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39730z2 = (b_1_a & ((u_kirsch_reg_r_d_2_aq))) # (!b_1_a & (u_kirsch_reg_r_h_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_h_2_aq,
	datac => u_kirsch_reg_r_d_2_aq,
	datad => b_1_a,
	combout => nx39730z2);

-- Location: LCCOMB_X24_Y17_N30
ix39730z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(2) = (nx39730z1 & ((nx39730z2) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46527z3,
	datac => nx39730z1,
	datad => nx39730z2,
	combout => u_kirsch_i1_val(2));

-- Location: LCCOMB_X24_Y15_N2
ix39730z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39730z4 = (b_1_a & ((u_kirsch_reg_r_a_2_aq))) # (!b_1_a & (u_kirsch_reg_r_e_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_e_2_aq,
	datac => u_kirsch_reg_r_a_2_aq,
	datad => b_1_a,
	combout => nx39730z4);

-- Location: LCCOMB_X24_Y17_N0
ix39730z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39730z3 = (nx46527z3) # ((b_1_a & (u_kirsch_reg_r_g_2_aq)) # (!b_1_a & ((u_kirsch_reg_r_c_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_2_aq,
	datab => u_kirsch_reg_r_c_2_aq,
	datac => nx46527z3,
	datad => b_1_a,
	combout => nx39730z3);

-- Location: LCCOMB_X23_Y19_N0
ix39730z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(2) = (nx39730z3 & ((nx39730z4) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx39730z4,
	datab => nx46527z3,
	datad => nx39730z3,
	combout => u_kirsch_i2_val(2));

-- Location: LCCOMB_X22_Y19_N0
ix24156z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24156z2 = (b_1_a & (u_kirsch_reg_r_d_1_aq)) # (!b_1_a & ((u_kirsch_reg_r_h_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_d_1_aq,
	datac => u_kirsch_reg_r_h_1_aq,
	datad => b_1_a,
	combout => nx24156z2);

-- Location: LCCOMB_X22_Y19_N2
ix24156z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24156z1 = (nx46527z3) # ((b_1_a & ((u_kirsch_reg_r_b_1_aq))) # (!b_1_a & (u_kirsch_reg_r_f_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => u_kirsch_reg_r_f_1_aq,
	datac => nx46527z3,
	datad => u_kirsch_reg_r_b_1_aq,
	combout => nx24156z1);

-- Location: LCCOMB_X22_Y19_N26
ix24156z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(1) = (nx24156z1 & ((nx24156z2) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx24156z2,
	datac => nx46527z3,
	datad => nx24156z1,
	combout => u_kirsch_i1_val(1));

-- Location: LCCOMB_X22_Y19_N28
ix24156z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24156z3 = (nx46527z3) # ((b_1_a & (u_kirsch_reg_r_g_1_aq)) # (!b_1_a & ((u_kirsch_reg_r_c_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_1_aq,
	datab => nx46527z3,
	datac => u_kirsch_reg_r_c_1_aq,
	datad => b_1_a,
	combout => nx24156z3);

-- Location: LCCOMB_X24_Y15_N20
ix24156z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24156z4 = (b_1_a & (u_kirsch_reg_r_a_1_aq)) # (!b_1_a & ((u_kirsch_reg_r_e_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_a_1_aq,
	datac => u_kirsch_reg_r_e_1_aq,
	datad => b_1_a,
	combout => nx24156z4);

-- Location: LCCOMB_X22_Y19_N24
ix24156z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(1) = (nx24156z3 & ((nx24156z4) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46527z3,
	datab => nx24156z3,
	datad => nx24156z4,
	combout => u_kirsch_i2_val(1));

-- Location: LCCOMB_X22_Y15_N6
ix56954z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56954z1 = (nx46527z3) # ((b_1_a & (u_kirsch_reg_r_b_0_aq)) # (!b_1_a & ((u_kirsch_reg_r_f_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_b_0_aq,
	datab => b_1_a,
	datac => u_kirsch_reg_r_f_0_aq,
	datad => nx46527z3,
	combout => nx56954z1);

-- Location: LCCOMB_X23_Y16_N8
ix56954z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56954z2 = (b_1_a & (u_kirsch_reg_r_d_0_aq)) # (!b_1_a & ((u_kirsch_reg_r_h_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_d_0_aq,
	datac => b_1_a,
	datad => u_kirsch_reg_r_h_0_aq,
	combout => nx56954z2);

-- Location: LCCOMB_X23_Y19_N30
ix56954z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i1_val(0) = (nx56954z1 & ((nx56954z2) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx56954z1,
	datab => nx46527z3,
	datac => nx56954z2,
	combout => u_kirsch_i1_val(0));

-- Location: LCCOMB_X23_Y16_N12
ix56954z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56954z4 = (b_1_a & ((u_kirsch_reg_r_a_0_aq))) # (!b_1_a & (u_kirsch_reg_r_e_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_e_0_aq,
	datac => b_1_a,
	datad => u_kirsch_reg_r_a_0_aq,
	combout => nx56954z4);

-- Location: LCCOMB_X23_Y16_N2
ix56954z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56954z3 = (nx46527z3) # ((b_1_a & (u_kirsch_reg_r_g_0_aq)) # (!b_1_a & ((u_kirsch_reg_r_c_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_g_0_aq,
	datab => u_kirsch_reg_r_c_0_aq,
	datac => b_1_a,
	datad => nx46527z3,
	combout => nx56954z3);

-- Location: LCCOMB_X23_Y19_N2
ix56954z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_i2_val(0) = (nx56954z3 & ((nx56954z4) # (!nx46527z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx56954z4,
	datab => nx46527z3,
	datad => nx56954z3,
	combout => u_kirsch_i2_val(0));

-- Location: LCCOMB_X23_Y19_N12
u_kirsch_rtlc13_39_gt_67_ix21_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24156z5 = CARRY((u_kirsch_i1_val(0) & !u_kirsch_i2_val(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i1_val(0),
	datab => u_kirsch_i2_val(0),
	datad => VCC,
	cout => nx24156z5);

-- Location: LCCOMB_X23_Y19_N14
u_kirsch_rtlc13_39_gt_67_ix23_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39730z5 = CARRY((u_kirsch_i1_val(1) & (u_kirsch_i2_val(1) & !nx24156z5)) # (!u_kirsch_i1_val(1) & ((u_kirsch_i2_val(1)) # (!nx24156z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i1_val(1),
	datab => u_kirsch_i2_val(1),
	datad => VCC,
	cin => nx24156z5,
	cout => nx39730z5);

-- Location: LCCOMB_X23_Y19_N16
u_kirsch_rtlc13_39_gt_67_ix25_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55304z5 = CARRY((u_kirsch_i1_val(2) & ((!nx39730z5) # (!u_kirsch_i2_val(2)))) # (!u_kirsch_i1_val(2) & (!u_kirsch_i2_val(2) & !nx39730z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i1_val(2),
	datab => u_kirsch_i2_val(2),
	datad => VCC,
	cin => nx39730z5,
	cout => nx55304z5);

-- Location: LCCOMB_X23_Y19_N18
u_kirsch_rtlc13_39_gt_67_ix27_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60194z5 = CARRY((u_kirsch_i2_val(3) & ((!nx55304z5) # (!u_kirsch_i1_val(3)))) # (!u_kirsch_i2_val(3) & (!u_kirsch_i1_val(3) & !nx55304z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i2_val(3),
	datab => u_kirsch_i1_val(3),
	datad => VCC,
	cin => nx55304z5,
	cout => nx60194z5);

-- Location: LCCOMB_X23_Y19_N20
u_kirsch_rtlc13_39_gt_67_ix29_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26563z5 = CARRY((u_kirsch_i2_val(4) & (u_kirsch_i1_val(4) & !nx60194z5)) # (!u_kirsch_i2_val(4) & ((u_kirsch_i1_val(4)) # (!nx60194z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i2_val(4),
	datab => u_kirsch_i1_val(4),
	datad => VCC,
	cin => nx60194z5,
	cout => nx26563z5);

-- Location: LCCOMB_X23_Y19_N22
u_kirsch_rtlc13_39_gt_67_ix31_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10989z5 = CARRY((u_kirsch_i1_val(5) & (u_kirsch_i2_val(5) & !nx26563z5)) # (!u_kirsch_i1_val(5) & ((u_kirsch_i2_val(5)) # (!nx26563z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i1_val(5),
	datab => u_kirsch_i2_val(5),
	datad => VCC,
	cin => nx26563z5,
	cout => nx10989z5);

-- Location: LCCOMB_X23_Y19_N24
u_kirsch_rtlc13_39_gt_67_ix33_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4585z1 = CARRY((u_kirsch_i2_val(6) & (u_kirsch_i1_val(6) & !nx10989z5)) # (!u_kirsch_i2_val(6) & ((u_kirsch_i1_val(6)) # (!nx10989z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i2_val(6),
	datab => u_kirsch_i1_val(6),
	datad => VCC,
	cin => nx10989z5,
	cout => nx4585z1);

-- Location: LCCOMB_X23_Y19_N26
u_kirsch_rtlc13_39_gt_67_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15243z1 = CARRY((u_kirsch_i2_val(7) & ((!nx4585z1) # (!u_kirsch_i1_val(7)))) # (!u_kirsch_i2_val(7) & (!u_kirsch_i1_val(7) & !nx4585z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_i2_val(7),
	datab => u_kirsch_i1_val(7),
	datad => VCC,
	cin => nx4585z1,
	cout => nx15243z1);

-- Location: LCCOMB_X23_Y19_N28
u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46527z6 = !nx15243z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx15243z1,
	combout => nx46527z6);

-- Location: FF_X23_Y19_N9
u_kirsch_reg_r1_val_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(7),
	asdata => u_kirsch_i1_val(7),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_7_aq);

-- Location: FF_X23_Y18_N15
u_kirsch_reg_r2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_7_aq);

-- Location: FF_X23_Y19_N11
u_kirsch_reg_r1_val_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(6),
	asdata => u_kirsch_i1_val(6),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_6_aq);

-- Location: FF_X23_Y18_N13
u_kirsch_reg_r2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_6_aq);

-- Location: FF_X23_Y19_N5
u_kirsch_reg_r1_val_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(5),
	asdata => u_kirsch_i1_val(5),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_5_aq);

-- Location: FF_X23_Y18_N11
u_kirsch_reg_r2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_5_aq);

-- Location: FF_X23_Y19_N7
u_kirsch_reg_r1_val_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(4),
	asdata => u_kirsch_i1_val(4),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_4_aq);

-- Location: FF_X23_Y18_N9
u_kirsch_reg_r2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_4_aq);

-- Location: FF_X23_Y18_N7
u_kirsch_reg_r2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_3_aq);

-- Location: FF_X22_Y22_N17
u_kirsch_reg_r1_val_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(3),
	asdata => u_kirsch_i1_val(3),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_3_aq);

-- Location: FF_X23_Y19_N1
u_kirsch_reg_r1_val_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(2),
	asdata => u_kirsch_i1_val(2),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_2_aq);

-- Location: FF_X23_Y18_N5
u_kirsch_reg_r2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_2_aq);

-- Location: FF_X23_Y18_N3
u_kirsch_reg_r2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_1_aq);

-- Location: FF_X22_Y19_N25
u_kirsch_reg_r1_val_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(1),
	asdata => u_kirsch_i1_val(1),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_1_aq);

-- Location: FF_X23_Y19_N3
u_kirsch_reg_r1_val_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_i2_val(0),
	asdata => u_kirsch_i1_val(0),
	sload => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_val_0_aq);

-- Location: FF_X23_Y18_N1
u_kirsch_reg_r2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r2_14n0r1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r2_0_aq);

-- Location: LCCOMB_X22_Y19_N4
u_kirsch_r4_add9_16i1_ix37_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(0) = (u_kirsch_reg_r1_val_0_aq & (u_kirsch_reg_r2_0_aq $ (VCC))) # (!u_kirsch_reg_r1_val_0_aq & (u_kirsch_reg_r2_0_aq & VCC))
-- nx33205z1 = CARRY((u_kirsch_reg_r1_val_0_aq & u_kirsch_reg_r2_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r1_val_0_aq,
	datab => u_kirsch_reg_r2_0_aq,
	datad => VCC,
	combout => u_kirsch_r4_16n0r1(0),
	cout => nx33205z1);

-- Location: LCCOMB_X22_Y19_N6
u_kirsch_r4_add9_16i1_ix41_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(1) = (u_kirsch_reg_r2_1_aq & ((u_kirsch_reg_r1_val_1_aq & (nx33205z1 & VCC)) # (!u_kirsch_reg_r1_val_1_aq & (!nx33205z1)))) # (!u_kirsch_reg_r2_1_aq & ((u_kirsch_reg_r1_val_1_aq & (!nx33205z1)) # (!u_kirsch_reg_r1_val_1_aq & 
-- ((nx33205z1) # (GND)))))
-- nx2057z1 = CARRY((u_kirsch_reg_r2_1_aq & (!u_kirsch_reg_r1_val_1_aq & !nx33205z1)) # (!u_kirsch_reg_r2_1_aq & ((!nx33205z1) # (!u_kirsch_reg_r1_val_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r2_1_aq,
	datab => u_kirsch_reg_r1_val_1_aq,
	datad => VCC,
	cin => nx33205z1,
	combout => u_kirsch_r4_16n0r1(1),
	cout => nx2057z1);

-- Location: LCCOMB_X22_Y19_N8
u_kirsch_r4_add9_16i1_ix45_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(2) = ((u_kirsch_reg_r1_val_2_aq $ (u_kirsch_reg_r2_2_aq $ (!nx2057z1)))) # (GND)
-- nx29091z1 = CARRY((u_kirsch_reg_r1_val_2_aq & ((u_kirsch_reg_r2_2_aq) # (!nx2057z1))) # (!u_kirsch_reg_r1_val_2_aq & (u_kirsch_reg_r2_2_aq & !nx2057z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r1_val_2_aq,
	datab => u_kirsch_reg_r2_2_aq,
	datad => VCC,
	cin => nx2057z1,
	combout => u_kirsch_r4_16n0r1(2),
	cout => nx29091z1);

-- Location: LCCOMB_X22_Y19_N10
u_kirsch_r4_add9_16i1_ix49_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(3) = (u_kirsch_reg_r2_3_aq & ((u_kirsch_reg_r1_val_3_aq & (nx29091z1 & VCC)) # (!u_kirsch_reg_r1_val_3_aq & (!nx29091z1)))) # (!u_kirsch_reg_r2_3_aq & ((u_kirsch_reg_r1_val_3_aq & (!nx29091z1)) # (!u_kirsch_reg_r1_val_3_aq & 
-- ((nx29091z1) # (GND)))))
-- nx52776z1 = CARRY((u_kirsch_reg_r2_3_aq & (!u_kirsch_reg_r1_val_3_aq & !nx29091z1)) # (!u_kirsch_reg_r2_3_aq & ((!nx29091z1) # (!u_kirsch_reg_r1_val_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r2_3_aq,
	datab => u_kirsch_reg_r1_val_3_aq,
	datad => VCC,
	cin => nx29091z1,
	combout => u_kirsch_r4_16n0r1(3),
	cout => nx52776z1);

-- Location: LCCOMB_X22_Y19_N12
u_kirsch_r4_add9_16i1_ix53_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(4) = ((u_kirsch_reg_r1_val_4_aq $ (u_kirsch_reg_r2_4_aq $ (!nx52776z1)))) # (GND)
-- nx21628z1 = CARRY((u_kirsch_reg_r1_val_4_aq & ((u_kirsch_reg_r2_4_aq) # (!nx52776z1))) # (!u_kirsch_reg_r1_val_4_aq & (u_kirsch_reg_r2_4_aq & !nx52776z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r1_val_4_aq,
	datab => u_kirsch_reg_r2_4_aq,
	datad => VCC,
	cin => nx52776z1,
	combout => u_kirsch_r4_16n0r1(4),
	cout => nx21628z1);

-- Location: LCCOMB_X22_Y19_N14
u_kirsch_r4_add9_16i1_ix57_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(5) = (u_kirsch_reg_r1_val_5_aq & ((u_kirsch_reg_r2_5_aq & (nx21628z1 & VCC)) # (!u_kirsch_reg_r2_5_aq & (!nx21628z1)))) # (!u_kirsch_reg_r1_val_5_aq & ((u_kirsch_reg_r2_5_aq & (!nx21628z1)) # (!u_kirsch_reg_r2_5_aq & ((nx21628z1) # 
-- (GND)))))
-- nx27577z1 = CARRY((u_kirsch_reg_r1_val_5_aq & (!u_kirsch_reg_r2_5_aq & !nx21628z1)) # (!u_kirsch_reg_r1_val_5_aq & ((!nx21628z1) # (!u_kirsch_reg_r2_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r1_val_5_aq,
	datab => u_kirsch_reg_r2_5_aq,
	datad => VCC,
	cin => nx21628z1,
	combout => u_kirsch_r4_16n0r1(5),
	cout => nx27577z1);

-- Location: LCCOMB_X22_Y19_N16
u_kirsch_r4_add9_16i1_ix61_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(6) = ((u_kirsch_reg_r1_val_6_aq $ (u_kirsch_reg_r2_6_aq $ (!nx27577z1)))) # (GND)
-- nx58725z1 = CARRY((u_kirsch_reg_r1_val_6_aq & ((u_kirsch_reg_r2_6_aq) # (!nx27577z1))) # (!u_kirsch_reg_r1_val_6_aq & (u_kirsch_reg_r2_6_aq & !nx27577z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r1_val_6_aq,
	datab => u_kirsch_reg_r2_6_aq,
	datad => VCC,
	cin => nx27577z1,
	combout => u_kirsch_r4_16n0r1(6),
	cout => nx58725z1);

-- Location: LCCOMB_X22_Y19_N18
u_kirsch_r4_add9_16i1_ix65_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(7) = (u_kirsch_reg_r1_val_7_aq & ((u_kirsch_reg_r2_7_aq & (nx58725z1 & VCC)) # (!u_kirsch_reg_r2_7_aq & (!nx58725z1)))) # (!u_kirsch_reg_r1_val_7_aq & ((u_kirsch_reg_r2_7_aq & (!nx58725z1)) # (!u_kirsch_reg_r2_7_aq & ((nx58725z1) # 
-- (GND)))))
-- nx41199z1 = CARRY((u_kirsch_reg_r1_val_7_aq & (!u_kirsch_reg_r2_7_aq & !nx58725z1)) # (!u_kirsch_reg_r1_val_7_aq & ((!nx58725z1) # (!u_kirsch_reg_r2_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r1_val_7_aq,
	datab => u_kirsch_reg_r2_7_aq,
	datad => VCC,
	cin => nx58725z1,
	combout => u_kirsch_r4_16n0r1(7),
	cout => nx41199z1);

-- Location: LCCOMB_X22_Y19_N20
u_kirsch_r4_add9_16i1_ix69_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(8) = (u_kirsch_reg_r2_8_aq & (nx41199z1 $ (GND))) # (!u_kirsch_reg_r2_8_aq & (!nx41199z1 & VCC))
-- nx7965z1 = CARRY((u_kirsch_reg_r2_8_aq & !nx41199z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r2_8_aq,
	datad => VCC,
	cin => nx41199z1,
	combout => u_kirsch_r4_16n0r1(8),
	cout => nx7965z1);

-- Location: LCCOMB_X22_Y19_N22
u_kirsch_r4_add9_16i1_ix69_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r4_16n0r1(9) = nx7965z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx7965z1,
	combout => u_kirsch_r4_16n0r1(9));

-- Location: FF_X22_Y19_N23
u_kirsch_reg_r4_val_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_9_aq);

-- Location: FF_X22_Y19_N21
u_kirsch_reg_r4_val_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_8_aq);

-- Location: FF_X22_Y18_N19
u_kirsch_reg_r5_val_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_8_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_8_aq);

-- Location: FF_X22_Y19_N19
u_kirsch_reg_r4_val_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_7_aq);

-- Location: FF_X22_Y18_N17
u_kirsch_reg_r5_val_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_7_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_7_aq);

-- Location: FF_X22_Y19_N17
u_kirsch_reg_r4_val_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_6_aq);

-- Location: FF_X22_Y18_N15
u_kirsch_reg_r5_val_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_6_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_6_aq);

-- Location: FF_X22_Y19_N15
u_kirsch_reg_r4_val_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_5_aq);

-- Location: FF_X22_Y18_N13
u_kirsch_reg_r5_val_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_5_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_5_aq);

-- Location: FF_X22_Y19_N13
u_kirsch_reg_r4_val_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_4_aq);

-- Location: FF_X22_Y18_N11
u_kirsch_reg_r5_val_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_4_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_4_aq);

-- Location: FF_X22_Y19_N11
u_kirsch_reg_r4_val_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_3_aq);

-- Location: FF_X22_Y18_N9
u_kirsch_reg_r5_val_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_3_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_3_aq);

-- Location: FF_X22_Y19_N9
u_kirsch_reg_r4_val_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_2_aq);

-- Location: FF_X22_Y18_N7
u_kirsch_reg_r5_val_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_2_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_2_aq);

-- Location: FF_X22_Y19_N7
u_kirsch_reg_r4_val_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_1_aq);

-- Location: FF_X22_Y18_N5
u_kirsch_reg_r5_val_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_1_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_1_aq);

-- Location: FF_X22_Y19_N5
u_kirsch_reg_r4_val_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r4_16n0r1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_val_0_aq);

-- Location: FF_X22_Y18_N3
u_kirsch_reg_r5_val_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_0_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_0_aq);

-- Location: LCCOMB_X22_Y18_N2
u_kirsch_rtlc17_49_gt_69_ix25_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6531z1 = CARRY((u_kirsch_reg_r4_val_0_aq & !u_kirsch_reg_r5_val_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_0_aq,
	datab => u_kirsch_reg_r5_val_0_aq,
	datad => VCC,
	cout => nx6531z1);

-- Location: LCCOMB_X22_Y18_N4
u_kirsch_rtlc17_49_gt_69_ix27_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56493z1 = CARRY((u_kirsch_reg_r4_val_1_aq & (u_kirsch_reg_r5_val_1_aq & !nx6531z1)) # (!u_kirsch_reg_r4_val_1_aq & ((u_kirsch_reg_r5_val_1_aq) # (!nx6531z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_1_aq,
	datab => u_kirsch_reg_r5_val_1_aq,
	datad => VCC,
	cin => nx6531z1,
	cout => nx56493z1);

-- Location: LCCOMB_X22_Y18_N6
u_kirsch_rtlc17_49_gt_69_ix29_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22862z1 = CARRY((u_kirsch_reg_r4_val_2_aq & ((!nx56493z1) # (!u_kirsch_reg_r5_val_2_aq))) # (!u_kirsch_reg_r4_val_2_aq & (!u_kirsch_reg_r5_val_2_aq & !nx56493z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_2_aq,
	datab => u_kirsch_reg_r5_val_2_aq,
	datad => VCC,
	cin => nx56493z1,
	cout => nx22862z1);

-- Location: LCCOMB_X22_Y18_N8
u_kirsch_rtlc17_49_gt_69_ix31_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58248z1 = CARRY((u_kirsch_reg_r5_val_3_aq & ((!nx22862z1) # (!u_kirsch_reg_r4_val_3_aq))) # (!u_kirsch_reg_r5_val_3_aq & (!u_kirsch_reg_r4_val_3_aq & !nx22862z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_3_aq,
	datab => u_kirsch_reg_r4_val_3_aq,
	datad => VCC,
	cin => nx22862z1,
	cout => nx58248z1);

-- Location: LCCOMB_X22_Y18_N10
u_kirsch_rtlc17_49_gt_69_ix33_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8286z1 = CARRY((u_kirsch_reg_r4_val_4_aq & ((!nx58248z1) # (!u_kirsch_reg_r5_val_4_aq))) # (!u_kirsch_reg_r4_val_4_aq & (!u_kirsch_reg_r5_val_4_aq & !nx58248z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_4_aq,
	datab => u_kirsch_reg_r5_val_4_aq,
	datad => VCC,
	cin => nx58248z1,
	cout => nx8286z1);

-- Location: LCCOMB_X22_Y18_N12
u_kirsch_rtlc17_49_gt_69_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23860z1 = CARRY((u_kirsch_reg_r4_val_5_aq & (u_kirsch_reg_r5_val_5_aq & !nx8286z1)) # (!u_kirsch_reg_r4_val_5_aq & ((u_kirsch_reg_r5_val_5_aq) # (!nx8286z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_5_aq,
	datab => u_kirsch_reg_r5_val_5_aq,
	datad => VCC,
	cin => nx8286z1,
	cout => nx23860z1);

-- Location: LCCOMB_X22_Y18_N14
u_kirsch_rtlc17_49_gt_69_ix37_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26102z1 = CARRY((u_kirsch_reg_r5_val_6_aq & (u_kirsch_reg_r4_val_6_aq & !nx23860z1)) # (!u_kirsch_reg_r5_val_6_aq & ((u_kirsch_reg_r4_val_6_aq) # (!nx23860z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_6_aq,
	datab => u_kirsch_reg_r4_val_6_aq,
	datad => VCC,
	cin => nx23860z1,
	cout => nx26102z1);

-- Location: LCCOMB_X22_Y18_N16
u_kirsch_rtlc17_49_gt_69_ix39_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58007z1 = CARRY((u_kirsch_reg_r4_val_7_aq & (u_kirsch_reg_r5_val_7_aq & !nx26102z1)) # (!u_kirsch_reg_r4_val_7_aq & ((u_kirsch_reg_r5_val_7_aq) # (!nx26102z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_7_aq,
	datab => u_kirsch_reg_r5_val_7_aq,
	datad => VCC,
	cin => nx26102z1,
	cout => nx58007z1);

-- Location: LCCOMB_X22_Y18_N18
u_kirsch_rtlc17_49_gt_69_ix41_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42433z1 = CARRY((u_kirsch_reg_r4_val_8_aq & ((!nx58007z1) # (!u_kirsch_reg_r5_val_8_aq))) # (!u_kirsch_reg_r4_val_8_aq & (!u_kirsch_reg_r5_val_8_aq & !nx58007z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r4_val_8_aq,
	datab => u_kirsch_reg_r5_val_8_aq,
	datad => VCC,
	cin => nx58007z1,
	cout => nx42433z1);

-- Location: LCCOMB_X22_Y18_N20
u_kirsch_rtlc17_49_gt_69_ix43_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39326z1 = CARRY((u_kirsch_reg_r5_val_9_aq & ((!nx42433z1) # (!u_kirsch_reg_r4_val_9_aq))) # (!u_kirsch_reg_r5_val_9_aq & (!u_kirsch_reg_r4_val_9_aq & !nx42433z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_9_aq,
	datab => u_kirsch_reg_r4_val_9_aq,
	datad => VCC,
	cin => nx42433z1,
	cout => nx39326z1);

-- Location: LCCOMB_X22_Y18_N22
ix1899_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3238z1 = (u_kirsch_reg_v_2_aq) # (!nx39326z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_v_2_aq,
	cin => nx39326z1,
	combout => nx3238z1);

-- Location: FF_X22_Y18_N21
u_kirsch_reg_r5_val_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r4_val_9_aq,
	sload => VCC,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_val_9_aq);

-- Location: LCCOMB_X22_Y20_N6
u_kirsch_r3_add12_15i1_ix45_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(0) = (u_kirsch_reg_r3_0_aq & (u_kirsch_reg_r2_0_aq $ (VCC))) # (!u_kirsch_reg_r3_0_aq & (u_kirsch_reg_r2_0_aq & VCC))
-- nx15489z1 = CARRY((u_kirsch_reg_r3_0_aq & u_kirsch_reg_r2_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_0_aq,
	datab => u_kirsch_reg_r2_0_aq,
	datad => VCC,
	combout => u_kirsch_r3_15n1s1(0),
	cout => nx15489z1);

-- Location: FF_X22_Y20_N7
u_kirsch_reg_r3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(0),
	asdata => u_kirsch_reg_r2_0_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_0_aq);

-- Location: LCCOMB_X22_Y20_N8
u_kirsch_r3_add12_15i1_ix49_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(1) = (u_kirsch_reg_r3_1_aq & ((u_kirsch_reg_r2_1_aq & (nx15489z1 & VCC)) # (!u_kirsch_reg_r2_1_aq & (!nx15489z1)))) # (!u_kirsch_reg_r3_1_aq & ((u_kirsch_reg_r2_1_aq & (!nx15489z1)) # (!u_kirsch_reg_r2_1_aq & ((nx15489z1) # (GND)))))
-- nx31820z1 = CARRY((u_kirsch_reg_r3_1_aq & (!u_kirsch_reg_r2_1_aq & !nx15489z1)) # (!u_kirsch_reg_r3_1_aq & ((!nx15489z1) # (!u_kirsch_reg_r2_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_1_aq,
	datab => u_kirsch_reg_r2_1_aq,
	datad => VCC,
	cin => nx15489z1,
	combout => u_kirsch_r3_15n1s1(1),
	cout => nx31820z1);

-- Location: FF_X22_Y20_N9
u_kirsch_reg_r3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(1),
	asdata => u_kirsch_reg_r2_1_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_1_aq);

-- Location: LCCOMB_X22_Y20_N10
u_kirsch_r3_add12_15i1_ix53_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(2) = ((u_kirsch_reg_r3_2_aq $ (u_kirsch_reg_r2_2_aq $ (!nx31820z1)))) # (GND)
-- nx64864z1 = CARRY((u_kirsch_reg_r3_2_aq & ((u_kirsch_reg_r2_2_aq) # (!nx31820z1))) # (!u_kirsch_reg_r3_2_aq & (u_kirsch_reg_r2_2_aq & !nx31820z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_2_aq,
	datab => u_kirsch_reg_r2_2_aq,
	datad => VCC,
	cin => nx31820z1,
	combout => u_kirsch_r3_15n1s1(2),
	cout => nx64864z1);

-- Location: FF_X22_Y20_N11
u_kirsch_reg_r3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(2),
	asdata => u_kirsch_reg_r2_2_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_2_aq);

-- Location: LCCOMB_X22_Y20_N12
u_kirsch_r3_add12_15i1_ix57_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(3) = (u_kirsch_reg_r3_3_aq & ((u_kirsch_reg_r2_3_aq & (nx64864z1 & VCC)) # (!u_kirsch_reg_r2_3_aq & (!nx64864z1)))) # (!u_kirsch_reg_r3_3_aq & ((u_kirsch_reg_r2_3_aq & (!nx64864z1)) # (!u_kirsch_reg_r2_3_aq & ((nx64864z1) # (GND)))))
-- nx48533z1 = CARRY((u_kirsch_reg_r3_3_aq & (!u_kirsch_reg_r2_3_aq & !nx64864z1)) # (!u_kirsch_reg_r3_3_aq & ((!nx64864z1) # (!u_kirsch_reg_r2_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_3_aq,
	datab => u_kirsch_reg_r2_3_aq,
	datad => VCC,
	cin => nx64864z1,
	combout => u_kirsch_r3_15n1s1(3),
	cout => nx48533z1);

-- Location: FF_X22_Y20_N13
u_kirsch_reg_r3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(3),
	asdata => u_kirsch_reg_r2_3_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_3_aq);

-- Location: LCCOMB_X22_Y20_N14
u_kirsch_r3_add12_15i1_ix61_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(4) = ((u_kirsch_reg_r3_4_aq $ (u_kirsch_reg_r2_4_aq $ (!nx48533z1)))) # (GND)
-- nx51391z1 = CARRY((u_kirsch_reg_r3_4_aq & ((u_kirsch_reg_r2_4_aq) # (!nx48533z1))) # (!u_kirsch_reg_r3_4_aq & (u_kirsch_reg_r2_4_aq & !nx48533z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_4_aq,
	datab => u_kirsch_reg_r2_4_aq,
	datad => VCC,
	cin => nx48533z1,
	combout => u_kirsch_r3_15n1s1(4),
	cout => nx51391z1);

-- Location: FF_X22_Y20_N15
u_kirsch_reg_r3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(4),
	asdata => u_kirsch_reg_r2_4_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_4_aq);

-- Location: LCCOMB_X22_Y20_N16
u_kirsch_r3_add12_15i1_ix65_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(5) = (u_kirsch_reg_r3_5_aq & ((u_kirsch_reg_r2_5_aq & (nx51391z1 & VCC)) # (!u_kirsch_reg_r2_5_aq & (!nx51391z1)))) # (!u_kirsch_reg_r3_5_aq & ((u_kirsch_reg_r2_5_aq & (!nx51391z1)) # (!u_kirsch_reg_r2_5_aq & ((nx51391z1) # (GND)))))
-- nx45293z1 = CARRY((u_kirsch_reg_r3_5_aq & (!u_kirsch_reg_r2_5_aq & !nx51391z1)) # (!u_kirsch_reg_r3_5_aq & ((!nx51391z1) # (!u_kirsch_reg_r2_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_5_aq,
	datab => u_kirsch_reg_r2_5_aq,
	datad => VCC,
	cin => nx51391z1,
	combout => u_kirsch_r3_15n1s1(5),
	cout => nx45293z1);

-- Location: FF_X22_Y20_N17
u_kirsch_reg_r3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(5),
	asdata => u_kirsch_reg_r2_5_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_5_aq);

-- Location: LCCOMB_X22_Y20_N18
u_kirsch_r3_add12_15i1_ix69_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(6) = ((u_kirsch_reg_r2_6_aq $ (u_kirsch_reg_r3_6_aq $ (!nx45293z1)))) # (GND)
-- nx28962z1 = CARRY((u_kirsch_reg_r2_6_aq & ((u_kirsch_reg_r3_6_aq) # (!nx45293z1))) # (!u_kirsch_reg_r2_6_aq & (u_kirsch_reg_r3_6_aq & !nx45293z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r2_6_aq,
	datab => u_kirsch_reg_r3_6_aq,
	datad => VCC,
	cin => nx45293z1,
	combout => u_kirsch_r3_15n1s1(6),
	cout => nx28962z1);

-- Location: FF_X22_Y20_N19
u_kirsch_reg_r3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(6),
	asdata => u_kirsch_reg_r2_6_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_6_aq);

-- Location: LCCOMB_X22_Y20_N20
u_kirsch_r3_add12_15i1_ix73_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(7) = (u_kirsch_reg_r3_7_aq & ((u_kirsch_reg_r2_7_aq & (nx28962z1 & VCC)) # (!u_kirsch_reg_r2_7_aq & (!nx28962z1)))) # (!u_kirsch_reg_r3_7_aq & ((u_kirsch_reg_r2_7_aq & (!nx28962z1)) # (!u_kirsch_reg_r2_7_aq & ((nx28962z1) # (GND)))))
-- nx5426z1 = CARRY((u_kirsch_reg_r3_7_aq & (!u_kirsch_reg_r2_7_aq & !nx28962z1)) # (!u_kirsch_reg_r3_7_aq & ((!nx28962z1) # (!u_kirsch_reg_r2_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_7_aq,
	datab => u_kirsch_reg_r2_7_aq,
	datad => VCC,
	cin => nx28962z1,
	combout => u_kirsch_r3_15n1s1(7),
	cout => nx5426z1);

-- Location: FF_X22_Y20_N21
u_kirsch_reg_r3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(7),
	asdata => u_kirsch_reg_r2_7_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_7_aq);

-- Location: LCCOMB_X22_Y20_N22
u_kirsch_r3_add12_15i1_ix77_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r3_15n1s1(8) = ((u_kirsch_reg_r2_8_aq $ (u_kirsch_reg_r3_8_aq $ (!nx5426z1)))) # (GND)
-- nx43779z1 = CARRY((u_kirsch_reg_r2_8_aq & ((u_kirsch_reg_r3_8_aq) # (!nx5426z1))) # (!u_kirsch_reg_r2_8_aq & (u_kirsch_reg_r3_8_aq & !nx5426z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r2_8_aq,
	datab => u_kirsch_reg_r3_8_aq,
	datad => VCC,
	cin => nx5426z1,
	combout => u_kirsch_r3_15n1s1(8),
	cout => nx43779z1);

-- Location: FF_X22_Y20_N23
u_kirsch_reg_r3_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r3_15n1s1(8),
	asdata => u_kirsch_reg_r2_8_aq,
	sload => u_kirsch_reg_v_1_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_8_aq);

-- Location: LCCOMB_X22_Y20_N24
u_kirsch_r3_add12_15i1_ix81_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16733z1 = ((!u_kirsch_reg_v_1_aq & (u_kirsch_reg_r3_9_aq $ (nx43779z1)))) # (GND)
-- nx9391z1 = CARRY((!nx43779z1) # (!u_kirsch_reg_r3_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_v_1_aq,
	datab => u_kirsch_reg_r3_9_aq,
	datad => VCC,
	cin => nx43779z1,
	combout => nx16733z1,
	cout => nx9391z1);

-- Location: FF_X22_Y20_N25
u_kirsch_reg_r3_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx16733z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_9_aq);

-- Location: LCCOMB_X22_Y20_N26
u_kirsch_r3_add12_15i1_ix85_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51853z1 = ((!u_kirsch_reg_v_1_aq & (u_kirsch_reg_r3_10_aq $ (!nx9391z1)))) # (GND)
-- nx24965z1 = CARRY((u_kirsch_reg_r3_10_aq & !nx9391z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_v_1_aq,
	datab => u_kirsch_reg_r3_10_aq,
	datad => VCC,
	cin => nx9391z1,
	combout => nx51853z1,
	cout => nx24965z1);

-- Location: FF_X22_Y20_N27
u_kirsch_reg_r3_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51853z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_10_aq);

-- Location: LCCOMB_X22_Y20_N28
u_kirsch_r3_add12_15i1_ix87_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50856z1 = (!u_kirsch_reg_v_1_aq & (u_kirsch_reg_r3_11_aq $ (nx24965z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_v_1_aq,
	datab => u_kirsch_reg_r3_11_aq,
	cin => nx24965z1,
	combout => nx50856z1);

-- Location: FF_X22_Y20_N29
u_kirsch_reg_r3_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx50856z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r3_11_aq);

-- Location: LCCOMB_X20_Y20_N6
u_kirsch_r6_add11_18i1_ix34_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(1) = (u_kirsch_reg_r3_0_aq & (u_kirsch_reg_r3_1_aq $ (VCC))) # (!u_kirsch_reg_r3_0_aq & (u_kirsch_reg_r3_1_aq & VCC))
-- nx45160z1 = CARRY((u_kirsch_reg_r3_0_aq & u_kirsch_reg_r3_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_0_aq,
	datab => u_kirsch_reg_r3_1_aq,
	datad => VCC,
	combout => u_kirsch_r6_18n0r1(1),
	cout => nx45160z1);

-- Location: LCCOMB_X20_Y20_N8
u_kirsch_r6_add11_18i1_ix38_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(2) = (u_kirsch_reg_r3_2_aq & ((u_kirsch_reg_r3_1_aq & (nx45160z1 & VCC)) # (!u_kirsch_reg_r3_1_aq & (!nx45160z1)))) # (!u_kirsch_reg_r3_2_aq & ((u_kirsch_reg_r3_1_aq & (!nx45160z1)) # (!u_kirsch_reg_r3_1_aq & ((nx45160z1) # (GND)))))
-- nx4045z1 = CARRY((u_kirsch_reg_r3_2_aq & (!u_kirsch_reg_r3_1_aq & !nx45160z1)) # (!u_kirsch_reg_r3_2_aq & ((!nx45160z1) # (!u_kirsch_reg_r3_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_2_aq,
	datab => u_kirsch_reg_r3_1_aq,
	datad => VCC,
	cin => nx45160z1,
	combout => u_kirsch_r6_18n0r1(2),
	cout => nx4045z1);

-- Location: LCCOMB_X20_Y20_N10
u_kirsch_r6_add11_18i1_ix42_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(3) = ((u_kirsch_reg_r3_2_aq $ (u_kirsch_reg_r3_3_aq $ (!nx4045z1)))) # (GND)
-- nx35193z1 = CARRY((u_kirsch_reg_r3_2_aq & ((u_kirsch_reg_r3_3_aq) # (!nx4045z1))) # (!u_kirsch_reg_r3_2_aq & (u_kirsch_reg_r3_3_aq & !nx4045z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_2_aq,
	datab => u_kirsch_reg_r3_3_aq,
	datad => VCC,
	cin => nx4045z1,
	combout => u_kirsch_r6_18n0r1(3),
	cout => nx35193z1);

-- Location: LCCOMB_X20_Y20_N12
u_kirsch_r6_add11_18i1_ix46_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(4) = (u_kirsch_reg_r3_4_aq & ((u_kirsch_reg_r3_3_aq & (nx35193z1 & VCC)) # (!u_kirsch_reg_r3_3_aq & (!nx35193z1)))) # (!u_kirsch_reg_r3_4_aq & ((u_kirsch_reg_r3_3_aq & (!nx35193z1)) # (!u_kirsch_reg_r3_3_aq & ((nx35193z1) # (GND)))))
-- nx46674z1 = CARRY((u_kirsch_reg_r3_4_aq & (!u_kirsch_reg_r3_3_aq & !nx35193z1)) # (!u_kirsch_reg_r3_4_aq & ((!nx35193z1) # (!u_kirsch_reg_r3_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_4_aq,
	datab => u_kirsch_reg_r3_3_aq,
	datad => VCC,
	cin => nx35193z1,
	combout => u_kirsch_r6_18n0r1(4),
	cout => nx46674z1);

-- Location: LCCOMB_X20_Y20_N14
u_kirsch_r6_add11_18i1_ix50_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(5) = ((u_kirsch_reg_r3_4_aq $ (u_kirsch_reg_r3_5_aq $ (!nx46674z1)))) # (GND)
-- nx50010z1 = CARRY((u_kirsch_reg_r3_4_aq & ((u_kirsch_reg_r3_5_aq) # (!nx46674z1))) # (!u_kirsch_reg_r3_4_aq & (u_kirsch_reg_r3_5_aq & !nx46674z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_4_aq,
	datab => u_kirsch_reg_r3_5_aq,
	datad => VCC,
	cin => nx46674z1,
	combout => u_kirsch_r6_18n0r1(5),
	cout => nx50010z1);

-- Location: LCCOMB_X20_Y20_N16
u_kirsch_r6_add11_18i1_ix54_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(6) = (u_kirsch_reg_r3_6_aq & ((u_kirsch_reg_r3_5_aq & (nx50010z1 & VCC)) # (!u_kirsch_reg_r3_5_aq & (!nx50010z1)))) # (!u_kirsch_reg_r3_6_aq & ((u_kirsch_reg_r3_5_aq & (!nx50010z1)) # (!u_kirsch_reg_r3_5_aq & ((nx50010z1) # (GND)))))
-- nx15622z1 = CARRY((u_kirsch_reg_r3_6_aq & (!u_kirsch_reg_r3_5_aq & !nx50010z1)) # (!u_kirsch_reg_r3_6_aq & ((!nx50010z1) # (!u_kirsch_reg_r3_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_6_aq,
	datab => u_kirsch_reg_r3_5_aq,
	datad => VCC,
	cin => nx50010z1,
	combout => u_kirsch_r6_18n0r1(6),
	cout => nx15622z1);

-- Location: LCCOMB_X20_Y20_N18
u_kirsch_r6_add11_18i1_ix58_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(7) = ((u_kirsch_reg_r3_6_aq $ (u_kirsch_reg_r3_7_aq $ (!nx15622z1)))) # (GND)
-- nx709z1 = CARRY((u_kirsch_reg_r3_6_aq & ((u_kirsch_reg_r3_7_aq) # (!nx15622z1))) # (!u_kirsch_reg_r3_6_aq & (u_kirsch_reg_r3_7_aq & !nx15622z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_6_aq,
	datab => u_kirsch_reg_r3_7_aq,
	datad => VCC,
	cin => nx15622z1,
	combout => u_kirsch_r6_18n0r1(7),
	cout => nx709z1);

-- Location: LCCOMB_X20_Y20_N20
u_kirsch_r6_add11_18i1_ix62_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(8) = (u_kirsch_reg_r3_7_aq & ((u_kirsch_reg_r3_8_aq & (nx709z1 & VCC)) # (!u_kirsch_reg_r3_8_aq & (!nx709z1)))) # (!u_kirsch_reg_r3_7_aq & ((u_kirsch_reg_r3_8_aq & (!nx709z1)) # (!u_kirsch_reg_r3_8_aq & ((nx709z1) # (GND)))))
-- nx30439z1 = CARRY((u_kirsch_reg_r3_7_aq & (!u_kirsch_reg_r3_8_aq & !nx709z1)) # (!u_kirsch_reg_r3_7_aq & ((!nx709z1) # (!u_kirsch_reg_r3_8_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_7_aq,
	datab => u_kirsch_reg_r3_8_aq,
	datad => VCC,
	cin => nx709z1,
	combout => u_kirsch_r6_18n0r1(8),
	cout => nx30439z1);

-- Location: LCCOMB_X20_Y20_N22
u_kirsch_r6_add11_18i1_ix66_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(9) = ((u_kirsch_reg_r3_9_aq $ (u_kirsch_reg_r3_8_aq $ (!nx30439z1)))) # (GND)
-- nx14108z1 = CARRY((u_kirsch_reg_r3_9_aq & ((u_kirsch_reg_r3_8_aq) # (!nx30439z1))) # (!u_kirsch_reg_r3_9_aq & (u_kirsch_reg_r3_8_aq & !nx30439z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_9_aq,
	datab => u_kirsch_reg_r3_8_aq,
	datad => VCC,
	cin => nx30439z1,
	combout => u_kirsch_r6_18n0r1(9),
	cout => nx14108z1);

-- Location: LCCOMB_X20_Y20_N24
u_kirsch_r6_add11_18i1_ix70_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(10) = (u_kirsch_reg_r3_9_aq & ((u_kirsch_reg_r3_10_aq & (nx14108z1 & VCC)) # (!u_kirsch_reg_r3_10_aq & (!nx14108z1)))) # (!u_kirsch_reg_r3_9_aq & ((u_kirsch_reg_r3_10_aq & (!nx14108z1)) # (!u_kirsch_reg_r3_10_aq & ((nx14108z1) # 
-- (GND)))))
-- nx20280z1 = CARRY((u_kirsch_reg_r3_9_aq & (!u_kirsch_reg_r3_10_aq & !nx14108z1)) # (!u_kirsch_reg_r3_9_aq & ((!nx14108z1) # (!u_kirsch_reg_r3_10_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_9_aq,
	datab => u_kirsch_reg_r3_10_aq,
	datad => VCC,
	cin => nx14108z1,
	combout => u_kirsch_r6_18n0r1(10),
	cout => nx20280z1);

-- Location: LCCOMB_X20_Y20_N26
u_kirsch_r6_add11_18i1_ix74_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(11) = ((u_kirsch_reg_r3_10_aq $ (u_kirsch_reg_r3_11_aq $ (!nx20280z1)))) # (GND)
-- nx63132z1 = CARRY((u_kirsch_reg_r3_10_aq & ((u_kirsch_reg_r3_11_aq) # (!nx20280z1))) # (!u_kirsch_reg_r3_10_aq & (u_kirsch_reg_r3_11_aq & !nx20280z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r3_10_aq,
	datab => u_kirsch_reg_r3_11_aq,
	datad => VCC,
	cin => nx20280z1,
	combout => u_kirsch_r6_18n0r1(11),
	cout => nx63132z1);

-- Location: LCCOMB_X20_Y20_N28
u_kirsch_r6_add11_18i1_ix74_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r6_18n0r1(12) = nx63132z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx63132z1,
	combout => u_kirsch_r6_18n0r1(12));

-- Location: FF_X20_Y20_N29
u_kirsch_reg_r6_12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_12_aq);

-- Location: FF_X20_Y20_N27
u_kirsch_reg_r6_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_11_aq);

-- Location: FF_X20_Y20_N25
u_kirsch_reg_r6_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_10_aq);

-- Location: FF_X20_Y20_N23
u_kirsch_reg_r6_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_9_aq);

-- Location: FF_X20_Y20_N21
u_kirsch_reg_r6_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_8_aq);

-- Location: FF_X20_Y20_N19
u_kirsch_reg_r6_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_7_aq);

-- Location: FF_X20_Y20_N17
u_kirsch_reg_r6_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_6_aq);

-- Location: FF_X20_Y20_N15
u_kirsch_reg_r6_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_5_aq);

-- Location: FF_X20_Y20_N13
u_kirsch_reg_r6_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_4_aq);

-- Location: FF_X20_Y20_N11
u_kirsch_reg_r6_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_3_aq);

-- Location: FF_X20_Y20_N9
u_kirsch_reg_r6_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_2_aq);

-- Location: FF_X20_Y20_N7
u_kirsch_reg_r6_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r6_18n0r1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_1_aq);

-- Location: FF_X20_Y18_N1
u_kirsch_reg_r6_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r3_0_aq,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r6_0_aq);

-- Location: LCCOMB_X20_Y18_N0
u_kirsch_r7_sub13_19i1_ix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14412z1 = CARRY((!u_kirsch_reg_r6_1_aq & !u_kirsch_reg_r6_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r6_1_aq,
	datab => u_kirsch_reg_r6_0_aq,
	datad => VCC,
	cout => nx14412z1);

-- Location: LCCOMB_X20_Y18_N2
u_kirsch_r7_sub13_19i1_ix24_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35550z1 = CARRY((u_kirsch_reg_r6_2_aq) # (!nx14412z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r6_2_aq,
	datad => VCC,
	cin => nx14412z1,
	cout => nx35550z1);

-- Location: LCCOMB_X20_Y18_N4
u_kirsch_r7_sub13_19i1_ix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19976z1 = CARRY((u_kirsch_reg_r6_3_aq & (u_kirsch_reg_r5_val_0_aq & !nx35550z1)) # (!u_kirsch_reg_r6_3_aq & ((u_kirsch_reg_r5_val_0_aq) # (!nx35550z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r6_3_aq,
	datab => u_kirsch_reg_r5_val_0_aq,
	datad => VCC,
	cin => nx35550z1,
	cout => nx19976z1);

-- Location: LCCOMB_X20_Y18_N6
u_kirsch_r7_sub13_19i1_ix28_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51881z1 = CARRY((u_kirsch_reg_r5_val_1_aq & (u_kirsch_reg_r6_4_aq & !nx19976z1)) # (!u_kirsch_reg_r5_val_1_aq & ((u_kirsch_reg_r6_4_aq) # (!nx19976z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_1_aq,
	datab => u_kirsch_reg_r6_4_aq,
	datad => VCC,
	cin => nx19976z1,
	cout => nx51881z1);

-- Location: LCCOMB_X20_Y18_N8
u_kirsch_r7_sub13_19i1_ix30_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29229z1 = CARRY((u_kirsch_reg_r6_5_aq & (u_kirsch_reg_r5_val_2_aq & !nx51881z1)) # (!u_kirsch_reg_r6_5_aq & ((u_kirsch_reg_r5_val_2_aq) # (!nx51881z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r6_5_aq,
	datab => u_kirsch_reg_r5_val_2_aq,
	datad => VCC,
	cin => nx51881z1,
	cout => nx29229z1);

-- Location: LCCOMB_X20_Y18_N10
u_kirsch_r7_sub13_19i1_ix32_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60377z1 = CARRY((u_kirsch_reg_r5_val_3_aq & (u_kirsch_reg_r6_6_aq & !nx29229z1)) # (!u_kirsch_reg_r5_val_3_aq & ((u_kirsch_reg_r6_6_aq) # (!nx29229z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_3_aq,
	datab => u_kirsch_reg_r6_6_aq,
	datad => VCC,
	cin => nx29229z1,
	cout => nx60377z1);

-- Location: LCCOMB_X20_Y18_N12
u_kirsch_r7_sub13_19i1_ix36_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_7_a = ((u_kirsch_reg_r5_val_4_aq $ (u_kirsch_reg_r6_7_aq $ (nx60377z1)))) # (GND)
-- nx21490z1 = CARRY((u_kirsch_reg_r5_val_4_aq & ((!nx60377z1) # (!u_kirsch_reg_r6_7_aq))) # (!u_kirsch_reg_r5_val_4_aq & (!u_kirsch_reg_r6_7_aq & !nx60377z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_4_aq,
	datab => u_kirsch_reg_r6_7_aq,
	datad => VCC,
	cin => nx60377z1,
	combout => u_kirsch_r7_19n0r1_7_a,
	cout => nx21490z1);

-- Location: LCCOMB_X20_Y18_N14
u_kirsch_r7_sub13_19i1_ix40_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_8_a = (u_kirsch_reg_r6_8_aq & ((u_kirsch_reg_r5_val_5_aq & (!nx21490z1)) # (!u_kirsch_reg_r5_val_5_aq & ((nx21490z1) # (GND))))) # (!u_kirsch_reg_r6_8_aq & ((u_kirsch_reg_r5_val_5_aq & (nx21490z1 & VCC)) # (!u_kirsch_reg_r5_val_5_aq & 
-- (!nx21490z1))))
-- nx55878z1 = CARRY((u_kirsch_reg_r6_8_aq & ((!nx21490z1) # (!u_kirsch_reg_r5_val_5_aq))) # (!u_kirsch_reg_r6_8_aq & (!u_kirsch_reg_r5_val_5_aq & !nx21490z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r6_8_aq,
	datab => u_kirsch_reg_r5_val_5_aq,
	datad => VCC,
	cin => nx21490z1,
	combout => u_kirsch_r7_19n0r1_8_a,
	cout => nx55878z1);

-- Location: LCCOMB_X20_Y18_N16
u_kirsch_r7_sub13_19i1_ix44_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_9_a = ((u_kirsch_reg_r5_val_6_aq $ (u_kirsch_reg_r6_9_aq $ (nx55878z1)))) # (GND)
-- nx40806z1 = CARRY((u_kirsch_reg_r5_val_6_aq & ((!nx55878z1) # (!u_kirsch_reg_r6_9_aq))) # (!u_kirsch_reg_r5_val_6_aq & (!u_kirsch_reg_r6_9_aq & !nx55878z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_6_aq,
	datab => u_kirsch_reg_r6_9_aq,
	datad => VCC,
	cin => nx55878z1,
	combout => u_kirsch_r7_19n0r1_9_a,
	cout => nx40806z1);

-- Location: LCCOMB_X20_Y18_N18
u_kirsch_r7_sub13_19i1_ix48_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_10_a = (u_kirsch_reg_r6_10_aq & ((u_kirsch_reg_r5_val_7_aq & (!nx40806z1)) # (!u_kirsch_reg_r5_val_7_aq & ((nx40806z1) # (GND))))) # (!u_kirsch_reg_r6_10_aq & ((u_kirsch_reg_r5_val_7_aq & (nx40806z1 & VCC)) # (!u_kirsch_reg_r5_val_7_aq 
-- & (!nx40806z1))))
-- nx41061z1 = CARRY((u_kirsch_reg_r6_10_aq & ((!nx40806z1) # (!u_kirsch_reg_r5_val_7_aq))) # (!u_kirsch_reg_r6_10_aq & (!u_kirsch_reg_r5_val_7_aq & !nx40806z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r6_10_aq,
	datab => u_kirsch_reg_r5_val_7_aq,
	datad => VCC,
	cin => nx40806z1,
	combout => u_kirsch_r7_19n0r1_10_a,
	cout => nx41061z1);

-- Location: LCCOMB_X20_Y18_N20
u_kirsch_r7_sub13_19i1_ix52_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_11_a = ((u_kirsch_reg_r5_val_8_aq $ (u_kirsch_reg_r6_11_aq $ (nx41061z1)))) # (GND)
-- nx9913z1 = CARRY((u_kirsch_reg_r5_val_8_aq & ((!nx41061z1) # (!u_kirsch_reg_r6_11_aq))) # (!u_kirsch_reg_r5_val_8_aq & (!u_kirsch_reg_r6_11_aq & !nx41061z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_8_aq,
	datab => u_kirsch_reg_r6_11_aq,
	datad => VCC,
	cin => nx41061z1,
	combout => u_kirsch_r7_19n0r1_11_a,
	cout => nx9913z1);

-- Location: LCCOMB_X20_Y18_N22
u_kirsch_r7_sub13_19i1_ix56_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_12_a = (u_kirsch_reg_r5_val_9_aq & ((u_kirsch_reg_r6_12_aq & (!nx9913z1)) # (!u_kirsch_reg_r6_12_aq & (nx9913z1 & VCC)))) # (!u_kirsch_reg_r5_val_9_aq & ((u_kirsch_reg_r6_12_aq & ((nx9913z1) # (GND))) # (!u_kirsch_reg_r6_12_aq & 
-- (!nx9913z1))))
-- nx48627z1 = CARRY((u_kirsch_reg_r5_val_9_aq & (u_kirsch_reg_r6_12_aq & !nx9913z1)) # (!u_kirsch_reg_r5_val_9_aq & ((u_kirsch_reg_r6_12_aq) # (!nx9913z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r5_val_9_aq,
	datab => u_kirsch_reg_r6_12_aq,
	datad => VCC,
	cin => nx9913z1,
	combout => u_kirsch_r7_19n0r1_12_a,
	cout => nx48627z1);

-- Location: LCCOMB_X20_Y18_N24
u_kirsch_r7_sub13_19i1_ix56_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r7_19n0r1_13_a = nx48627z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx48627z1,
	combout => u_kirsch_r7_19n0r1_13_a);

-- Location: FF_X20_Y18_N25
u_kirsch_reg_r7_val_13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_13_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_13_aq);

-- Location: FF_X20_Y18_N21
u_kirsch_reg_r7_val_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_11_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_11_aq);

-- Location: FF_X20_Y18_N23
u_kirsch_reg_r7_val_12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_12_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_12_aq);

-- Location: FF_X20_Y18_N19
u_kirsch_reg_r7_val_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_10_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_10_aq);

-- Location: LCCOMB_X20_Y18_N26
ix24163z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24163z2 = (u_kirsch_reg_r7_val_11_aq) # ((u_kirsch_reg_r7_val_12_aq) # (u_kirsch_reg_r7_val_10_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r7_val_11_aq,
	datac => u_kirsch_reg_r7_val_12_aq,
	datad => u_kirsch_reg_r7_val_10_aq,
	combout => nx24163z2);

-- Location: FF_X20_Y18_N13
u_kirsch_reg_r7_val_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_7_aq);

-- Location: FF_X20_Y18_N17
u_kirsch_reg_r7_val_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_9_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_9_aq);

-- Location: FF_X20_Y18_N15
u_kirsch_reg_r7_val_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r7_19n0r1_8_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_val_8_aq);

-- Location: LCCOMB_X20_Y18_N28
ix22605z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22605z3 = (!u_kirsch_reg_r7_val_13_aq & ((u_kirsch_reg_r7_val_9_aq) # ((u_kirsch_reg_r7_val_7_aq & u_kirsch_reg_r7_val_8_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r7_val_7_aq,
	datab => u_kirsch_reg_r7_val_9_aq,
	datac => u_kirsch_reg_r7_val_8_aq,
	datad => u_kirsch_reg_r7_val_13_aq,
	combout => nx22605z3);

-- Location: LCCOMB_X22_Y15_N8
ix32900z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32900z1 = (nx37156z7 & (((!nx46527z6)))) # (!nx37156z7 & (!u_kirsch_reg_v_1_aq & ((nx46527z6) # (!u_kirsch_reg_v_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx37156z7,
	datab => u_kirsch_reg_v_1_aq,
	datac => u_kirsch_reg_v_2_aq,
	datad => nx46527z6,
	combout => nx32900z1);

-- Location: FF_X22_Y15_N9
u_kirsch_reg_r1_ty_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx32900z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_ty_0_aq);

-- Location: LCCOMB_X22_Y18_N28
u_kirsch_reg_r4_ty_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r4_ty_0_afeeder_combout = u_kirsch_reg_r1_ty_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r1_ty_0_aq,
	combout => u_kirsch_reg_r4_ty_0_afeeder_combout);

-- Location: FF_X22_Y18_N29
u_kirsch_reg_r4_ty_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r4_ty_0_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_ty_0_aq);

-- Location: LCCOMB_X22_Y18_N26
u_kirsch_reg_r5_ty_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r5_ty_0_afeeder_combout = u_kirsch_reg_r4_ty_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r4_ty_0_aq,
	combout => u_kirsch_reg_r5_ty_0_afeeder_combout);

-- Location: FF_X22_Y18_N27
u_kirsch_reg_r5_ty_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r5_ty_0_afeeder_combout,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_ty_0_aq);

-- Location: FF_X22_Y18_N23
u_kirsch_reg_r7_ty_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r5_ty_0_aq,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_ty_0_aq);

-- Location: LCCOMB_X20_Y14_N22
ix23166z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23166z1 = (u_kirsch_reg_r7_ty_0_aq & ((nx22605z3) # ((!u_kirsch_reg_r7_val_13_aq & nx24163z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r7_val_13_aq,
	datab => nx24163z2,
	datac => nx22605z3,
	datad => u_kirsch_reg_r7_ty_0_aq,
	combout => nx23166z1);

-- Location: FF_X20_Y14_N23
u_kirsch_reg_o_dir_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx23166z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_dir_0_aq);

-- Location: LCCOMB_X20_Y14_N2
ix59319z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(0) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_dir_0_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_dir_0_aq,
	datac => pb_a0_a_ainput_o,
	datad => k_i_pixel(0),
	combout => rb_i_data(0));

-- Location: LCCOMB_X22_Y10_N4
ix976_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_995 = reg_q_0_dup_40_aq $ (VCC)
-- nx46785z1 = CARRY(reg_q_0_dup_40_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_40_aq,
	datad => VCC,
	combout => inc_d_0_dup_995,
	cout => nx46785z1);

-- Location: LCCOMB_X22_Y10_N22
ix24859z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24859z1 = ((!nx11963z1 & (!reg_wait_for_tx_valid_delayed_aq & reg_rb_rd_en_aq))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11963z1,
	datab => reg_wait_for_tx_valid_delayed_aq,
	datac => reset_n_ainput_o,
	datad => reg_rb_rd_en_aq,
	combout => nx24859z1);

-- Location: FF_X22_Y10_N5
reg_q_0_dup_40 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_995,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_40_aq);

-- Location: LCCOMB_X25_Y10_N0
ix940_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_959 = reg_q_0_dup_32_aq $ (VCC)
-- nx25574z1 = CARRY(reg_q_0_dup_32_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_32_aq,
	datad => VCC,
	combout => inc_d_0_dup_959,
	cout => nx25574z1);

-- Location: LCCOMB_X25_Y10_N18
ix23864z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23864z1 = ((pb_a0_a_ainput_o & ((u_kirsch_reg_o_valid_aq))) # (!pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => reset_n_ainput_o,
	datac => write_fifo_reg_rd_en_delayed_aq,
	datad => u_kirsch_reg_o_valid_aq,
	combout => nx23864z1);

-- Location: FF_X25_Y10_N1
reg_q_0_dup_32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_959,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_32_aq);

-- Location: LCCOMB_X25_Y10_N16
ix59319z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(0) = (nx11963z1 & ((reg_q_0_dup_32_aq))) # (!nx11963z1 & (reg_q_0_dup_40_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_40_aq,
	datac => nx11963z1,
	datad => reg_q_0_dup_32_aq,
	combout => read_fifo_pointer(0));

-- Location: LCCOMB_X22_Y10_N6
ix978_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_997 = (reg_q_1_dup_39_aq & (!nx46785z1)) # (!reg_q_1_dup_39_aq & ((nx46785z1) # (GND)))
-- nx50656z1 = CARRY((!nx46785z1) # (!reg_q_1_dup_39_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_39_aq,
	datad => VCC,
	cin => nx46785z1,
	combout => inc_d_1_dup_997,
	cout => nx50656z1);

-- Location: FF_X22_Y10_N7
reg_q_1_dup_39 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_997,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_39_aq);

-- Location: LCCOMB_X25_Y10_N2
ix942_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_961 = (reg_q_1_dup_31_aq & (!nx25574z1)) # (!reg_q_1_dup_31_aq & ((nx25574z1) # (GND)))
-- nx10000z1 = CARRY((!nx25574z1) # (!reg_q_1_dup_31_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_31_aq,
	datad => VCC,
	cin => nx25574z1,
	combout => inc_d_1_dup_961,
	cout => nx10000z1);

-- Location: FF_X25_Y10_N3
reg_q_1_dup_31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_961,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_31_aq);

-- Location: LCCOMB_X25_Y10_N26
ix59319z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(1) = (nx11963z1 & ((reg_q_1_dup_31_aq))) # (!nx11963z1 & (reg_q_1_dup_39_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_39_aq,
	datac => nx11963z1,
	datad => reg_q_1_dup_31_aq,
	combout => read_fifo_pointer(1));

-- Location: LCCOMB_X25_Y10_N4
ix944_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_963 = (reg_q_2_dup_30_aq & (nx10000z1 $ (GND))) # (!reg_q_2_dup_30_aq & (!nx10000z1 & VCC))
-- nx5574z1 = CARRY((reg_q_2_dup_30_aq & !nx10000z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_30_aq,
	datad => VCC,
	cin => nx10000z1,
	combout => inc_d_2_dup_963,
	cout => nx5574z1);

-- Location: FF_X25_Y10_N5
reg_q_2_dup_30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_963,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_30_aq);

-- Location: LCCOMB_X22_Y10_N8
ix980_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_999 = (reg_q_2_dup_38_aq & (nx50656z1 $ (GND))) # (!reg_q_2_dup_38_aq & (!nx50656z1 & VCC))
-- nx35082z1 = CARRY((reg_q_2_dup_38_aq & !nx50656z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_38_aq,
	datad => VCC,
	cin => nx50656z1,
	combout => inc_d_2_dup_999,
	cout => nx35082z1);

-- Location: FF_X22_Y10_N9
reg_q_2_dup_38 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_999,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_38_aq);

-- Location: LCCOMB_X25_Y10_N28
ix59319z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(2) = (nx11963z1 & (reg_q_2_dup_30_aq)) # (!nx11963z1 & ((reg_q_2_dup_38_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx11963z1,
	datac => reg_q_2_dup_30_aq,
	datad => reg_q_2_dup_38_aq,
	combout => read_fifo_pointer(2));

-- Location: LCCOMB_X22_Y10_N10
ix982_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1001 = (reg_q_3_dup_37_aq & (!nx35082z1)) # (!reg_q_3_dup_37_aq & ((nx35082z1) # (GND)))
-- nx19508z1 = CARRY((!nx35082z1) # (!reg_q_3_dup_37_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_37_aq,
	datad => VCC,
	cin => nx35082z1,
	combout => inc_d_3_dup_1001,
	cout => nx19508z1);

-- Location: FF_X22_Y10_N11
reg_q_3_dup_37 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1001,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_37_aq);

-- Location: LCCOMB_X25_Y10_N6
ix946_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_965 = (reg_q_3_dup_29_aq & (!nx5574z1)) # (!reg_q_3_dup_29_aq & ((nx5574z1) # (GND)))
-- nx21148z1 = CARRY((!nx5574z1) # (!reg_q_3_dup_29_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_29_aq,
	datad => VCC,
	cin => nx5574z1,
	combout => inc_d_3_dup_965,
	cout => nx21148z1);

-- Location: FF_X25_Y10_N7
reg_q_3_dup_29 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_965,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_29_aq);

-- Location: LCCOMB_X22_Y10_N0
ix59319z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(3) = (nx11963z1 & ((reg_q_3_dup_29_aq))) # (!nx11963z1 & (reg_q_3_dup_37_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_37_aq,
	datac => nx11963z1,
	datad => reg_q_3_dup_29_aq,
	combout => read_fifo_pointer(3));

-- Location: LCCOMB_X22_Y10_N12
ix984_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1003 = (reg_q_4_dup_36_aq & (nx19508z1 $ (GND))) # (!reg_q_4_dup_36_aq & (!nx19508z1 & VCC))
-- nx61602z1 = CARRY((reg_q_4_dup_36_aq & !nx19508z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_36_aq,
	datad => VCC,
	cin => nx19508z1,
	combout => inc_d_4_dup_1003,
	cout => nx61602z1);

-- Location: FF_X22_Y10_N13
reg_q_4_dup_36 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1003,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_36_aq);

-- Location: LCCOMB_X25_Y10_N8
ix948_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_967 = (reg_q_4_dup_28_aq & (nx21148z1 $ (GND))) # (!reg_q_4_dup_28_aq & (!nx21148z1 & VCC))
-- nx54779z1 = CARRY((reg_q_4_dup_28_aq & !nx21148z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_28_aq,
	datad => VCC,
	cin => nx21148z1,
	combout => inc_d_4_dup_967,
	cout => nx54779z1);

-- Location: FF_X25_Y10_N9
reg_q_4_dup_28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_967,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_28_aq);

-- Location: LCCOMB_X22_Y10_N2
ix59319z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(4) = (nx11963z1 & ((reg_q_4_dup_28_aq))) # (!nx11963z1 & (reg_q_4_dup_36_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_36_aq,
	datac => nx11963z1,
	datad => reg_q_4_dup_28_aq,
	combout => read_fifo_pointer(4));

-- Location: LCCOMB_X22_Y10_N14
ix986_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1005 = (reg_q_5_dup_35_aq & (!nx61602z1)) # (!reg_q_5_dup_35_aq & ((nx61602z1) # (GND)))
-- nx11640z1 = CARRY((!nx61602z1) # (!reg_q_5_dup_35_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_35_aq,
	datad => VCC,
	cin => nx61602z1,
	combout => inc_d_5_dup_1005,
	cout => nx11640z1);

-- Location: FF_X22_Y10_N15
reg_q_5_dup_35 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1005,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_35_aq);

-- Location: LCCOMB_X25_Y10_N10
ix950_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_969 = (reg_q_5_dup_27_aq & (!nx54779z1)) # (!reg_q_5_dup_27_aq & ((nx54779z1) # (GND)))
-- nx60719z1 = CARRY((!nx54779z1) # (!reg_q_5_dup_27_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_27_aq,
	datad => VCC,
	cin => nx54779z1,
	combout => inc_d_5_dup_969,
	cout => nx60719z1);

-- Location: FF_X25_Y10_N11
reg_q_5_dup_27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_969,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_27_aq);

-- Location: LCCOMB_X22_Y10_N28
ix59319z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(5) = (nx11963z1 & ((reg_q_5_dup_27_aq))) # (!nx11963z1 & (reg_q_5_dup_35_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11963z1,
	datac => reg_q_5_dup_35_aq,
	datad => reg_q_5_dup_27_aq,
	combout => read_fifo_pointer(5));

-- Location: LCCOMB_X22_Y10_N16
ix988_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1007 = (reg_q_6_dup_34_aq & (nx11640z1 $ (GND))) # (!reg_q_6_dup_34_aq & (!nx11640z1 & VCC))
-- nx19427z1 = CARRY((reg_q_6_dup_34_aq & !nx11640z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_34_aq,
	datad => VCC,
	cin => nx11640z1,
	combout => inc_d_6_dup_1007,
	cout => nx19427z1);

-- Location: FF_X22_Y10_N17
reg_q_6_dup_34 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1007,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_34_aq);

-- Location: LCCOMB_X25_Y10_N12
ix952_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_971 = (reg_q_6_dup_26_aq & (nx60719z1 $ (GND))) # (!reg_q_6_dup_26_aq & (!nx60719z1 & VCC))
-- nx52932z1 = CARRY((reg_q_6_dup_26_aq & !nx60719z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_26_aq,
	datad => VCC,
	cin => nx60719z1,
	combout => inc_d_6_dup_971,
	cout => nx52932z1);

-- Location: FF_X25_Y10_N13
reg_q_6_dup_26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_971,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_26_aq);

-- Location: LCCOMB_X25_Y10_N30
ix59319z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(6) = (nx11963z1 & ((reg_q_6_dup_26_aq))) # (!nx11963z1 & (reg_q_6_dup_34_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_34_aq,
	datac => nx11963z1,
	datad => reg_q_6_dup_26_aq,
	combout => read_fifo_pointer(6));

-- Location: LCCOMB_X25_Y10_N14
ix953_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_973 = reg_q_7_dup_25_aq $ (nx52932z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_25_aq,
	cin => nx52932z1,
	combout => inc_d_7_dup_973);

-- Location: FF_X25_Y10_N15
reg_q_7_dup_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_973,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_25_aq);

-- Location: LCCOMB_X22_Y10_N18
ix989_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1009 = reg_q_7_dup_33_aq $ (nx19427z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_33_aq,
	cin => nx19427z1,
	combout => inc_d_7_dup_1009);

-- Location: FF_X22_Y10_N19
reg_q_7_dup_33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1009,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_33_aq);

-- Location: LCCOMB_X25_Y10_N24
ix59319z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(7) = (nx11963z1 & (reg_q_7_dup_25_aq)) # (!nx11963z1 & ((reg_q_7_dup_33_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx11963z1,
	datac => reg_q_7_dup_25_aq,
	datad => reg_q_7_dup_33_aq,
	combout => read_fifo_pointer(7));

-- Location: LCCOMB_X22_Y22_N30
u_kirsch_reg_r1_ty_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r1_ty_1_afeeder_combout = nx46527z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx46527z3,
	combout => u_kirsch_reg_r1_ty_1_afeeder_combout);

-- Location: FF_X22_Y22_N31
u_kirsch_reg_r1_ty_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r1_ty_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_ty_1_aq);

-- Location: LCCOMB_X22_Y22_N20
u_kirsch_reg_r4_ty_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r4_ty_1_afeeder_combout = u_kirsch_reg_r1_ty_1_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_kirsch_reg_r1_ty_1_aq,
	combout => u_kirsch_reg_r4_ty_1_afeeder_combout);

-- Location: FF_X22_Y22_N21
u_kirsch_reg_r4_ty_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r4_ty_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_ty_1_aq);

-- Location: LCCOMB_X22_Y18_N30
u_kirsch_reg_r5_ty_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r5_ty_1_afeeder_combout = u_kirsch_reg_r4_ty_1_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r4_ty_1_aq,
	combout => u_kirsch_reg_r5_ty_1_afeeder_combout);

-- Location: FF_X22_Y18_N31
u_kirsch_reg_r5_ty_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r5_ty_1_afeeder_combout,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_ty_1_aq);

-- Location: FF_X20_Y18_N3
u_kirsch_reg_r7_ty_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r5_ty_1_aq,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_ty_1_aq);

-- Location: LCCOMB_X20_Y14_N0
ix24163z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24163z1 = (u_kirsch_reg_r7_ty_1_aq & ((nx22605z3) # ((!u_kirsch_reg_r7_val_13_aq & nx24163z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx22605z3,
	datab => u_kirsch_reg_r7_ty_1_aq,
	datac => u_kirsch_reg_r7_val_13_aq,
	datad => nx24163z2,
	combout => nx24163z1);

-- Location: FF_X20_Y14_N1
u_kirsch_reg_o_dir_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx24163z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_dir_1_aq);

-- Location: LCCOMB_X25_Y15_N2
ix59319z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(1) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_dir_1_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_dir_1_aq,
	datac => pb_a0_a_ainput_o,
	datad => k_i_pixel(1),
	combout => rb_i_data(1));

-- Location: FF_X23_Y19_N29
u_kirsch_reg_r1_ty_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46527z6,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r1_ty_2_aq);

-- Location: LCCOMB_X22_Y18_N24
u_kirsch_reg_r4_ty_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r4_ty_2_afeeder_combout = u_kirsch_reg_r1_ty_2_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r1_ty_2_aq,
	combout => u_kirsch_reg_r4_ty_2_afeeder_combout);

-- Location: FF_X22_Y18_N25
u_kirsch_reg_r4_ty_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r4_ty_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r4_ty_2_aq);

-- Location: LCCOMB_X22_Y18_N0
u_kirsch_reg_r5_ty_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r5_ty_2_afeeder_combout = u_kirsch_reg_r4_ty_2_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r4_ty_2_aq,
	combout => u_kirsch_reg_r5_ty_2_afeeder_combout);

-- Location: FF_X22_Y18_N1
u_kirsch_reg_r5_ty_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r5_ty_2_afeeder_combout,
	ena => nx3238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r5_ty_2_aq);

-- Location: LCCOMB_X20_Y14_N18
u_kirsch_reg_r7_ty_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r7_ty_2_afeeder_combout = u_kirsch_reg_r5_ty_2_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r5_ty_2_aq,
	combout => u_kirsch_reg_r7_ty_2_afeeder_combout);

-- Location: FF_X20_Y14_N19
u_kirsch_reg_r7_ty_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r7_ty_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r7_ty_2_aq);

-- Location: LCCOMB_X20_Y18_N30
ix22605z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22605z2 = (u_kirsch_reg_r7_val_12_aq) # (u_kirsch_reg_r7_val_11_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_kirsch_reg_r7_val_12_aq,
	datad => u_kirsch_reg_r7_val_11_aq,
	combout => nx22605z2);

-- Location: LCCOMB_X20_Y14_N26
ix22605z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22605z1 = (nx22605z3) # ((!u_kirsch_reg_r7_val_13_aq & ((nx22605z2) # (u_kirsch_reg_r7_val_10_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r7_val_13_aq,
	datab => nx22605z2,
	datac => nx22605z3,
	datad => u_kirsch_reg_r7_val_10_aq,
	combout => nx22605z1);

-- Location: LCCOMB_X20_Y14_N20
ix25160z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25160z1 = (u_kirsch_reg_r7_ty_2_aq & nx22605z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r7_ty_2_aq,
	datac => nx22605z1,
	combout => nx25160z1);

-- Location: FF_X20_Y14_N21
u_kirsch_reg_o_dir_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx25160z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_dir_2_aq);

-- Location: LCCOMB_X24_Y15_N0
ix59319z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(2) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_dir_2_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_o_dir_2_aq,
	datad => k_i_pixel(2),
	combout => rb_i_data(2));

-- Location: FF_X20_Y14_N27
u_kirsch_reg_o_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx22605z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_edge_aq);

-- Location: LCCOMB_X20_Y14_N16
ix59319z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(3) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_edge_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_edge_aq,
	datac => pb_a0_a_ainput_o,
	datad => k_i_pixel(3),
	combout => rb_i_data(3));

-- Location: LCCOMB_X25_Y15_N8
ix59319z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(4) = (pb_a0_a_ainput_o & (!u_kirsch_reg_o_mode_0_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_mode_0_aq,
	datac => pb_a0_a_ainput_o,
	datad => k_i_pixel(4),
	combout => rb_i_data(4));

-- Location: LCCOMB_X25_Y13_N0
ix59319z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(5) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_mode_1_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_o_mode_1_aq,
	datad => k_i_pixel(5),
	combout => rb_i_data(5));

-- Location: LCCOMB_X22_Y16_N26
ix40325z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40325z1 = (u_uart_reg_RxFSM_5_aq) # ((!u_uart_reg_RxRDYi_aq & u_uart_reg_RxErr_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_5_aq,
	datab => u_uart_reg_RxRDYi_aq,
	datac => u_uart_reg_RxErr_aq,
	combout => nx40325z1);

-- Location: FF_X22_Y16_N27
u_uart_reg_RxErr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx40325z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxErr_aq);

-- Location: LCCOMB_X25_Y13_N26
ix59319z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(6) = (pb_a0_a_ainput_o & (u_uart_reg_RxErr_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxErr_aq,
	datab => pb_a0_a_ainput_o,
	datad => k_i_pixel(6),
	combout => rb_i_data(6));

-- Location: LCCOMB_X27_Y13_N0
ix59319z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(7) = (pb_a0_a_ainput_o & (!reset_n_ainput_o)) # (!pb_a0_a_ainput_o & ((k_i_pixel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => pb_a0_a_ainput_o,
	datad => k_i_pixel(7),
	combout => rb_i_data(7));

-- Location: M9K_X26_Y13_N0
read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:read_fifo_mem_mem|altsyncram:ix64056z29482|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => nx11963z1,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X22_Y13_N18
read_fifo_reg_q_saved_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_0_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => read_fifo_reg_q_saved_0_afeeder_combout);

-- Location: FF_X22_Y13_N19
read_fifo_reg_q_saved_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_0_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_0_aq);

-- Location: LCCOMB_X22_Y13_N28
ix18859z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_0_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_0_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => NOT_rb_o_data_0_a);

-- Location: LCCOMB_X22_Y13_N16
read_fifo_reg_q_saved_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_1_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => read_fifo_reg_q_saved_1_afeeder_combout);

-- Location: FF_X22_Y13_N17
read_fifo_reg_q_saved_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_1_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_1_aq);

-- Location: LCCOMB_X22_Y13_N22
ix19856z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_1_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_1_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => NOT_rb_o_data_1_a);

-- Location: LCCOMB_X22_Y13_N12
read_fifo_reg_q_saved_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_2_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2),
	combout => read_fifo_reg_q_saved_2_afeeder_combout);

-- Location: FF_X22_Y13_N13
read_fifo_reg_q_saved_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_2_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_2_aq);

-- Location: LCCOMB_X22_Y13_N20
ix20853z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_2_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_2_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2),
	combout => NOT_rb_o_data_2_a);

-- Location: LCCOMB_X22_Y13_N2
read_fifo_reg_q_saved_3_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_3_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3),
	combout => read_fifo_reg_q_saved_3_afeeder_combout);

-- Location: FF_X22_Y13_N3
read_fifo_reg_q_saved_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_3_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_3_aq);

-- Location: LCCOMB_X22_Y13_N26
ix21850z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_3_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_3_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3),
	combout => NOT_rb_o_data_3_a);

-- Location: LCCOMB_X22_Y13_N0
read_fifo_reg_q_saved_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_4_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4),
	combout => read_fifo_reg_q_saved_4_afeeder_combout);

-- Location: FF_X22_Y13_N1
read_fifo_reg_q_saved_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_4_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_4_aq);

-- Location: LCCOMB_X22_Y13_N30
ix22847z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_4_a = (reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4))) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4),
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_reg_q_saved_4_aq,
	combout => NOT_rb_o_data_4_a);

-- Location: LCCOMB_X22_Y13_N24
read_fifo_reg_q_saved_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_5_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5),
	combout => read_fifo_reg_q_saved_5_afeeder_combout);

-- Location: FF_X22_Y13_N25
read_fifo_reg_q_saved_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_5_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_5_aq);

-- Location: LCCOMB_X22_Y13_N8
ix23844z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_5_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_5_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5),
	combout => NOT_rb_o_data_5_a);

-- Location: LCCOMB_X22_Y13_N10
read_fifo_reg_q_saved_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_6_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6),
	combout => read_fifo_reg_q_saved_6_afeeder_combout);

-- Location: FF_X22_Y13_N11
read_fifo_reg_q_saved_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_6_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_6_aq);

-- Location: LCCOMB_X22_Y13_N14
ix24841z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_6_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_6_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6),
	combout => NOT_rb_o_data_6_a);

-- Location: LCCOMB_X22_Y13_N6
read_fifo_reg_q_saved_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_7_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7),
	combout => read_fifo_reg_q_saved_7_afeeder_combout);

-- Location: FF_X22_Y13_N7
read_fifo_reg_q_saved_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_7_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_7_aq);

-- Location: LCCOMB_X22_Y13_N4
ix25838z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_u_uart_Tx_Reg_14n6ss1_8_a = (!u_uart_reg_TxFSM_1_aq & ((reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_7_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7),
	combout => NOT_u_uart_Tx_Reg_14n6ss1_8_a);

-- Location: LCCOMB_X17_Y16_N6
ix18859z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18859z1 = (!u_uart_reg_TxFSM_0_aq & ((u_uart_reg_TxFSM_1_aq & ((u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_1_aq & (!reg_tx_valid_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => reg_tx_valid_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx18859z1);

-- Location: FF_X22_Y13_N5
u_uart_reg_Tx_Reg_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_u_uart_Tx_Reg_14n6ss1_8_a,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_8_aq);

-- Location: FF_X22_Y13_N15
u_uart_reg_Tx_Reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_6_a,
	asdata => u_uart_reg_Tx_Reg_8_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_7_aq);

-- Location: FF_X22_Y13_N9
u_uart_reg_Tx_Reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_5_a,
	asdata => u_uart_reg_Tx_Reg_7_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_6_aq);

-- Location: FF_X22_Y13_N31
u_uart_reg_Tx_Reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_4_a,
	asdata => u_uart_reg_Tx_Reg_6_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_5_aq);

-- Location: FF_X22_Y13_N27
u_uart_reg_Tx_Reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_3_a,
	asdata => u_uart_reg_Tx_Reg_5_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_4_aq);

-- Location: FF_X22_Y13_N21
u_uart_reg_Tx_Reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_2_a,
	asdata => u_uart_reg_Tx_Reg_4_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_3_aq);

-- Location: FF_X22_Y13_N23
u_uart_reg_Tx_Reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_1_a,
	asdata => u_uart_reg_Tx_Reg_3_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_2_aq);

-- Location: FF_X22_Y13_N29
u_uart_reg_Tx_Reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_0_a,
	asdata => u_uart_reg_Tx_Reg_2_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_1_aq);

-- Location: LCCOMB_X17_Y16_N16
ix17862z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17862z2 = (u_uart_reg_TxFSM_1_aq & ((!u_uart_reg_Tx_Reg_1_aq))) # (!u_uart_reg_TxFSM_1_aq & (!u_uart_reg_TxFSM_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_Tx_Reg_1_aq,
	combout => nx17862z2);

-- Location: LCCOMB_X17_Y16_N12
ix17862z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17862z1 = (nx17862z4 & (u_uart_reg_Tx_Reg_0_aq)) # (!nx17862z4 & ((!nx17862z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx17862z4,
	datac => u_uart_reg_Tx_Reg_0_aq,
	datad => nx17862z2,
	combout => nx17862z1);

-- Location: FF_X17_Y16_N13
u_uart_reg_Tx_Reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx17862z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_0_aq);

-- Location: LCCOMB_X13_Y15_N24
ix3377z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3377z1 = (reg_q_2_dup_96_aq & ((reg_q_1_dup_97_aq) # (reg_q_0_dup_98_aq $ (reg_q_3_dup_95_aq)))) # (!reg_q_2_dup_96_aq & ((reg_q_1_dup_97_aq $ (reg_q_3_dup_95_aq)) # (!reg_q_0_dup_98_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_3_dup_95_aq,
	combout => nx3377z1);

-- Location: LCCOMB_X17_Y13_N0
ix3377z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3377z2 = (reg_q_7_dup_91_aq & ((reg_q_5_dup_93_aq $ (!reg_q_6_dup_92_aq)) # (!reg_q_4_dup_94_aq))) # (!reg_q_7_dup_91_aq & ((reg_q_5_dup_93_aq) # (reg_q_4_dup_94_aq $ (!reg_q_6_dup_92_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx3377z2);

-- Location: LCCOMB_X13_Y15_N2
ix3377z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_0_a = (reg_q_10_dup_50_aq & ((nx3377z2))) # (!reg_q_10_dup_50_aq & (nx3377z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx3377z1,
	datac => reg_q_10_dup_50_aq,
	datad => nx3377z2,
	combout => u_seg7_u_dual_seg7_muxed_char_0_a);

-- Location: FF_X13_Y15_N3
u_seg7_u_dual_seg7_reg_o_char_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_0_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_0_aq);

-- Location: LCCOMB_X13_Y15_N30
ix5371z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5371z1 = (reg_q_2_dup_96_aq & (((!reg_q_1_dup_97_aq & reg_q_0_dup_98_aq)) # (!reg_q_3_dup_95_aq))) # (!reg_q_2_dup_96_aq & (((reg_q_0_dup_98_aq) # (reg_q_3_dup_95_aq)) # (!reg_q_1_dup_97_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_3_dup_95_aq,
	combout => nx5371z1);

-- Location: LCCOMB_X17_Y13_N26
ix5371z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5371z2 = (reg_q_7_dup_91_aq & (((reg_q_4_dup_94_aq & !reg_q_5_dup_93_aq)) # (!reg_q_6_dup_92_aq))) # (!reg_q_7_dup_91_aq & ((reg_q_4_dup_94_aq) # ((reg_q_6_dup_92_aq) # (!reg_q_5_dup_93_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx5371z2);

-- Location: LCCOMB_X13_Y15_N8
ix5371z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_2_a = (reg_q_10_dup_50_aq & ((nx5371z2))) # (!reg_q_10_dup_50_aq & (nx5371z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_10_dup_50_aq,
	datac => nx5371z1,
	datad => nx5371z2,
	combout => u_seg7_u_dual_seg7_muxed_char_2_a);

-- Location: FF_X13_Y15_N9
u_seg7_u_dual_seg7_reg_o_char_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_2_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_2_aq);

-- Location: LCCOMB_X13_Y15_N10
ix6368z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6368z1 = (reg_q_1_dup_97_aq & ((reg_q_2_dup_96_aq & (!reg_q_0_dup_98_aq)) # (!reg_q_2_dup_96_aq & ((reg_q_0_dup_98_aq) # (!reg_q_3_dup_95_aq))))) # (!reg_q_1_dup_97_aq & ((reg_q_3_dup_95_aq) # (reg_q_2_dup_96_aq $ (!reg_q_0_dup_98_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_3_dup_95_aq,
	combout => nx6368z1);

-- Location: LCCOMB_X17_Y13_N28
ix6368z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6368z2 = (reg_q_5_dup_93_aq & ((reg_q_4_dup_94_aq & ((!reg_q_6_dup_92_aq))) # (!reg_q_4_dup_94_aq & ((reg_q_6_dup_92_aq) # (!reg_q_7_dup_91_aq))))) # (!reg_q_5_dup_93_aq & ((reg_q_7_dup_91_aq) # (reg_q_4_dup_94_aq $ (!reg_q_6_dup_92_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx6368z2);

-- Location: LCCOMB_X13_Y15_N12
ix6368z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_3_a = (reg_q_10_dup_50_aq & ((nx6368z2))) # (!reg_q_10_dup_50_aq & (nx6368z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6368z1,
	datab => nx6368z2,
	datac => reg_q_10_dup_50_aq,
	combout => u_seg7_u_dual_seg7_muxed_char_3_a);

-- Location: FF_X13_Y15_N13
u_seg7_u_dual_seg7_reg_o_char_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_3_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_3_aq);

-- Location: LCCOMB_X13_Y15_N22
ix7365z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7365z1 = (reg_q_1_dup_97_aq & (((reg_q_3_dup_95_aq) # (!reg_q_0_dup_98_aq)))) # (!reg_q_1_dup_97_aq & ((reg_q_2_dup_96_aq & ((reg_q_3_dup_95_aq))) # (!reg_q_2_dup_96_aq & (!reg_q_0_dup_98_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datab => reg_q_2_dup_96_aq,
	datac => reg_q_0_dup_98_aq,
	datad => reg_q_3_dup_95_aq,
	combout => nx7365z1);

-- Location: LCCOMB_X22_Y15_N24
ix7365z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7365z2 = (reg_q_5_dup_93_aq & (((reg_q_7_dup_91_aq) # (!reg_q_4_dup_94_aq)))) # (!reg_q_5_dup_93_aq & ((reg_q_6_dup_92_aq & (reg_q_7_dup_91_aq)) # (!reg_q_6_dup_92_aq & ((!reg_q_4_dup_94_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_92_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_4_dup_94_aq,
	datad => reg_q_5_dup_93_aq,
	combout => nx7365z2);

-- Location: LCCOMB_X13_Y15_N0
ix7365z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_4_a = (reg_q_10_dup_50_aq & ((nx7365z2))) # (!reg_q_10_dup_50_aq & (nx7365z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_10_dup_50_aq,
	datac => nx7365z1,
	datad => nx7365z2,
	combout => u_seg7_u_dual_seg7_muxed_char_4_a);

-- Location: FF_X13_Y15_N1
u_seg7_u_dual_seg7_reg_o_char_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_4_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_4_aq);

-- Location: LCCOMB_X13_Y15_N26
ix10356z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_7_a = (reg_q_10_dup_50_aq & (u_kirsch_reg_o_mode_1_aq)) # (!reg_q_10_dup_50_aq & ((!u_kirsch_reg_o_mode_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_o_mode_1_aq,
	datac => reg_q_10_dup_50_aq,
	datad => u_kirsch_reg_o_mode_0_aq,
	combout => u_seg7_u_dual_seg7_muxed_char_7_a);

-- Location: FF_X13_Y15_N27
u_seg7_u_dual_seg7_reg_o_char_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_7_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_7_aq);

-- Location: IOIBUF_X0_Y5_N1
sw_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => sw_a0_a_ainput_o);

-- Location: IOIBUF_X10_Y19_N15
sw_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => sw_a1_a_ainput_o);

-- Location: IOIBUF_X10_Y19_N22
sw_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => sw_a2_a_ainput_o);

-- Location: IOIBUF_X10_Y20_N15
sw_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => sw_a3_a_ainput_o);

-- Location: IOIBUF_X10_Y21_N15
sw_a4_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => sw_a4_a_ainput_o);

-- Location: IOIBUF_X10_Y22_N15
sw_a5_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => sw_a5_a_ainput_o);

-- Location: IOIBUF_X3_Y0_N8
sw_a6_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => sw_a6_a_ainput_o);

-- Location: IOIBUF_X1_Y10_N15
sw_a7_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => sw_a7_a_ainput_o);

-- Location: IOIBUF_X9_Y0_N22
pb_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => pb_a1_a_ainput_o);

-- Location: IOIBUF_X9_Y0_N29
pb_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => pb_a2_a_ainput_o);

-- Location: IOIBUF_X6_Y0_N15
pb_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => pb_a3_a_ainput_o);

-- Location: UNVM_X0_Y11_N40
a_aQUARTUS_CREATED_UNVM_a : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => a_aQUARTUS_CREATED_GND_aI_combout,
	xe_ye => a_aQUARTUS_CREATED_GND_aI_combout,
	se => a_aQUARTUS_CREATED_GND_aI_combout,
	busy => a_aQUARTUS_CREATED_UNVM_a_abusy);

-- Location: ADCBLOCK_X10_Y24_N0
a_aQUARTUS_CREATED_ADC1_a : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => a_aQUARTUS_CREATED_GND_aI_combout,
	usr_pwd => VCC,
	tsen => a_aQUARTUS_CREATED_GND_aI_combout,
	chsel => a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC1_a_aeoc);

ww_uart_tx <= uart_tx_aoutput_o;

ww_seg7_en(0) <= seg7_en_a0_a_aoutput_o;

ww_seg7_en(1) <= seg7_en_a1_a_aoutput_o;

ww_seg7_data(0) <= seg7_data_a0_a_aoutput_o;

ww_seg7_data(1) <= seg7_data_a1_a_aoutput_o;

ww_seg7_data(2) <= seg7_data_a2_a_aoutput_o;

ww_seg7_data(3) <= seg7_data_a3_a_aoutput_o;

ww_seg7_data(4) <= seg7_data_a4_a_aoutput_o;

ww_seg7_data(5) <= seg7_data_a5_a_aoutput_o;

ww_seg7_data(6) <= seg7_data_a6_a_aoutput_o;

ww_seg7_data(7) <= seg7_data_a7_a_aoutput_o;

ww_led(0) <= led_a0_a_aoutput_o;

ww_led(1) <= led_a1_a_aoutput_o;

ww_led(2) <= led_a2_a_aoutput_o;

ww_led(3) <= led_a3_a_aoutput_o;

ww_led(4) <= led_a4_a_aoutput_o;

ww_led(5) <= led_a5_a_aoutput_o;

ww_led(6) <= led_a6_a_aoutput_o;

ww_led(7) <= led_a7_a_aoutput_o;
END structure;


