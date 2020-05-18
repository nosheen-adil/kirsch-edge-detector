// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

// DATE "03/28/2019 13:17:03"

// 
// Device: Altera 10M08SAE144C8G Package EQFP144
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_top (
	reset_n,
	clk,
	uart_rx,
	uart_tx,
	sw,
	pb,
	seg7_en,
	seg7_data,
	led);
input 	reset_n;
input 	clk;
input 	uart_rx;
output 	uart_tx;
input 	[7:0] sw;
input 	[3:0] pb;
output 	[1:0] seg7_en;
output 	[7:0] seg7_data;
output 	[7:0] led;

// Design Ports Information
// uart_tx	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[4]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[1]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_en[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_en[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[0]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
// reset_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
// uart_rx	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire sw_a0_a_ainput_o;
wire sw_a1_a_ainput_o;
wire sw_a2_a_ainput_o;
wire sw_a3_a_ainput_o;
wire sw_a4_a_ainput_o;
wire sw_a5_a_ainput_o;
wire sw_a6_a_ainput_o;
wire sw_a7_a_ainput_o;
wire pb_a1_a_ainput_o;
wire pb_a2_a_ainput_o;
wire pb_a3_a_ainput_o;
wire a_aQUARTUS_CREATED_GND_aI_combout;
wire a_aQUARTUS_CREATED_UNVM_a_abusy;
wire a_aQUARTUS_CREATED_ADC1_a_aeoc;
wire seg7_data_a1_a_aoutput_o;
wire seg7_data_a5_a_aoutput_o;
wire seg7_data_a6_a_aoutput_o;
wire led_a0_a_aoutput_o;
wire led_a1_a_aoutput_o;
wire led_a2_a_aoutput_o;
wire led_a3_a_aoutput_o;
wire led_a4_a_aoutput_o;
wire led_a5_a_aoutput_o;
wire led_a6_a_aoutput_o;
wire led_a7_a_aoutput_o;
wire uart_tx_aoutput_o;
wire seg7_en_a0_a_aoutput_o;
wire seg7_en_a1_a_aoutput_o;
wire seg7_data_a0_a_aoutput_o;
wire seg7_data_a2_a_aoutput_o;
wire seg7_data_a3_a_aoutput_o;
wire seg7_data_a4_a_aoutput_o;
wire seg7_data_a7_a_aoutput_o;
wire clk_ainput_o;
wire clk_ainputclkctrl_outclk;
wire inc_d_0__dup_1070;
wire reset_n_ainput_o;
wire u_seg7_u_dual_seg7_reg_prev_reset_a0_combout;
wire u_seg7_u_dual_seg7_reg_prev_reset_aq;
wire nx29573z1;
wire reg_q_0__dup_60_aq;
wire nx57492z2;
wire inc_d_1__dup_1071;
wire reg_q_1__dup_59_aq;
wire nx41918z2;
wire inc_d_2__dup_1072;
wire reg_q_2__dup_58_aq;
wire nx39192z2;
wire inc_d_3__dup_1073;
wire reg_q_3__dup_57_aq;
wire nx54766z2;
wire inc_d_4__dup_1074;
wire reg_q_4__dup_56_aq;
wire nx22861z2;
wire inc_d_5__dup_1075;
wire reg_q_5__dup_55_aq;
wire nx38435z2;
wire inc_d_6__dup_1076;
wire reg_q_6__dup_54_aq;
wire nx11527z2;
wire inc_d_7__dup_1077;
wire reg_q_7__dup_53_aq;
wire nx55707z2;
wire inc_d_8__dup_1078;
wire reg_q_8__dup_52_aq;
wire nx44217z2;
wire inc_d_9__dup_1079;
wire reg_q_9__dup_51_aq;
wire nx10586z1;
wire inc_d_10__dup_1080;
wire reg_q_10__dup_50_aq;
wire inc_d_0__dup_1281;
wire pb_a0_a_ainput_o;
wire inc_d_0__dup_1118;
wire inc_d_0_;
wire reg_q_0__aq;
wire nx27063z1;
wire inc_d_1_;
wire reg_q_1__aq;
wire nx39256z1;
wire inc_d_2_;
wire reg_q_2__aq;
wire nx57428z1;
wire inc_d_3_;
wire reg_q_3__aq;
wire nx23040z1;
wire inc_d_4_;
wire reg_q_4__aq;
wire nx58827z1;
wire inc_d_5_;
wire reg_q_5__aq;
wire nx37857z1;
wire inc_d_6_;
wire reg_q_6__aq;
wire nx2950z1;
wire inc_d_7_;
wire reg_q_7__aq;
wire nx47012z1;
wire inc_d_8_;
wire reg_q_8__aq;
wire nx9072z1;
wire inc_d_9_;
wire reg_q_9__aq;
wire nx40977z1;
wire inc_d_10_;
wire reg_q_10__aq;
wire nx60415z4;
wire nx60415z2;
wire nx60415z3;
wire nx60415z5;
wire nx60415z1;
wire reg_uart_reset_aq;
wire nx14933z2;
wire nx14933z5;
wire u_uart_reg_RxDivisor_4__afeeder_combout;
wire u_uart_reg_RxDivisor_4__aq;
wire nx40606z1;
wire inc_d_10__dup_1138;
wire reg_q_10__dup_61_aq;
wire nx14933z6;
wire nx14933z4;
wire nx14933z3;
wire nx64683z1;
wire u_uart_reg_RxFSM_1__a0_combout;
wire uart_rx_ainput_o;
wire u_uart_reg_Rx_r_a0_combout;
wire u_uart_reg_Rx_r_aq;
wire nx8802z1;
wire u_uart_reg_RxFSM_5__aq;
wire nx12790z2;
wire nx12790z3;
wire nx12790z1;
wire u_uart_reg_RxFSM_1__aq;
wire nx11793z1;
wire u_uart_reg_RxFSM_2__aq;
wire nx10796z1;
wire u_uart_reg_RxFSM_3__aq;
wire nx64683z3;
wire u_uart_modgen_counter_RxBitCnt_reg_q_0__aq;
wire nx144z1;
wire u_uart_modgen_counter_RxBitCnt_reg_q_1__aq;
wire nx1141z1;
wire u_uart_modgen_counter_RxBitCnt_reg_q_2__aq;
wire nx2138z2;
wire nx2138z1;
wire u_uart_modgen_counter_RxBitCnt_reg_q_3__aq;
wire nx9799z2;
wire nx9799z1;
wire u_uart_reg_RxFSM_4__aq;
wire nx13787z1;
wire u_uart_reg_RxFSM_0__aq;
wire nx14933z1;
wire reg_q_0__dup_71_aq;
wire nx7080z1;
wire inc_d_1__dup_1120;
wire reg_q_1__dup_70_aq;
wire nx24825z1;
wire inc_d_2__dup_1122;
wire reg_q_2__dup_69_aq;
wire nx9251z1;
wire inc_d_3__dup_1124;
wire reg_q_3__dup_68_aq;
wire nx59213z1;
wire inc_d_4__dup_1126;
wire reg_q_4__dup_67_aq;
wire nx43639z1;
wire inc_d_5__dup_1128;
wire reg_q_5__dup_66_aq;
wire nx37471z1;
wire inc_d_6__dup_1130;
wire reg_q_6__dup_65_aq;
wire nx51531z1;
wire inc_d_7__dup_1132;
wire reg_q_7__dup_64_aq;
wire nx63967z1;
wire inc_d_8__dup_1134;
wire reg_q_8__dup_63_aq;
wire nx48393z1;
wire inc_d_9__dup_1136;
wire reg_q_9__dup_62_aq;
wire nx59343z3;
wire nx59343z4;
wire nx59343z2;
wire nx59343z1;
wire u_uart_reg_TopRx_aq;
wire nx13938z1;
wire u_uart_reg_RxRDYi_afeeder_combout;
wire u_uart_reg_RxRDYi_aq;
wire reg_q_0__dup_24_a_wirecell_combout;
wire nx2541z1;
wire incdec_mux_8_dup_121;
wire reg_q_8__dup_16_aq;
wire nx18416z3;
wire nx18416z4;
wire nx18416z2;
wire nx18416z1;
wire reg_q_0__dup_24_aq;
wire nx14325z1;
wire incdec_mux_1_dup_114;
wire reg_q_1__dup_23_aq;
wire nx35637z1;
wire incdec_mux_2_dup_115;
wire reg_q_2__dup_22_aq;
wire nx20063z1;
wire incdec_mux_3_dup_116;
wire reg_q_3__dup_21_aq;
wire nx4489z1;
wire incdec_mux_4_dup_117;
wire reg_q_4__dup_20_aq;
wire nx29142z1;
wire incdec_mux_5_dup_118;
wire reg_q_5__dup_19_aq;
wire nx44716z1;
wire incdec_mux_6_dup_119;
wire reg_q_6__dup_18_aq;
wire nx60290z1;
wire incdec_mux_7_dup_120;
wire reg_q_7__dup_17_aq;
wire nx7605z2;
wire nx7605z1;
wire write_fifo_reg_rd_en_delayed_afeeder_combout;
wire write_fifo_reg_rd_en_delayed_aq;
wire nx37156z7;
wire nx40460z1;
wire inc_d_2__dup_1285;
wire reg_q_2__dup_96_aq;
wire nx40650z1;
wire inc_d_3__dup_1287;
wire reg_q_3__dup_95_aq;
wire nx56224z1;
wire inc_d_4__dup_1289;
wire reg_q_4__dup_94_aq;
wire nx24319z1;
wire inc_d_5__dup_1291;
wire reg_q_5__dup_93_aq;
wire nx25643z1;
wire inc_d_6__dup_1293;
wire reg_q_6__dup_92_aq;
wire nx17856z1;
wire inc_d_7__dup_1295;
wire reg_q_7__dup_91_aq;
wire nx25399z6;
wire nx37156z4;
wire nx37156z3;
wire inc_d_0__dup_1243;
wire nx38412z1;
wire reg_q_0__dup_90_aq;
wire nx30952z1;
wire inc_d_1__dup_1245;
wire reg_q_1__dup_89_aq;
wire nx50158z1;
wire inc_d_2__dup_1247;
wire reg_q_2__dup_88_aq;
wire nx196z1;
wire inc_d_3__dup_1249;
wire reg_q_3__dup_87_aq;
wire nx37156z6;
wire nx33827z1;
wire inc_d_4__dup_1251;
wire reg_q_4__dup_86_aq;
wire nx16135z1;
wire inc_d_5__dup_1253;
wire reg_q_5__dup_85_aq;
wire nx561z1;
wire inc_d_6__dup_1255;
wire reg_q_6__dup_84_aq;
wire nx58310z1;
wire inc_d_7__dup_1257;
wire reg_q_7__dup_83_aq;
wire nx25399z5;
wire nx37156z5;
wire nx37156z2;
wire nx37156z1;
wire u_kirsch_reg_o_mode_0__aq;
wire nx38153z1;
wire u_kirsch_reg_o_mode_1__aq;
wire nx25399z8;
wire nx25399z7;
wire nx25399z4;
wire nx25399z3;
wire nx25399z2;
wire nx25399z1;
wire reg_q_0__dup_98_aq;
wire nx56034z1;
wire inc_d_1__dup_1283;
wire reg_q_1__dup_97_aq;
wire nx18625z2;
wire nx18625z3;
wire nx18625z1;
wire u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout;
wire u_seg7_u_dual_seg7_reg_prev_char0_en_aq;
wire u_seg7_u_dual_seg7_load_reg;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq;
wire nx28027z2;
wire nx28027z3;
wire nx28027z1;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq;
wire nx51544z2;
wire nx51544z3;
wire nx51544z1;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq;
wire inc_d_0__dup_1171;
wire reg_q_0__dup_82_aq;
wire nx7939z1;
wire inc_d_1__dup_1173;
wire reg_q_1__dup_81_aq;
wire nx57901z1;
wire inc_d_2__dup_1175;
wire reg_q_2__dup_80_aq;
wire nx57349z3;
wire nx42327z1;
wire inc_d_3__dup_1177;
wire reg_q_3__dup_79_aq;
wire nx38783z1;
wire inc_d_4__dup_1179;
wire reg_q_4__dup_78_aq;
wire nx6878z1;
wire inc_d_5__dup_1181;
wire reg_q_5__dup_77_aq;
wire nx22452z1;
wire inc_d_6__dup_1183;
wire reg_q_6__dup_76_aq;
wire nx38026z1;
wire inc_d_7__dup_1185;
wire reg_q_7__dup_75_aq;
wire nx11936z1;
wire inc_d_8__dup_1187;
wire reg_q_8__dup_74_aq;
wire nx47250z1;
wire inc_d_9__dup_1189;
wire reg_q_9__dup_73_aq;
wire nx61898z1;
wire inc_d_10__dup_1191;
wire reg_q_10__dup_72_aq;
wire nx54111z1;
wire inc_d_11_;
wire reg_q_11__aq;
wire nx57349z2;
wire nx57349z5;
wire nx57349z6;
wire nx57349z4;
wire nx57349z1;
wire u_uart_reg_TopTx_aq;
wire nx8356z1;
wire u_uart_reg_TxFSM_1__aq;
wire nx61431z2;
wire nx59437z1;
wire nx59437z2;
wire u_uart_modgen_counter_TxBitCnt_reg_q_0__aq;
wire nx60434z1;
wire u_uart_modgen_counter_TxBitCnt_reg_q_1__aq;
wire nx61431z1;
wire u_uart_modgen_counter_TxBitCnt_reg_q_2__aq;
wire nx62428z2;
wire nx62428z1;
wire u_uart_modgen_counter_TxBitCnt_reg_q_3__aq;
wire nx7359z2;
wire nx26352z5;
wire nx26352z6;
wire nx26352z4;
wire nx26352z3;
wire nx26352z2;
wire nx26352z1;
wire u_kirsch_reg_v_1__afeeder_combout;
wire u_kirsch_reg_v_1__aq;
wire u_kirsch_reg_v_2__aq;
wire u_kirsch_reg_v_3__aq;
wire u_kirsch_reg_v_4__aq;
wire u_kirsch_reg_v_5__aq;
wire u_kirsch_reg_v_6__aq;
wire u_kirsch_reg_v_7__aq;
wire u_kirsch_reg_o_valid_afeeder_combout;
wire u_kirsch_reg_o_valid_aq;
wire nx11963z1;
wire nx64502z2;
wire nx64502z1;
wire reg_wait_for_tx_valid_aq;
wire reg_wait_for_tx_valid_delayed_aq;
wire nx40197z1;
wire reg_q_0__dup_49_a_wirecell_combout;
wire nx24582z1;
wire incdec_mux_4_dup_117_dup_1041;
wire reg_q_4__dup_45_aq;
wire nx20415z3;
wire nx40156z1;
wire incdec_mux_5_dup_118_dup_1043;
wire reg_q_5__dup_44_aq;
wire nx55730z1;
wire incdec_mux_6_dup_119_dup_1045;
wire reg_q_6__dup_43_aq;
wire nx59768z1;
wire incdec_mux_7_dup_120_dup_1047;
wire reg_q_7__dup_42_aq;
wire nx51981z1;
wire incdec_mux_8_dup_121_dup_1049;
wire reg_q_8__dup_41_aq;
wire nx20415z4;
wire nx20415z2;
wire nx20415z1;
wire reg_q_0__dup_49_aq;
wire nx40197z2;
wire incdec_mux_1_dup_114_dup_1035;
wire reg_q_1__dup_48_aq;
wire nx24623z1;
wire incdec_mux_2_dup_115_dup_1037;
wire reg_q_2__dup_47_aq;
wire nx56487z1;
wire incdec_mux_3_dup_116_dup_1039;
wire reg_q_3__dup_46_aq;
wire nx15004z4;
wire nx15004z3;
wire nx15004z2;
wire nx13251z1;
wire u_uart_reg_TxBusy_aq;
wire reg_tx_busy_delayed_afeeder_combout;
wire reg_tx_busy_delayed_aq;
wire nx15004z1;
wire reg_rb_rd_en_aq;
wire rb_rd_en_true;
wire reg_rb_rd_en_delayed_aq;
wire reg_rb_rd_en_delayed_a_wirecell_combout;
wire reg_tx_valid_aq;
wire nx7359z3;
wire nx7359z1;
wire u_uart_reg_TxFSM_0__aq;
wire nx17862z4;
wire b_1_;
wire nx48848z2;
wire nx46854z1;
wire u_kirsch_reg_wr_en_2__aq;
wire nx48848z1;
wire u_kirsch_reg_wr_en_0__aq;
wire nx47851z1;
wire u_kirsch_reg_wr_en_1__aq;
wire u_uart_reg_Rx_Reg_7__a0_combout;
wire nx44871z1;
wire u_uart_reg_Rx_Reg_7__aq;
wire u_uart_reg_Rx_Reg_6__afeeder_combout;
wire u_uart_reg_Rx_Reg_6__aq;
wire u_uart_reg_Rx_Reg_5__afeeder_combout;
wire u_uart_reg_Rx_Reg_5__aq;
wire u_uart_reg_Rx_Reg_4__afeeder_combout;
wire u_uart_reg_Rx_Reg_4__aq;
wire u_uart_reg_Rx_Reg_3__aq;
wire u_uart_reg_Rx_Reg_2__aq;
wire u_uart_reg_Rx_Reg_1__aq;
wire u_uart_reg_Rx_Reg_0__aq;
wire u_uart_reg_Dout_0__afeeder_combout;
wire u_uart_reg_Dout_0__aq;
wire inc_d_0__dup_894;
wire nx58143z1;
wire reg_q_0__dup_15_aq;
wire inc_d_0__dup_858;
wire nx58151z1;
wire reg_q_0__dup_7_aq;
wire nx48733z1;
wire inc_d_1__dup_896;
wire reg_q_1__dup_14_aq;
wire nx17767z1;
wire inc_d_1__dup_860;
wire reg_q_1__dup_6_aq;
wire nx33159z1;
wire inc_d_2__dup_898;
wire reg_q_2__dup_13_aq;
wire nx33341z1;
wire inc_d_2__dup_862;
wire reg_q_2__dup_5_aq;
wire nx48915z1;
wire inc_d_3__dup_864;
wire reg_q_3__dup_4_aq;
wire nx472z1;
wire inc_d_3__dup_900;
wire reg_q_3__dup_12_aq;
wire nx16046z1;
wire inc_d_4__dup_902;
wire reg_q_4__dup_11_aq;
wire nx64489z1;
wire inc_d_4__dup_866;
wire reg_q_4__dup_3_aq;
wire nx31620z1;
wire inc_d_5__dup_904;
wire reg_q_5__dup_10_aq;
wire nx32952z1;
wire inc_d_5__dup_868;
wire reg_q_5__dup_2_aq;
wire nx47194z1;
wire inc_d_6__dup_906;
wire reg_q_6__dup_9_aq;
wire nx17378z1;
wire inc_d_6__dup_870;
wire reg_q_6__dup_1_aq;
wire nx9591z1;
wire inc_d_7__dup_872;
wire reg_q_7__dup_0_aq;
wire nx10555z1;
wire inc_d_7__dup_908;
wire reg_q_7__dup_8_aq;
wire u_uart_reg_Dout_1__afeeder_combout;
wire u_uart_reg_Dout_1__aq;
wire u_uart_reg_Dout_2__aq;
wire u_uart_reg_Dout_3__aq;
wire u_uart_reg_Dout_4__aq;
wire u_uart_reg_Dout_5__afeeder_combout;
wire u_uart_reg_Dout_5__aq;
wire u_uart_reg_Dout_6__afeeder_combout;
wire u_uart_reg_Dout_6__aq;
wire u_uart_reg_Dout_7__afeeder_combout;
wire u_uart_reg_Dout_7__aq;
wire write_fifo_reg_q_saved_0__aq;
wire write_fifo_reg_q_saved_1__aq;
wire write_fifo_reg_q_saved_2__aq;
wire write_fifo_reg_q_saved_3__aq;
wire write_fifo_reg_q_saved_4__aq;
wire write_fifo_reg_q_saved_5__aq;
wire write_fifo_reg_q_saved_6__aq;
wire write_fifo_reg_q_saved_7__aq;
wire nx14288z1;
wire u_kirsch_reg_r_c_7__afeeder_combout;
wire u_kirsch_reg_r_c_7__aq;
wire nx25991z1;
wire u_kirsch_reg_r_b_7__aq;
wire nx2550z1;
wire u_kirsch_reg_r_a_7__aq;
wire b_0_;
wire nx22707z1;
wire u_kirsch_reg_r_d_7__afeeder_combout;
wire u_kirsch_reg_r_d_7__aq;
wire u_kirsch_reg_r_e_7__aq;
wire u_kirsch_reg_r_f_7__aq;
wire nx39360z1;
wire u_kirsch_reg_r_g_7__aq;
wire nx39360z2;
wire u_kirsch_reg_r_i_7__aq;
wire u_kirsch_reg_r_h_7__aq;
wire nx23704z1;
wire u_kirsch_reg_r_d_6__afeeder_combout;
wire u_kirsch_reg_r_d_6__aq;
wire u_kirsch_reg_r_i_6__aq;
wire u_kirsch_reg_r_h_6__aq;
wire nx15285z1;
wire u_kirsch_reg_r_c_6__afeeder_combout;
wire u_kirsch_reg_r_c_6__aq;
wire u_kirsch_reg_r_e_6__aq;
wire u_kirsch_reg_r_f_6__aq;
wire u_kirsch_reg_r_g_6__aq;
wire nx42507z2;
wire u_kirsch_reg_r_b_6__aq;
wire u_kirsch_reg_r_a_6__aq;
wire nx42507z1;
wire nx16282z1;
wire u_kirsch_reg_r_c_5__afeeder_combout;
wire u_kirsch_reg_r_c_5__aq;
wire u_kirsch_reg_r_e_5__aq;
wire u_kirsch_reg_r_f_5__afeeder_combout;
wire u_kirsch_reg_r_f_5__aq;
wire u_kirsch_reg_r_g_5__aq;
wire nx11359z2;
wire nx24701z1;
wire u_kirsch_reg_r_d_5__afeeder_combout;
wire u_kirsch_reg_r_d_5__aq;
wire u_kirsch_reg_r_i_5__aq;
wire u_kirsch_reg_r_h_5__aq;
wire u_kirsch_reg_r_b_5__aq;
wire u_kirsch_reg_r_a_5__aq;
wire nx11359z1;
wire nx25698z1;
wire u_kirsch_reg_r_d_4__afeeder_combout;
wire u_kirsch_reg_r_d_4__aq;
wire u_kirsch_reg_r_e_4__aq;
wire u_kirsch_reg_r_f_4__aq;
wire nx19789z1;
wire nx17279z1;
wire u_kirsch_reg_r_c_4__afeeder_combout;
wire u_kirsch_reg_r_c_4__aq;
wire u_kirsch_reg_r_b_4__aq;
wire u_kirsch_reg_r_a_4__aq;
wire u_kirsch_reg_r_i_4__aq;
wire u_kirsch_reg_r_h_4__aq;
wire u_kirsch_reg_r_g_4__aq;
wire nx19789z2;
wire nx18276z1;
wire u_kirsch_reg_r_c_3__afeeder_combout;
wire u_kirsch_reg_r_c_3__aq;
wire u_kirsch_reg_r_e_3__aq;
wire u_kirsch_reg_r_f_3__aq;
wire u_kirsch_reg_r_g_3__aq;
wire nx3458z2;
wire nx26695z1;
wire u_kirsch_reg_r_d_3__afeeder_combout;
wire u_kirsch_reg_r_d_3__aq;
wire u_kirsch_reg_r_i_3__aq;
wire u_kirsch_reg_r_h_3__aq;
wire u_kirsch_reg_r_b_3__aq;
wire u_kirsch_reg_r_a_3__aq;
wire nx3458z1;
wire nx27692z1;
wire u_kirsch_reg_r_d_2__afeeder_combout;
wire u_kirsch_reg_r_d_2__aq;
wire u_kirsch_reg_r_i_2__aq;
wire u_kirsch_reg_r_h_2__aq;
wire u_kirsch_reg_r_e_2__afeeder_combout;
wire u_kirsch_reg_r_e_2__aq;
wire u_kirsch_reg_r_f_2__aq;
wire u_kirsch_reg_r_g_2__aq;
wire nx30930z2;
wire nx19273z1;
wire u_kirsch_reg_r_c_2__afeeder_combout;
wire u_kirsch_reg_r_c_2__aq;
wire u_kirsch_reg_r_b_2__aq;
wire u_kirsch_reg_r_a_2__aq;
wire nx30930z1;
wire nx28689z1;
wire u_kirsch_reg_r_d_1__afeeder_combout;
wire u_kirsch_reg_r_d_1__aq;
wire u_kirsch_reg_r_i_1__aq;
wire u_kirsch_reg_r_h_1__aq;
wire nx20270z1;
wire u_kirsch_reg_r_c_1__afeeder_combout;
wire u_kirsch_reg_r_c_1__aq;
wire u_kirsch_reg_r_e_1__aq;
wire u_kirsch_reg_r_f_1__aq;
wire u_kirsch_reg_r_g_1__aq;
wire nx18275z2;
wire u_kirsch_reg_r_b_1__aq;
wire u_kirsch_reg_r_a_1__aq;
wire nx18275z1;
wire nx21267z1;
wire u_kirsch_reg_r_c_0__afeeder_combout;
wire u_kirsch_reg_r_c_0__aq;
wire nx29686z1;
wire u_kirsch_reg_r_d_0__afeeder_combout;
wire u_kirsch_reg_r_d_0__aq;
wire u_kirsch_reg_r_i_0__aq;
wire u_kirsch_reg_r_h_0__aq;
wire u_kirsch_reg_r_e_0__aq;
wire u_kirsch_reg_r_f_0__aq;
wire u_kirsch_reg_r_g_0__aq;
wire nx49423z2;
wire u_kirsch_reg_r_b_0__aq;
wire u_kirsch_reg_r_a_0__aq;
wire nx49423z1;
wire nx18275z3;
wire nx30930z3;
wire nx3458z3;
wire nx19789z3;
wire nx11359z3;
wire nx42507z3;
wire nx39360z3;
wire nx63652z1;
wire u_kirsch_reg_r2_8__aq;
wire nx46527z2;
wire nx46527z3;
wire nx46527z1;
wire nx46527z4;
wire nx46527z5;
wire nx10989z4;
wire nx10989z3;
wire nx10989z1;
wire nx10989z2;
wire nx26563z1;
wire nx26563z2;
wire nx26563z4;
wire nx26563z3;
wire nx60194z4;
wire nx60194z3;
wire nx60194z1;
wire nx60194z2;
wire nx55304z3;
wire nx55304z4;
wire nx55304z1;
wire nx55304z2;
wire nx39730z1;
wire nx39730z2;
wire nx39730z4;
wire nx39730z3;
wire nx24156z2;
wire nx24156z1;
wire nx24156z3;
wire nx24156z4;
wire nx56954z1;
wire nx56954z2;
wire nx56954z4;
wire nx56954z3;
wire nx24156z5;
wire nx39730z5;
wire nx55304z5;
wire nx60194z5;
wire nx26563z5;
wire nx10989z5;
wire nx4585z1;
wire nx15243z1;
wire nx46527z6;
wire u_kirsch_reg_r1_val_7__aq;
wire u_kirsch_reg_r2_7__aq;
wire u_kirsch_reg_r1_val_6__aq;
wire u_kirsch_reg_r2_6__aq;
wire u_kirsch_reg_r1_val_5__aq;
wire u_kirsch_reg_r2_5__aq;
wire u_kirsch_reg_r1_val_4__aq;
wire u_kirsch_reg_r2_4__aq;
wire u_kirsch_reg_r2_3__aq;
wire u_kirsch_reg_r1_val_3__aq;
wire u_kirsch_reg_r1_val_2__aq;
wire u_kirsch_reg_r2_2__aq;
wire u_kirsch_reg_r2_1__aq;
wire u_kirsch_reg_r1_val_1__aq;
wire u_kirsch_reg_r1_val_0__aq;
wire u_kirsch_reg_r2_0__aq;
wire nx33205z1;
wire nx2057z1;
wire nx29091z1;
wire nx52776z1;
wire nx21628z1;
wire nx27577z1;
wire nx58725z1;
wire nx41199z1;
wire nx7965z1;
wire u_kirsch_reg_r4_val_9__aq;
wire u_kirsch_reg_r4_val_8__aq;
wire u_kirsch_reg_r5_val_8__aq;
wire u_kirsch_reg_r4_val_7__aq;
wire u_kirsch_reg_r5_val_7__aq;
wire u_kirsch_reg_r4_val_6__aq;
wire u_kirsch_reg_r5_val_6__aq;
wire u_kirsch_reg_r4_val_5__aq;
wire u_kirsch_reg_r5_val_5__aq;
wire u_kirsch_reg_r4_val_4__aq;
wire u_kirsch_reg_r5_val_4__aq;
wire u_kirsch_reg_r4_val_3__aq;
wire u_kirsch_reg_r5_val_3__aq;
wire u_kirsch_reg_r4_val_2__aq;
wire u_kirsch_reg_r5_val_2__aq;
wire u_kirsch_reg_r4_val_1__aq;
wire u_kirsch_reg_r5_val_1__aq;
wire u_kirsch_reg_r4_val_0__aq;
wire u_kirsch_reg_r5_val_0__aq;
wire nx6531z1;
wire nx56493z1;
wire nx22862z1;
wire nx58248z1;
wire nx8286z1;
wire nx23860z1;
wire nx26102z1;
wire nx58007z1;
wire nx42433z1;
wire nx39326z1;
wire nx3238z1;
wire u_kirsch_reg_r5_val_9__aq;
wire u_kirsch_reg_r3_0__aq;
wire nx15489z1;
wire u_kirsch_reg_r3_1__aq;
wire nx31820z1;
wire u_kirsch_reg_r3_2__aq;
wire nx64864z1;
wire u_kirsch_reg_r3_3__aq;
wire nx48533z1;
wire u_kirsch_reg_r3_4__aq;
wire nx51391z1;
wire u_kirsch_reg_r3_5__aq;
wire nx45293z1;
wire u_kirsch_reg_r3_6__aq;
wire nx28962z1;
wire u_kirsch_reg_r3_7__aq;
wire nx5426z1;
wire u_kirsch_reg_r3_8__aq;
wire nx43779z1;
wire nx16733z1;
wire u_kirsch_reg_r3_9__aq;
wire nx9391z1;
wire nx51853z1;
wire u_kirsch_reg_r3_10__aq;
wire nx24965z1;
wire nx50856z1;
wire u_kirsch_reg_r3_11__aq;
wire nx45160z1;
wire nx4045z1;
wire nx35193z1;
wire nx46674z1;
wire nx50010z1;
wire nx15622z1;
wire nx709z1;
wire nx30439z1;
wire nx14108z1;
wire nx20280z1;
wire nx63132z1;
wire u_kirsch_reg_r6_12__aq;
wire u_kirsch_reg_r6_11__aq;
wire u_kirsch_reg_r6_10__aq;
wire u_kirsch_reg_r6_9__aq;
wire u_kirsch_reg_r6_8__aq;
wire u_kirsch_reg_r6_7__aq;
wire u_kirsch_reg_r6_6__aq;
wire u_kirsch_reg_r6_5__aq;
wire u_kirsch_reg_r6_4__aq;
wire u_kirsch_reg_r6_3__aq;
wire u_kirsch_reg_r6_2__aq;
wire u_kirsch_reg_r6_1__aq;
wire u_kirsch_reg_r6_0__aq;
wire nx14412z1;
wire nx35550z1;
wire nx19976z1;
wire nx51881z1;
wire nx29229z1;
wire nx60377z1;
wire nx21490z1;
wire nx55878z1;
wire nx40806z1;
wire nx41061z1;
wire nx9913z1;
wire nx48627z1;
wire u_kirsch_r7_19n0r1_13_;
wire u_kirsch_reg_r7_val_13__aq;
wire u_kirsch_r7_19n0r1_11_;
wire u_kirsch_reg_r7_val_11__aq;
wire u_kirsch_r7_19n0r1_12_;
wire u_kirsch_reg_r7_val_12__aq;
wire u_kirsch_r7_19n0r1_10_;
wire u_kirsch_reg_r7_val_10__aq;
wire nx24163z2;
wire u_kirsch_r7_19n0r1_7_;
wire u_kirsch_reg_r7_val_7__aq;
wire u_kirsch_r7_19n0r1_9_;
wire u_kirsch_reg_r7_val_9__aq;
wire u_kirsch_r7_19n0r1_8_;
wire u_kirsch_reg_r7_val_8__aq;
wire nx22605z3;
wire nx32900z1;
wire u_kirsch_reg_r1_ty_0__aq;
wire u_kirsch_reg_r4_ty_0__afeeder_combout;
wire u_kirsch_reg_r4_ty_0__aq;
wire u_kirsch_reg_r5_ty_0__afeeder_combout;
wire u_kirsch_reg_r5_ty_0__aq;
wire u_kirsch_reg_r7_ty_0__aq;
wire nx23166z1;
wire u_kirsch_reg_o_dir_0__aq;
wire inc_d_0__dup_995;
wire nx24859z1;
wire reg_q_0__dup_40_aq;
wire inc_d_0__dup_959;
wire nx23864z1;
wire reg_q_0__dup_32_aq;
wire nx46785z1;
wire inc_d_1__dup_997;
wire reg_q_1__dup_39_aq;
wire nx25574z1;
wire inc_d_1__dup_961;
wire reg_q_1__dup_31_aq;
wire nx10000z1;
wire inc_d_2__dup_963;
wire reg_q_2__dup_30_aq;
wire nx50656z1;
wire inc_d_2__dup_999;
wire reg_q_2__dup_38_aq;
wire nx35082z1;
wire inc_d_3__dup_1001;
wire reg_q_3__dup_37_aq;
wire nx5574z1;
wire inc_d_3__dup_965;
wire reg_q_3__dup_29_aq;
wire nx19508z1;
wire inc_d_4__dup_1003;
wire reg_q_4__dup_36_aq;
wire nx21148z1;
wire inc_d_4__dup_967;
wire reg_q_4__dup_28_aq;
wire nx61602z1;
wire inc_d_5__dup_1005;
wire reg_q_5__dup_35_aq;
wire nx54779z1;
wire inc_d_5__dup_969;
wire reg_q_5__dup_27_aq;
wire nx11640z1;
wire inc_d_6__dup_1007;
wire reg_q_6__dup_34_aq;
wire nx60719z1;
wire inc_d_6__dup_971;
wire reg_q_6__dup_26_aq;
wire nx52932z1;
wire inc_d_7__dup_973;
wire reg_q_7__dup_25_aq;
wire nx19427z1;
wire inc_d_7__dup_1009;
wire reg_q_7__dup_33_aq;
wire u_kirsch_reg_r1_ty_1__afeeder_combout;
wire u_kirsch_reg_r1_ty_1__aq;
wire u_kirsch_reg_r4_ty_1__afeeder_combout;
wire u_kirsch_reg_r4_ty_1__aq;
wire u_kirsch_reg_r5_ty_1__afeeder_combout;
wire u_kirsch_reg_r5_ty_1__aq;
wire u_kirsch_reg_r7_ty_1__aq;
wire nx24163z1;
wire u_kirsch_reg_o_dir_1__aq;
wire u_kirsch_reg_r1_ty_2__aq;
wire u_kirsch_reg_r4_ty_2__afeeder_combout;
wire u_kirsch_reg_r4_ty_2__aq;
wire u_kirsch_reg_r5_ty_2__afeeder_combout;
wire u_kirsch_reg_r5_ty_2__aq;
wire u_kirsch_reg_r7_ty_2__afeeder_combout;
wire u_kirsch_reg_r7_ty_2__aq;
wire nx22605z2;
wire nx22605z1;
wire nx25160z1;
wire u_kirsch_reg_o_dir_2__aq;
wire u_kirsch_reg_o_edge_aq;
wire nx40325z1;
wire u_uart_reg_RxErr_aq;
wire read_fifo_reg_q_saved_0__afeeder_combout;
wire read_fifo_reg_q_saved_0__aq;
wire NOT_rb_o_data_0_;
wire read_fifo_reg_q_saved_1__afeeder_combout;
wire read_fifo_reg_q_saved_1__aq;
wire NOT_rb_o_data_1_;
wire read_fifo_reg_q_saved_2__afeeder_combout;
wire read_fifo_reg_q_saved_2__aq;
wire NOT_rb_o_data_2_;
wire read_fifo_reg_q_saved_3__afeeder_combout;
wire read_fifo_reg_q_saved_3__aq;
wire NOT_rb_o_data_3_;
wire read_fifo_reg_q_saved_4__afeeder_combout;
wire read_fifo_reg_q_saved_4__aq;
wire NOT_rb_o_data_4_;
wire read_fifo_reg_q_saved_5__afeeder_combout;
wire read_fifo_reg_q_saved_5__aq;
wire NOT_rb_o_data_5_;
wire read_fifo_reg_q_saved_6__afeeder_combout;
wire read_fifo_reg_q_saved_6__aq;
wire NOT_rb_o_data_6_;
wire read_fifo_reg_q_saved_7__afeeder_combout;
wire read_fifo_reg_q_saved_7__aq;
wire NOT_u_uart_Tx_Reg_14n6ss1_8_;
wire nx18859z1;
wire u_uart_reg_Tx_Reg_8__aq;
wire u_uart_reg_Tx_Reg_7__aq;
wire u_uart_reg_Tx_Reg_6__aq;
wire u_uart_reg_Tx_Reg_5__aq;
wire u_uart_reg_Tx_Reg_4__aq;
wire u_uart_reg_Tx_Reg_3__aq;
wire u_uart_reg_Tx_Reg_2__aq;
wire u_uart_reg_Tx_Reg_1__aq;
wire nx17862z2;
wire nx17862z1;
wire u_uart_reg_Tx_Reg_0__aq;
wire nx3377z1;
wire nx3377z2;
wire u_seg7_u_dual_seg7_muxed_char_0_;
wire u_seg7_u_dual_seg7_reg_o_char_0__aq;
wire nx5371z1;
wire nx5371z2;
wire u_seg7_u_dual_seg7_muxed_char_2_;
wire u_seg7_u_dual_seg7_reg_o_char_2__aq;
wire nx6368z1;
wire nx6368z2;
wire u_seg7_u_dual_seg7_muxed_char_3_;
wire u_seg7_u_dual_seg7_reg_o_char_3__aq;
wire nx7365z1;
wire nx7365z2;
wire u_seg7_u_dual_seg7_muxed_char_4_;
wire u_seg7_u_dual_seg7_reg_o_char_4__aq;
wire u_seg7_u_dual_seg7_muxed_char_7_;
wire u_seg7_u_dual_seg7_reg_o_char_7__aq;
wire [7:0] u_kirsch_r_i_11n3ss1;
wire [7:0] u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a;
wire [7:0] u_kirsch_i2_val;
wire [8:0] u_kirsch_r3_15n1s1;
wire [7:0] write_fifo_pointer;
wire [7:0] read_fifo_pointer;
wire [7:0] rb_i_data;
wire [9:0] u_kirsch_r4_16n0r1;
wire [7:0] k_i_pixel;
wire [7:0] write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a;
wire [7:0] u_kirsch_i1_val;
wire [12:1] u_kirsch_r6_18n0r1;
wire [7:0] read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a;
wire [8:0] u_kirsch_r2_14n0r1;
wire [7:0] u_kirsch_i3;
wire [7:0] u_kirsch_i4;
wire [7:0] u_kirsch_r_g_11n3ss1;
wire [7:0] u_kirsch_M_a;
wire [7:0] u_kirsch_r_a_11n3ss1;
wire [7:0] u_kirsch_M_b;
wire [7:0] u_kirsch_r_h_11n3ss1;
wire [7:0] u_kirsch_r_f_11n3ss1;
wire [7:0] u_kirsch_r_b_11n3ss1;
wire [7:0] u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a;

wire [17:0] read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[0] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[1] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[2] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[3] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[4] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[5] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[6] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[7] = u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[0] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[1] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[2] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[3] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[4] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[5] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[6] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[7] = u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7] = u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// Location: LCCOMB_X11_Y23_N24
fiftyfivenm_lcell_comb a_aQUARTUS_CREATED_GND_aI(
// Equation(s):
// a_aQUARTUS_CREATED_GND_aI_combout = GND

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(a_aQUARTUS_CREATED_GND_aI_combout),
	.cout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_GND_aI.lut_mask = 16'h0000;
defparam a_aQUARTUS_CREATED_GND_aI.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOOBUF_X3_Y10_N23
fiftyfivenm_io_obuf seg7_data_a1_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a1_a_aoutput.bus_hold = "false";
defparam seg7_data_a1_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X6_Y10_N30
fiftyfivenm_io_obuf seg7_data_a5_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a5_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a5_a_aoutput.bus_hold = "false";
defparam seg7_data_a5_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X3_Y10_N16
fiftyfivenm_io_obuf seg7_data_a6_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a6_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a6_a_aoutput.bus_hold = "false";
defparam seg7_data_a6_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X0_Y7_N23
fiftyfivenm_io_obuf led_a0_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a0_a_aoutput.bus_hold = "false";
defparam led_a0_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X0_Y6_N16
fiftyfivenm_io_obuf led_a1_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a1_a_aoutput.bus_hold = "false";
defparam led_a1_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y17_N2
fiftyfivenm_io_obuf led_a2_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a2_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a2_a_aoutput.bus_hold = "false";
defparam led_a2_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y20_N23
fiftyfivenm_io_obuf led_a3_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a3_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a3_a_aoutput.bus_hold = "false";
defparam led_a3_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y21_N23
fiftyfivenm_io_obuf led_a4_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a4_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a4_a_aoutput.bus_hold = "false";
defparam led_a4_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y22_N23
fiftyfivenm_io_obuf led_a5_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a5_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a5_a_aoutput.bus_hold = "false";
defparam led_a5_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X3_Y0_N16
fiftyfivenm_io_obuf led_a6_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a6_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a6_a_aoutput.bus_hold = "false";
defparam led_a6_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X6_Y0_N23
fiftyfivenm_io_obuf led_a7_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a7_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a7_a_aoutput.bus_hold = "false";
defparam led_a7_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X11_Y25_N16
fiftyfivenm_io_obuf uart_tx_aoutput(
	.i(!u_uart_reg_Tx_Reg_0__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(uart_tx_aoutput_o),
	.obar());
// synopsys translate_off
defparam uart_tx_aoutput.bus_hold = "false";
defparam uart_tx_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X15_Y25_N16
fiftyfivenm_io_obuf seg7_en_a0_a_aoutput(
	.i(!reg_q_10__dup_50_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_en_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_en_a0_a_aoutput.bus_hold = "false";
defparam seg7_en_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y25_N9
fiftyfivenm_io_obuf seg7_en_a1_a_aoutput(
	.i(reg_q_10__dup_50_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_en_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_en_a1_a_aoutput.bus_hold = "false";
defparam seg7_en_a1_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y25_N30
fiftyfivenm_io_obuf seg7_data_a0_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_0__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a0_a_aoutput.bus_hold = "false";
defparam seg7_data_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y10_N9
fiftyfivenm_io_obuf seg7_data_a2_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_2__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a2_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a2_a_aoutput.bus_hold = "false";
defparam seg7_data_a2_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X31_Y22_N23
fiftyfivenm_io_obuf seg7_data_a3_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_3__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a3_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a3_a_aoutput.bus_hold = "false";
defparam seg7_data_a3_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X15_Y25_N23
fiftyfivenm_io_obuf seg7_data_a4_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_4__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a4_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a4_a_aoutput.bus_hold = "false";
defparam seg7_data_a4_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y25_N2
fiftyfivenm_io_obuf seg7_data_a7_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_7__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a7_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a7_a_aoutput.bus_hold = "false";
defparam seg7_data_a7_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X0_Y6_N22
fiftyfivenm_io_ibuf clk_ainput(
	.i(clk),
	.ibar(gnd),
	.nsleep(vcc),
	.o(clk_ainput_o));
// synopsys translate_off
defparam clk_ainput.bus_hold = "false";
defparam clk_ainput.listen_to_nsleep_signal = "false";
defparam clk_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G4
fiftyfivenm_clkctrl clk_ainputclkctrl(
	.ena(vcc),
	.inclk({vcc,vcc,vcc,clk_ainput_o}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(clk_ainputclkctrl_outclk));
// synopsys translate_off
defparam clk_ainputclkctrl.clock_type = "global clock";
defparam clk_ainputclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N6
fiftyfivenm_lcell_comb ix1051_fadd(
// Equation(s):
// inc_d_0__dup_1070 = reg_q_0__dup_60_aq $ (VCC)
// nx57492z2 = CARRY(reg_q_0__dup_60_aq)

	.dataa(reg_q_0__dup_60_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1070),
	.cout(nx57492z2));
// synopsys translate_off
defparam ix1051_fadd.lut_mask = 16'h55AA;
defparam ix1051_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y2_N15
fiftyfivenm_io_ibuf reset_n_ainput(
	.i(reset_n),
	.ibar(gnd),
	.nsleep(vcc),
	.o(reset_n_ainput_o));
// synopsys translate_off
defparam reset_n_ainput.bus_hold = "false";
defparam reset_n_ainput.listen_to_nsleep_signal = "false";
defparam reset_n_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N2
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_prev_reset_a0(
// Equation(s):
// u_seg7_u_dual_seg7_reg_prev_reset_a0_combout = !reset_n_ainput_o

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_prev_reset_a0_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_reset_a0.lut_mask = 16'h00FF;
defparam u_seg7_u_dual_seg7_reg_prev_reset_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y16_N3
dffeas u_seg7_u_dual_seg7_reg_prev_reset(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_prev_reset_a0_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_prev_reset_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_reset.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_prev_reset.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N0
fiftyfivenm_lcell_comb ix29573z7095(
// Equation(s):
// nx29573z1 = (!reset_n_ainput_o & !u_seg7_u_dual_seg7_reg_prev_reset_aq)

	.dataa(reset_n_ainput_o),
	.datab(gnd),
	.datac(gnd),
	.datad(u_seg7_u_dual_seg7_reg_prev_reset_aq),
	.cin(gnd),
	.combout(nx29573z1),
	.cout());
// synopsys translate_off
defparam ix29573z7095.lut_mask = 16'h0055;
defparam ix29573z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y16_N7
dffeas reg_q_0__dup_60(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_1070),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_60_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_60.is_wysiwyg = "true";
defparam reg_q_0__dup_60.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N8
fiftyfivenm_lcell_comb ix1053_fadd(
// Equation(s):
// inc_d_1__dup_1071 = (reg_q_1__dup_59_aq & (!nx57492z2)) # (!reg_q_1__dup_59_aq & ((nx57492z2) # (GND)))
// nx41918z2 = CARRY((!nx57492z2) # (!reg_q_1__dup_59_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_59_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx57492z2),
	.combout(inc_d_1__dup_1071),
	.cout(nx41918z2));
// synopsys translate_off
defparam ix1053_fadd.lut_mask = 16'h3C3F;
defparam ix1053_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N9
dffeas reg_q_1__dup_59(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_1071),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_59_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_59.is_wysiwyg = "true";
defparam reg_q_1__dup_59.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N10
fiftyfivenm_lcell_comb ix1055_fadd(
// Equation(s):
// inc_d_2__dup_1072 = (reg_q_2__dup_58_aq & (nx41918z2 $ (GND))) # (!reg_q_2__dup_58_aq & (!nx41918z2 & VCC))
// nx39192z2 = CARRY((reg_q_2__dup_58_aq & !nx41918z2))

	.dataa(reg_q_2__dup_58_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx41918z2),
	.combout(inc_d_2__dup_1072),
	.cout(nx39192z2));
// synopsys translate_off
defparam ix1055_fadd.lut_mask = 16'hA50A;
defparam ix1055_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N11
dffeas reg_q_2__dup_58(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1072),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_58_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_58.is_wysiwyg = "true";
defparam reg_q_2__dup_58.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N12
fiftyfivenm_lcell_comb ix1057_fadd(
// Equation(s):
// inc_d_3__dup_1073 = (reg_q_3__dup_57_aq & (!nx39192z2)) # (!reg_q_3__dup_57_aq & ((nx39192z2) # (GND)))
// nx54766z2 = CARRY((!nx39192z2) # (!reg_q_3__dup_57_aq))

	.dataa(reg_q_3__dup_57_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39192z2),
	.combout(inc_d_3__dup_1073),
	.cout(nx54766z2));
// synopsys translate_off
defparam ix1057_fadd.lut_mask = 16'h5A5F;
defparam ix1057_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N13
dffeas reg_q_3__dup_57(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1073),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_57_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_57.is_wysiwyg = "true";
defparam reg_q_3__dup_57.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N14
fiftyfivenm_lcell_comb ix1059_fadd(
// Equation(s):
// inc_d_4__dup_1074 = (reg_q_4__dup_56_aq & (nx54766z2 $ (GND))) # (!reg_q_4__dup_56_aq & (!nx54766z2 & VCC))
// nx22861z2 = CARRY((reg_q_4__dup_56_aq & !nx54766z2))

	.dataa(gnd),
	.datab(reg_q_4__dup_56_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx54766z2),
	.combout(inc_d_4__dup_1074),
	.cout(nx22861z2));
// synopsys translate_off
defparam ix1059_fadd.lut_mask = 16'hC30C;
defparam ix1059_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N15
dffeas reg_q_4__dup_56(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1074),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_56_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_56.is_wysiwyg = "true";
defparam reg_q_4__dup_56.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N16
fiftyfivenm_lcell_comb ix1061_fadd(
// Equation(s):
// inc_d_5__dup_1075 = (reg_q_5__dup_55_aq & (!nx22861z2)) # (!reg_q_5__dup_55_aq & ((nx22861z2) # (GND)))
// nx38435z2 = CARRY((!nx22861z2) # (!reg_q_5__dup_55_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_55_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx22861z2),
	.combout(inc_d_5__dup_1075),
	.cout(nx38435z2));
// synopsys translate_off
defparam ix1061_fadd.lut_mask = 16'h3C3F;
defparam ix1061_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N17
dffeas reg_q_5__dup_55(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1075),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_55_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_55.is_wysiwyg = "true";
defparam reg_q_5__dup_55.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N18
fiftyfivenm_lcell_comb ix1063_fadd(
// Equation(s):
// inc_d_6__dup_1076 = (reg_q_6__dup_54_aq & (nx38435z2 $ (GND))) # (!reg_q_6__dup_54_aq & (!nx38435z2 & VCC))
// nx11527z2 = CARRY((reg_q_6__dup_54_aq & !nx38435z2))

	.dataa(gnd),
	.datab(reg_q_6__dup_54_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx38435z2),
	.combout(inc_d_6__dup_1076),
	.cout(nx11527z2));
// synopsys translate_off
defparam ix1063_fadd.lut_mask = 16'hC30C;
defparam ix1063_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N19
dffeas reg_q_6__dup_54(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1076),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_54_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_54.is_wysiwyg = "true";
defparam reg_q_6__dup_54.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N20
fiftyfivenm_lcell_comb ix1065_fadd(
// Equation(s):
// inc_d_7__dup_1077 = (reg_q_7__dup_53_aq & (!nx11527z2)) # (!reg_q_7__dup_53_aq & ((nx11527z2) # (GND)))
// nx55707z2 = CARRY((!nx11527z2) # (!reg_q_7__dup_53_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_53_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx11527z2),
	.combout(inc_d_7__dup_1077),
	.cout(nx55707z2));
// synopsys translate_off
defparam ix1065_fadd.lut_mask = 16'h3C3F;
defparam ix1065_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N21
dffeas reg_q_7__dup_53(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1077),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_53_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_53.is_wysiwyg = "true";
defparam reg_q_7__dup_53.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N22
fiftyfivenm_lcell_comb ix55_fadd(
// Equation(s):
// inc_d_8__dup_1078 = (reg_q_8__dup_52_aq & (nx55707z2 $ (GND))) # (!reg_q_8__dup_52_aq & (!nx55707z2 & VCC))
// nx44217z2 = CARRY((reg_q_8__dup_52_aq & !nx55707z2))

	.dataa(reg_q_8__dup_52_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55707z2),
	.combout(inc_d_8__dup_1078),
	.cout(nx44217z2));
// synopsys translate_off
defparam ix55_fadd.lut_mask = 16'hA50A;
defparam ix55_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N23
dffeas reg_q_8__dup_52(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_1078),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_52_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_52.is_wysiwyg = "true";
defparam reg_q_8__dup_52.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N24
fiftyfivenm_lcell_comb ix59_fadd(
// Equation(s):
// inc_d_9__dup_1079 = (reg_q_9__dup_51_aq & (!nx44217z2)) # (!reg_q_9__dup_51_aq & ((nx44217z2) # (GND)))
// nx10586z1 = CARRY((!nx44217z2) # (!reg_q_9__dup_51_aq))

	.dataa(gnd),
	.datab(reg_q_9__dup_51_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx44217z2),
	.combout(inc_d_9__dup_1079),
	.cout(nx10586z1));
// synopsys translate_off
defparam ix59_fadd.lut_mask = 16'h3C3F;
defparam ix59_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N25
dffeas reg_q_9__dup_51(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_1079),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_51_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_51.is_wysiwyg = "true";
defparam reg_q_9__dup_51.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y16_N26
fiftyfivenm_lcell_comb ix61_fadd(
// Equation(s):
// inc_d_10__dup_1080 = reg_q_10__dup_50_aq $ (!nx10586z1)

	.dataa(reg_q_10__dup_50_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx10586z1),
	.combout(inc_d_10__dup_1080),
	.cout());
// synopsys translate_off
defparam ix61_fadd.lut_mask = 16'hA5A5;
defparam ix61_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X16_Y16_N27
dffeas reg_q_10__dup_50(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_1080),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_50_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_50.is_wysiwyg = "true";
defparam reg_q_10__dup_50.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N4
fiftyfivenm_lcell_comb ix1260_fadd(
// Equation(s):
// inc_d_0__dup_1281 = reg_q_0__dup_98_aq $ (VCC)
// nx56034z1 = CARRY(reg_q_0__dup_98_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_98_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1281),
	.cout(nx56034z1));
// synopsys translate_off
defparam ix1260_fadd.lut_mask = 16'h33CC;
defparam ix1260_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X9_Y0_N1
fiftyfivenm_io_ibuf pb_a0_a_ainput(
	.i(pb[0]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a0_a_ainput_o));
// synopsys translate_off
defparam pb_a0_a_ainput.bus_hold = "false";
defparam pb_a0_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a0_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N4
fiftyfivenm_lcell_comb ix1086_fadd(
// Equation(s):
// inc_d_0__dup_1118 = reg_q_0__dup_71_aq $ (VCC)
// nx7080z1 = CARRY(reg_q_0__dup_71_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_71_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1118),
	.cout(nx7080z1));
// synopsys translate_off
defparam ix1086_fadd.lut_mask = 16'h33CC;
defparam ix1086_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N0
fiftyfivenm_lcell_comb ix2_fadd(
// Equation(s):
// inc_d_0_ = reg_q_0__aq $ (VCC)
// nx27063z1 = CARRY(reg_q_0__aq)

	.dataa(gnd),
	.datab(reg_q_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0_),
	.cout(nx27063z1));
// synopsys translate_off
defparam ix2_fadd.lut_mask = 16'h33CC;
defparam ix2_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y14_N1
dffeas reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0_.is_wysiwyg = "true";
defparam reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N2
fiftyfivenm_lcell_comb ix6_fadd(
// Equation(s):
// inc_d_1_ = (reg_q_1__aq & (!nx27063z1)) # (!reg_q_1__aq & ((nx27063z1) # (GND)))
// nx39256z1 = CARRY((!nx27063z1) # (!reg_q_1__aq))

	.dataa(gnd),
	.datab(reg_q_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27063z1),
	.combout(inc_d_1_),
	.cout(nx39256z1));
// synopsys translate_off
defparam ix6_fadd.lut_mask = 16'h3C3F;
defparam ix6_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N3
dffeas reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1_.is_wysiwyg = "true";
defparam reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N4
fiftyfivenm_lcell_comb ix10_fadd(
// Equation(s):
// inc_d_2_ = (reg_q_2__aq & (nx39256z1 $ (GND))) # (!reg_q_2__aq & (!nx39256z1 & VCC))
// nx57428z1 = CARRY((reg_q_2__aq & !nx39256z1))

	.dataa(gnd),
	.datab(reg_q_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39256z1),
	.combout(inc_d_2_),
	.cout(nx57428z1));
// synopsys translate_off
defparam ix10_fadd.lut_mask = 16'hC30C;
defparam ix10_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N5
dffeas reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2_.is_wysiwyg = "true";
defparam reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N6
fiftyfivenm_lcell_comb ix14_fadd(
// Equation(s):
// inc_d_3_ = (reg_q_3__aq & (!nx57428z1)) # (!reg_q_3__aq & ((nx57428z1) # (GND)))
// nx23040z1 = CARRY((!nx57428z1) # (!reg_q_3__aq))

	.dataa(reg_q_3__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx57428z1),
	.combout(inc_d_3_),
	.cout(nx23040z1));
// synopsys translate_off
defparam ix14_fadd.lut_mask = 16'h5A5F;
defparam ix14_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N7
dffeas reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3_.is_wysiwyg = "true";
defparam reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N8
fiftyfivenm_lcell_comb ix18_fadd(
// Equation(s):
// inc_d_4_ = (reg_q_4__aq & (nx23040z1 $ (GND))) # (!reg_q_4__aq & (!nx23040z1 & VCC))
// nx58827z1 = CARRY((reg_q_4__aq & !nx23040z1))

	.dataa(gnd),
	.datab(reg_q_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23040z1),
	.combout(inc_d_4_),
	.cout(nx58827z1));
// synopsys translate_off
defparam ix18_fadd.lut_mask = 16'hC30C;
defparam ix18_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N9
dffeas reg_q_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4_.is_wysiwyg = "true";
defparam reg_q_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N10
fiftyfivenm_lcell_comb ix22_fadd(
// Equation(s):
// inc_d_5_ = (reg_q_5__aq & (!nx58827z1)) # (!reg_q_5__aq & ((nx58827z1) # (GND)))
// nx37857z1 = CARRY((!nx58827z1) # (!reg_q_5__aq))

	.dataa(reg_q_5__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58827z1),
	.combout(inc_d_5_),
	.cout(nx37857z1));
// synopsys translate_off
defparam ix22_fadd.lut_mask = 16'h5A5F;
defparam ix22_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N11
dffeas reg_q_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5_.is_wysiwyg = "true";
defparam reg_q_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N12
fiftyfivenm_lcell_comb ix26_fadd(
// Equation(s):
// inc_d_6_ = (reg_q_6__aq & (nx37857z1 $ (GND))) # (!reg_q_6__aq & (!nx37857z1 & VCC))
// nx2950z1 = CARRY((reg_q_6__aq & !nx37857z1))

	.dataa(reg_q_6__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37857z1),
	.combout(inc_d_6_),
	.cout(nx2950z1));
// synopsys translate_off
defparam ix26_fadd.lut_mask = 16'hA50A;
defparam ix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N13
dffeas reg_q_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6_.is_wysiwyg = "true";
defparam reg_q_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N14
fiftyfivenm_lcell_comb ix834_fadd(
// Equation(s):
// inc_d_7_ = (reg_q_7__aq & (!nx2950z1)) # (!reg_q_7__aq & ((nx2950z1) # (GND)))
// nx47012z1 = CARRY((!nx2950z1) # (!reg_q_7__aq))

	.dataa(gnd),
	.datab(reg_q_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx2950z1),
	.combout(inc_d_7_),
	.cout(nx47012z1));
// synopsys translate_off
defparam ix834_fadd.lut_mask = 16'h3C3F;
defparam ix834_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N15
dffeas reg_q_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7_.is_wysiwyg = "true";
defparam reg_q_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N16
fiftyfivenm_lcell_comb ix836_fadd(
// Equation(s):
// inc_d_8_ = (reg_q_8__aq & (nx47012z1 $ (GND))) # (!reg_q_8__aq & (!nx47012z1 & VCC))
// nx9072z1 = CARRY((reg_q_8__aq & !nx47012z1))

	.dataa(gnd),
	.datab(reg_q_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47012z1),
	.combout(inc_d_8_),
	.cout(nx9072z1));
// synopsys translate_off
defparam ix836_fadd.lut_mask = 16'hC30C;
defparam ix836_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N17
dffeas reg_q_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8_.is_wysiwyg = "true";
defparam reg_q_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N18
fiftyfivenm_lcell_comb ix49_fadd(
// Equation(s):
// inc_d_9_ = (reg_q_9__aq & (!nx9072z1)) # (!reg_q_9__aq & ((nx9072z1) # (GND)))
// nx40977z1 = CARRY((!nx9072z1) # (!reg_q_9__aq))

	.dataa(gnd),
	.datab(reg_q_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9072z1),
	.combout(inc_d_9_),
	.cout(nx40977z1));
// synopsys translate_off
defparam ix49_fadd.lut_mask = 16'h3C3F;
defparam ix49_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N19
dffeas reg_q_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9_.is_wysiwyg = "true";
defparam reg_q_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N20
fiftyfivenm_lcell_comb ix51_fadd(
// Equation(s):
// inc_d_10_ = nx40977z1 $ (!reg_q_10__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_10__aq),
	.cin(nx40977z1),
	.combout(inc_d_10_),
	.cout());
// synopsys translate_off
defparam ix51_fadd.lut_mask = 16'hF00F;
defparam ix51_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y14_N21
dffeas reg_q_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10_.is_wysiwyg = "true";
defparam reg_q_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N26
fiftyfivenm_lcell_comb ix60415z7098(
// Equation(s):
// nx60415z4 = (!reset_n_ainput_o & (reg_q_8__aq & (reg_q_10__aq & reg_q_9__aq)))

	.dataa(reset_n_ainput_o),
	.datab(reg_q_8__aq),
	.datac(reg_q_10__aq),
	.datad(reg_q_9__aq),
	.cin(gnd),
	.combout(nx60415z4),
	.cout());
// synopsys translate_off
defparam ix60415z7098.lut_mask = 16'h4000;
defparam ix60415z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N30
fiftyfivenm_lcell_comb ix60415z7096(
// Equation(s):
// nx60415z2 = (reg_q_0__aq & (reg_q_1__aq & (reg_q_2__aq & reg_q_3__aq)))

	.dataa(reg_q_0__aq),
	.datab(reg_q_1__aq),
	.datac(reg_q_2__aq),
	.datad(reg_q_3__aq),
	.cin(gnd),
	.combout(nx60415z2),
	.cout());
// synopsys translate_off
defparam ix60415z7096.lut_mask = 16'h8000;
defparam ix60415z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y14_N24
fiftyfivenm_lcell_comb ix60415z7097(
// Equation(s):
// nx60415z3 = (reg_q_5__aq & (reg_q_4__aq & (reg_q_7__aq & reg_q_6__aq)))

	.dataa(reg_q_5__aq),
	.datab(reg_q_4__aq),
	.datac(reg_q_7__aq),
	.datad(reg_q_6__aq),
	.cin(gnd),
	.combout(nx60415z3),
	.cout());
// synopsys translate_off
defparam ix60415z7097.lut_mask = 16'h8000;
defparam ix60415z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N0
fiftyfivenm_lcell_comb ix60415z7099(
// Equation(s):
// nx60415z5 = (!reset_n_ainput_o & reg_uart_reset_aq)

	.dataa(gnd),
	.datab(reset_n_ainput_o),
	.datac(gnd),
	.datad(reg_uart_reset_aq),
	.cin(gnd),
	.combout(nx60415z5),
	.cout());
// synopsys translate_off
defparam ix60415z7099.lut_mask = 16'h3300;
defparam ix60415z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N0
fiftyfivenm_lcell_comb ix60415z7095(
// Equation(s):
// nx60415z1 = (nx60415z5) # ((nx60415z4 & (nx60415z2 & nx60415z3)))

	.dataa(nx60415z4),
	.datab(nx60415z2),
	.datac(nx60415z3),
	.datad(nx60415z5),
	.cin(gnd),
	.combout(nx60415z1),
	.cout());
// synopsys translate_off
defparam ix60415z7095.lut_mask = 16'hFF80;
defparam ix60415z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N1
dffeas reg_uart_reset(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60415z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_uart_reset_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_uart_reset.is_wysiwyg = "true";
defparam reg_uart_reset.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N24
fiftyfivenm_lcell_comb ix14933z7096(
// Equation(s):
// nx14933z2 = (!reg_q_1__dup_70_aq & (reg_q_3__dup_68_aq & (!reg_q_0__dup_71_aq & !reg_q_2__dup_69_aq)))

	.dataa(reg_q_1__dup_70_aq),
	.datab(reg_q_3__dup_68_aq),
	.datac(reg_q_0__dup_71_aq),
	.datad(reg_q_2__dup_69_aq),
	.cin(gnd),
	.combout(nx14933z2),
	.cout());
// synopsys translate_off
defparam ix14933z7096.lut_mask = 16'h0004;
defparam ix14933z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N28
fiftyfivenm_lcell_comb ix14933z7099(
// Equation(s):
// nx14933z5 = (!reg_q_7__dup_64_aq & (!reg_q_5__dup_66_aq & (!reg_q_4__dup_67_aq & !reg_q_6__dup_65_aq)))

	.dataa(reg_q_7__dup_64_aq),
	.datab(reg_q_5__dup_66_aq),
	.datac(reg_q_4__dup_67_aq),
	.datad(reg_q_6__dup_65_aq),
	.cin(gnd),
	.combout(nx14933z5),
	.cout());
// synopsys translate_off
defparam ix14933z7099.lut_mask = 16'h0001;
defparam ix14933z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N6
fiftyfivenm_lcell_comb u_uart_reg_RxDivisor_4__afeeder(
// Equation(s):
// u_uart_reg_RxDivisor_4__afeeder_combout = VCC

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(u_uart_reg_RxDivisor_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_RxDivisor_4__afeeder.lut_mask = 16'hFFFF;
defparam u_uart_reg_RxDivisor_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N7
dffeas u_uart_reg_RxDivisor_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_RxDivisor_4__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxDivisor_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxDivisor_4_.is_wysiwyg = "true";
defparam u_uart_reg_RxDivisor_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N22
fiftyfivenm_lcell_comb ix1104_fadd(
// Equation(s):
// inc_d_9__dup_1136 = (reg_q_9__dup_62_aq & (!nx48393z1)) # (!reg_q_9__dup_62_aq & ((nx48393z1) # (GND)))
// nx40606z1 = CARRY((!nx48393z1) # (!reg_q_9__dup_62_aq))

	.dataa(reg_q_9__dup_62_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx48393z1),
	.combout(inc_d_9__dup_1136),
	.cout(nx40606z1));
// synopsys translate_off
defparam ix1104_fadd.lut_mask = 16'h5A5F;
defparam ix1104_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N24
fiftyfivenm_lcell_comb ix1105_fadd(
// Equation(s):
// inc_d_10__dup_1138 = nx40606z1 $ (!reg_q_10__dup_61_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_10__dup_61_aq),
	.cin(nx40606z1),
	.combout(inc_d_10__dup_1138),
	.cout());
// synopsys translate_off
defparam ix1105_fadd.lut_mask = 16'hF00F;
defparam ix1105_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N25
dffeas reg_q_10__dup_61(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_1138),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_61_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_61.is_wysiwyg = "true";
defparam reg_q_10__dup_61.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N22
fiftyfivenm_lcell_comb ix14933z7100(
// Equation(s):
// nx14933z6 = (!u_uart_reg_RxDivisor_4__aq & (!reg_q_9__dup_62_aq & (!reg_q_10__dup_61_aq & !reg_q_8__dup_63_aq)))

	.dataa(u_uart_reg_RxDivisor_4__aq),
	.datab(reg_q_9__dup_62_aq),
	.datac(reg_q_10__dup_61_aq),
	.datad(reg_q_8__dup_63_aq),
	.cin(gnd),
	.combout(nx14933z6),
	.cout());
// synopsys translate_off
defparam ix14933z7100.lut_mask = 16'h0001;
defparam ix14933z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N18
fiftyfivenm_lcell_comb ix14933z7098(
// Equation(s):
// nx14933z4 = (!reg_q_1__dup_70_aq & (!reg_q_2__dup_69_aq & (!reg_q_0__dup_71_aq & !reg_q_3__dup_68_aq)))

	.dataa(reg_q_1__dup_70_aq),
	.datab(reg_q_2__dup_69_aq),
	.datac(reg_q_0__dup_71_aq),
	.datad(reg_q_3__dup_68_aq),
	.cin(gnd),
	.combout(nx14933z4),
	.cout());
// synopsys translate_off
defparam ix14933z7098.lut_mask = 16'h0001;
defparam ix14933z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N8
fiftyfivenm_lcell_comb ix14933z7097(
// Equation(s):
// nx14933z3 = (nx14933z5 & (nx14933z6 & nx14933z4))

	.dataa(gnd),
	.datab(nx14933z5),
	.datac(nx14933z6),
	.datad(nx14933z4),
	.cin(gnd),
	.combout(nx14933z3),
	.cout());
// synopsys translate_off
defparam ix14933z7097.lut_mask = 16'hC000;
defparam ix14933z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N26
fiftyfivenm_lcell_comb ix64683z7095(
// Equation(s):
// nx64683z1 = (u_uart_reg_RxFSM_0__aq & !u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx64683z1),
	.cout());
// synopsys translate_off
defparam ix64683z7095.lut_mask = 16'h0A0A;
defparam ix64683z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N10
fiftyfivenm_lcell_comb u_uart_reg_RxFSM_1__a0(
// Equation(s):
// u_uart_reg_RxFSM_1__a0_combout = !u_uart_reg_RxFSM_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(u_uart_reg_RxFSM_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_uart_reg_RxFSM_1__a0_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_RxFSM_1__a0.lut_mask = 16'h0F0F;
defparam u_uart_reg_RxFSM_1__a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X11_Y25_N22
fiftyfivenm_io_ibuf uart_rx_ainput(
	.i(uart_rx),
	.ibar(gnd),
	.nsleep(vcc),
	.o(uart_rx_ainput_o));
// synopsys translate_off
defparam uart_rx_ainput.bus_hold = "false";
defparam uart_rx_ainput.listen_to_nsleep_signal = "false";
defparam uart_rx_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N8
fiftyfivenm_lcell_comb u_uart_reg_Rx_r_a0(
// Equation(s):
// u_uart_reg_Rx_r_a0_combout = !uart_rx_ainput_o

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(uart_rx_ainput_o),
	.cin(gnd),
	.combout(u_uart_reg_Rx_r_a0_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_r_a0.lut_mask = 16'h00FF;
defparam u_uart_reg_Rx_r_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N9
dffeas u_uart_reg_Rx_r(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_r_a0_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_r_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_r.is_wysiwyg = "true";
defparam u_uart_reg_Rx_r.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N24
fiftyfivenm_lcell_comb ix8802z7095(
// Equation(s):
// nx8802z1 = (u_uart_reg_Rx_r_aq & ((u_uart_reg_RxFSM_4__aq))) # (!u_uart_reg_Rx_r_aq & (u_uart_reg_RxFSM_1__aq))

	.dataa(u_uart_reg_RxFSM_1__aq),
	.datab(gnd),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_4__aq),
	.cin(gnd),
	.combout(nx8802z1),
	.cout());
// synopsys translate_off
defparam ix8802z7095.lut_mask = 16'hFA0A;
defparam ix8802z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N25
dffeas u_uart_reg_RxFSM_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx8802z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_5_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N12
fiftyfivenm_lcell_comb ix12790z7097(
// Equation(s):
// nx12790z2 = (uart_rx_ainput_o) # (!u_uart_reg_RxFSM_5__aq)

	.dataa(uart_rx_ainput_o),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_RxFSM_5__aq),
	.cin(gnd),
	.combout(nx12790z2),
	.cout());
// synopsys translate_off
defparam ix12790z7097.lut_mask = 16'hAAFF;
defparam ix12790z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N22
fiftyfivenm_lcell_comb ix12790z7098(
// Equation(s):
// nx12790z3 = (u_uart_reg_RxFSM_0__aq & ((u_uart_reg_RxFSM_5__aq & ((uart_rx_ainput_o))) # (!u_uart_reg_RxFSM_5__aq & (u_uart_reg_TopRx_aq))))

	.dataa(u_uart_reg_TopRx_aq),
	.datab(u_uart_reg_RxFSM_5__aq),
	.datac(u_uart_reg_RxFSM_0__aq),
	.datad(uart_rx_ainput_o),
	.cin(gnd),
	.combout(nx12790z3),
	.cout());
// synopsys translate_off
defparam ix12790z7098.lut_mask = 16'hE020;
defparam ix12790z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N16
fiftyfivenm_lcell_comb ix12790z7096(
// Equation(s):
// nx12790z1 = (nx12790z3) # ((nx12790z2 & (u_uart_reg_Rx_r_aq & !u_uart_reg_RxFSM_0__aq)))

	.dataa(nx12790z2),
	.datab(u_uart_reg_Rx_r_aq),
	.datac(u_uart_reg_RxFSM_0__aq),
	.datad(nx12790z3),
	.cin(gnd),
	.combout(nx12790z1),
	.cout());
// synopsys translate_off
defparam ix12790z7096.lut_mask = 16'hFF08;
defparam ix12790z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N11
dffeas u_uart_reg_RxFSM_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_RxFSM_1__a0_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_1_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N6
fiftyfivenm_lcell_comb ix11793z7095(
// Equation(s):
// nx11793z1 = (u_uart_reg_RxFSM_3__aq) # ((u_uart_reg_RxFSM_1__aq & u_uart_reg_Rx_r_aq))

	.dataa(u_uart_reg_RxFSM_1__aq),
	.datab(gnd),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_3__aq),
	.cin(gnd),
	.combout(nx11793z1),
	.cout());
// synopsys translate_off
defparam ix11793z7095.lut_mask = 16'hFFA0;
defparam ix11793z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N7
dffeas u_uart_reg_RxFSM_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx11793z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_2_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N28
fiftyfivenm_lcell_comb ix10796z7095(
// Equation(s):
// nx10796z1 = (!nx9799z2 & u_uart_reg_RxFSM_2__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(nx9799z2),
	.datad(u_uart_reg_RxFSM_2__aq),
	.cin(gnd),
	.combout(nx10796z1),
	.cout());
// synopsys translate_off
defparam ix10796z7095.lut_mask = 16'h0F00;
defparam ix10796z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N29
dffeas u_uart_reg_RxFSM_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx10796z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_3_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N4
fiftyfivenm_lcell_comb ix64683z7096(
// Equation(s):
// nx64683z3 = (u_uart_reg_RxFSM_3__aq & (u_uart_reg_TopRx_aq)) # (!u_uart_reg_RxFSM_3__aq & ((!u_uart_reg_RxFSM_0__aq)))

	.dataa(u_uart_reg_TopRx_aq),
	.datab(u_uart_reg_RxFSM_3__aq),
	.datac(u_uart_reg_RxFSM_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx64683z3),
	.cout());
// synopsys translate_off
defparam ix64683z7096.lut_mask = 16'h8B8B;
defparam ix64683z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N27
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64683z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_0_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N12
fiftyfivenm_lcell_comb ix144z7095(
// Equation(s):
// nx144z1 = (u_uart_reg_RxFSM_0__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_1__aq $ (u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)))

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx144z1),
	.cout());
// synopsys translate_off
defparam ix144z7095.lut_mask = 16'h0AA0;
defparam ix144z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N13
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx144z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_1_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N6
fiftyfivenm_lcell_comb ix1141z7095(
// Equation(s):
// nx1141z1 = (u_uart_reg_RxFSM_0__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_2__aq $ (((u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & u_uart_modgen_counter_RxBitCnt_reg_q_1__aq)))))

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.cin(gnd),
	.combout(nx1141z1),
	.cout());
// synopsys translate_off
defparam ix1141z7095.lut_mask = 16'h28A0;
defparam ix1141z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N7
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx1141z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_2_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N24
fiftyfivenm_lcell_comb ix2138z7096(
// Equation(s):
// nx2138z2 = (u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & u_uart_modgen_counter_RxBitCnt_reg_q_1__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.cin(gnd),
	.combout(nx2138z2),
	.cout());
// synopsys translate_off
defparam ix2138z7096.lut_mask = 16'hF000;
defparam ix2138z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N10
fiftyfivenm_lcell_comb ix2138z7095(
// Equation(s):
// nx2138z1 = (u_uart_reg_RxFSM_0__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_3__aq $ (((nx2138z2 & u_uart_modgen_counter_RxBitCnt_reg_q_2__aq)))))

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(nx2138z2),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.cin(gnd),
	.combout(nx2138z1),
	.cout());
// synopsys translate_off
defparam ix2138z7095.lut_mask = 16'h28A0;
defparam ix2138z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N11
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx2138z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_3_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N0
fiftyfivenm_lcell_comb ix9799z7096(
// Equation(s):
// nx9799z2 = (!u_uart_modgen_counter_RxBitCnt_reg_q_1__aq & (!u_uart_modgen_counter_RxBitCnt_reg_q_2__aq & (!u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & u_uart_modgen_counter_RxBitCnt_reg_q_3__aq)))

	.dataa(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datab(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.cin(gnd),
	.combout(nx9799z2),
	.cout());
// synopsys translate_off
defparam ix9799z7096.lut_mask = 16'h0100;
defparam ix9799z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N2
fiftyfivenm_lcell_comb ix9799z7095(
// Equation(s):
// nx9799z1 = (nx9799z2 & u_uart_reg_RxFSM_2__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(nx9799z2),
	.datad(u_uart_reg_RxFSM_2__aq),
	.cin(gnd),
	.combout(nx9799z1),
	.cout());
// synopsys translate_off
defparam ix9799z7095.lut_mask = 16'hF000;
defparam ix9799z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N3
dffeas u_uart_reg_RxFSM_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx9799z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_4_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N26
fiftyfivenm_lcell_comb ix13787z7095(
// Equation(s):
// nx13787z1 = (!u_uart_reg_RxFSM_5__aq & ((u_uart_reg_Rx_r_aq) # (!u_uart_reg_RxFSM_4__aq)))

	.dataa(gnd),
	.datab(u_uart_reg_RxFSM_4__aq),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_5__aq),
	.cin(gnd),
	.combout(nx13787z1),
	.cout());
// synopsys translate_off
defparam ix13787z7095.lut_mask = 16'h00F3;
defparam ix13787z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N27
dffeas u_uart_reg_RxFSM_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13787z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_0_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N4
fiftyfivenm_lcell_comb ix14933z7095(
// Equation(s):
// nx14933z1 = (nx14933z3) # (((nx59343z2 & nx14933z2)) # (!u_uart_reg_RxFSM_0__aq))

	.dataa(nx59343z2),
	.datab(nx14933z2),
	.datac(nx14933z3),
	.datad(u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx14933z1),
	.cout());
// synopsys translate_off
defparam ix14933z7095.lut_mask = 16'hF8FF;
defparam ix14933z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N5
dffeas reg_q_0__dup_71(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_1118),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_71_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_71.is_wysiwyg = "true";
defparam reg_q_0__dup_71.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N6
fiftyfivenm_lcell_comb ix1088_fadd(
// Equation(s):
// inc_d_1__dup_1120 = (reg_q_1__dup_70_aq & (!nx7080z1)) # (!reg_q_1__dup_70_aq & ((nx7080z1) # (GND)))
// nx24825z1 = CARRY((!nx7080z1) # (!reg_q_1__dup_70_aq))

	.dataa(reg_q_1__dup_70_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx7080z1),
	.combout(inc_d_1__dup_1120),
	.cout(nx24825z1));
// synopsys translate_off
defparam ix1088_fadd.lut_mask = 16'h5A5F;
defparam ix1088_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N7
dffeas reg_q_1__dup_70(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_1120),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_70_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_70.is_wysiwyg = "true";
defparam reg_q_1__dup_70.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N8
fiftyfivenm_lcell_comb ix1090_fadd(
// Equation(s):
// inc_d_2__dup_1122 = (reg_q_2__dup_69_aq & (nx24825z1 $ (GND))) # (!reg_q_2__dup_69_aq & (!nx24825z1 & VCC))
// nx9251z1 = CARRY((reg_q_2__dup_69_aq & !nx24825z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_69_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx24825z1),
	.combout(inc_d_2__dup_1122),
	.cout(nx9251z1));
// synopsys translate_off
defparam ix1090_fadd.lut_mask = 16'hC30C;
defparam ix1090_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N9
dffeas reg_q_2__dup_69(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1122),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_69_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_69.is_wysiwyg = "true";
defparam reg_q_2__dup_69.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N10
fiftyfivenm_lcell_comb ix1092_fadd(
// Equation(s):
// inc_d_3__dup_1124 = (reg_q_3__dup_68_aq & (!nx9251z1)) # (!reg_q_3__dup_68_aq & ((nx9251z1) # (GND)))
// nx59213z1 = CARRY((!nx9251z1) # (!reg_q_3__dup_68_aq))

	.dataa(reg_q_3__dup_68_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9251z1),
	.combout(inc_d_3__dup_1124),
	.cout(nx59213z1));
// synopsys translate_off
defparam ix1092_fadd.lut_mask = 16'h5A5F;
defparam ix1092_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N11
dffeas reg_q_3__dup_68(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1124),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_68_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_68.is_wysiwyg = "true";
defparam reg_q_3__dup_68.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N12
fiftyfivenm_lcell_comb ix1094_fadd(
// Equation(s):
// inc_d_4__dup_1126 = (reg_q_4__dup_67_aq & (nx59213z1 $ (GND))) # (!reg_q_4__dup_67_aq & (!nx59213z1 & VCC))
// nx43639z1 = CARRY((reg_q_4__dup_67_aq & !nx59213z1))

	.dataa(reg_q_4__dup_67_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59213z1),
	.combout(inc_d_4__dup_1126),
	.cout(nx43639z1));
// synopsys translate_off
defparam ix1094_fadd.lut_mask = 16'hA50A;
defparam ix1094_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N13
dffeas reg_q_4__dup_67(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1126),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_67_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_67.is_wysiwyg = "true";
defparam reg_q_4__dup_67.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N14
fiftyfivenm_lcell_comb ix1096_fadd(
// Equation(s):
// inc_d_5__dup_1128 = (reg_q_5__dup_66_aq & (!nx43639z1)) # (!reg_q_5__dup_66_aq & ((nx43639z1) # (GND)))
// nx37471z1 = CARRY((!nx43639z1) # (!reg_q_5__dup_66_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_66_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx43639z1),
	.combout(inc_d_5__dup_1128),
	.cout(nx37471z1));
// synopsys translate_off
defparam ix1096_fadd.lut_mask = 16'h3C3F;
defparam ix1096_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N15
dffeas reg_q_5__dup_66(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1128),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_66_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_66.is_wysiwyg = "true";
defparam reg_q_5__dup_66.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N16
fiftyfivenm_lcell_comb ix1098_fadd(
// Equation(s):
// inc_d_6__dup_1130 = (reg_q_6__dup_65_aq & (nx37471z1 $ (GND))) # (!reg_q_6__dup_65_aq & (!nx37471z1 & VCC))
// nx51531z1 = CARRY((reg_q_6__dup_65_aq & !nx37471z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_65_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37471z1),
	.combout(inc_d_6__dup_1130),
	.cout(nx51531z1));
// synopsys translate_off
defparam ix1098_fadd.lut_mask = 16'hC30C;
defparam ix1098_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N17
dffeas reg_q_6__dup_65(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1130),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_65_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_65.is_wysiwyg = "true";
defparam reg_q_6__dup_65.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N18
fiftyfivenm_lcell_comb ix1100_fadd(
// Equation(s):
// inc_d_7__dup_1132 = (reg_q_7__dup_64_aq & (!nx51531z1)) # (!reg_q_7__dup_64_aq & ((nx51531z1) # (GND)))
// nx63967z1 = CARRY((!nx51531z1) # (!reg_q_7__dup_64_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_64_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx51531z1),
	.combout(inc_d_7__dup_1132),
	.cout(nx63967z1));
// synopsys translate_off
defparam ix1100_fadd.lut_mask = 16'h3C3F;
defparam ix1100_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N19
dffeas reg_q_7__dup_64(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1132),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_64_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_64.is_wysiwyg = "true";
defparam reg_q_7__dup_64.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N20
fiftyfivenm_lcell_comb ix1102_fadd(
// Equation(s):
// inc_d_8__dup_1134 = (reg_q_8__dup_63_aq & (nx63967z1 $ (GND))) # (!reg_q_8__dup_63_aq & (!nx63967z1 & VCC))
// nx48393z1 = CARRY((reg_q_8__dup_63_aq & !nx63967z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_63_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx63967z1),
	.combout(inc_d_8__dup_1134),
	.cout(nx48393z1));
// synopsys translate_off
defparam ix1102_fadd.lut_mask = 16'hC30C;
defparam ix1102_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y16_N21
dffeas reg_q_8__dup_63(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_1134),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_63_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_63.is_wysiwyg = "true";
defparam reg_q_8__dup_63.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N23
dffeas reg_q_9__dup_62(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_1136),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx14933z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_62_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_62.is_wysiwyg = "true";
defparam reg_q_9__dup_62.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N26
fiftyfivenm_lcell_comb ix59343z7097(
// Equation(s):
// nx59343z3 = (!reg_q_9__dup_62_aq & !reg_q_8__dup_63_aq)

	.dataa(gnd),
	.datab(reg_q_9__dup_62_aq),
	.datac(gnd),
	.datad(reg_q_8__dup_63_aq),
	.cin(gnd),
	.combout(nx59343z3),
	.cout());
// synopsys translate_off
defparam ix59343z7097.lut_mask = 16'h0033;
defparam ix59343z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N12
fiftyfivenm_lcell_comb ix59343z7098(
// Equation(s):
// nx59343z4 = (reg_q_7__dup_64_aq & (!reg_q_5__dup_66_aq & (reg_q_4__dup_67_aq & reg_q_6__dup_65_aq)))

	.dataa(reg_q_7__dup_64_aq),
	.datab(reg_q_5__dup_66_aq),
	.datac(reg_q_4__dup_67_aq),
	.datad(reg_q_6__dup_65_aq),
	.cin(gnd),
	.combout(nx59343z4),
	.cout());
// synopsys translate_off
defparam ix59343z7098.lut_mask = 16'h2000;
defparam ix59343z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N30
fiftyfivenm_lcell_comb ix59343z7096(
// Equation(s):
// nx59343z2 = (nx59343z3 & (u_uart_reg_RxDivisor_4__aq & (!reg_q_10__dup_61_aq & nx59343z4)))

	.dataa(nx59343z3),
	.datab(u_uart_reg_RxDivisor_4__aq),
	.datac(reg_q_10__dup_61_aq),
	.datad(nx59343z4),
	.cin(gnd),
	.combout(nx59343z2),
	.cout());
// synopsys translate_off
defparam ix59343z7096.lut_mask = 16'h0800;
defparam ix59343z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N10
fiftyfivenm_lcell_comb ix59343z7095(
// Equation(s):
// nx59343z1 = (u_uart_reg_RxFSM_0__aq & ((nx14933z3) # ((nx59343z2 & nx14933z2))))

	.dataa(nx59343z2),
	.datab(nx14933z2),
	.datac(nx14933z3),
	.datad(u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx59343z1),
	.cout());
// synopsys translate_off
defparam ix59343z7095.lut_mask = 16'hF800;
defparam ix59343z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N11
dffeas u_uart_reg_TopRx(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59343z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TopRx_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TopRx.is_wysiwyg = "true";
defparam u_uart_reg_TopRx.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N0
fiftyfivenm_lcell_comb ix13938z7095(
// Equation(s):
// nx13938z1 = (u_uart_reg_TopRx_aq & (u_uart_reg_RxFSM_4__aq & !u_uart_reg_Rx_r_aq))

	.dataa(u_uart_reg_TopRx_aq),
	.datab(u_uart_reg_RxFSM_4__aq),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx13938z1),
	.cout());
// synopsys translate_off
defparam ix13938z7095.lut_mask = 16'h0808;
defparam ix13938z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N30
fiftyfivenm_lcell_comb u_uart_reg_RxRDYi_afeeder(
// Equation(s):
// u_uart_reg_RxRDYi_afeeder_combout = nx13938z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx13938z1),
	.cin(gnd),
	.combout(u_uart_reg_RxRDYi_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_RxRDYi_afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_RxRDYi_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N31
dffeas u_uart_reg_RxRDYi(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_RxRDYi_afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxRDYi_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxRDYi.is_wysiwyg = "true";
defparam u_uart_reg_RxRDYi.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N28
fiftyfivenm_lcell_comb reg_q_0__dup_24_a_wirecell(
// Equation(s):
// reg_q_0__dup_24_a_wirecell_combout = !reg_q_0__dup_24_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_0__dup_24_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(reg_q_0__dup_24_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam reg_q_0__dup_24_a_wirecell.lut_mask = 16'h0F0F;
defparam reg_q_0__dup_24_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N14
fiftyfivenm_lcell_comb ix924_fadd(
// Equation(s):
// incdec_mux_7_dup_120 = (nx7605z1 & ((reg_q_7__dup_17_aq & (nx60290z1 & VCC)) # (!reg_q_7__dup_17_aq & (!nx60290z1)))) # (!nx7605z1 & ((reg_q_7__dup_17_aq & (!nx60290z1)) # (!reg_q_7__dup_17_aq & ((nx60290z1) # (GND)))))
// nx2541z1 = CARRY((nx7605z1 & (!reg_q_7__dup_17_aq & !nx60290z1)) # (!nx7605z1 & ((!nx60290z1) # (!reg_q_7__dup_17_aq))))

	.dataa(nx7605z1),
	.datab(reg_q_7__dup_17_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx60290z1),
	.combout(incdec_mux_7_dup_120),
	.cout(nx2541z1));
// synopsys translate_off
defparam ix924_fadd.lut_mask = 16'h9617;
defparam ix924_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N16
fiftyfivenm_lcell_comb ix925_fadd(
// Equation(s):
// incdec_mux_8_dup_121 = nx7605z1 $ (reg_q_8__dup_16_aq $ (!nx2541z1))

	.dataa(nx7605z1),
	.datab(reg_q_8__dup_16_aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx2541z1),
	.combout(incdec_mux_8_dup_121),
	.cout());
// synopsys translate_off
defparam ix925_fadd.lut_mask = 16'h6969;
defparam ix925_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N17
dffeas reg_q_8__dup_16(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_8_dup_121),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_16_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_16.is_wysiwyg = "true";
defparam reg_q_8__dup_16.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N26
fiftyfivenm_lcell_comb ix18416z7098(
// Equation(s):
// nx18416z3 = (reg_q_0__dup_24_aq) # ((reg_q_7__dup_17_aq) # (!reg_q_8__dup_16_aq))

	.dataa(gnd),
	.datab(reg_q_0__dup_24_aq),
	.datac(reg_q_7__dup_17_aq),
	.datad(reg_q_8__dup_16_aq),
	.cin(gnd),
	.combout(nx18416z3),
	.cout());
// synopsys translate_off
defparam ix18416z7098.lut_mask = 16'hFCFF;
defparam ix18416z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N24
fiftyfivenm_lcell_comb ix18416z7099(
// Equation(s):
// nx18416z4 = (!reg_q_6__dup_18_aq & (!reg_q_5__dup_19_aq & (!reg_q_4__dup_20_aq & !reg_q_3__dup_21_aq)))

	.dataa(reg_q_6__dup_18_aq),
	.datab(reg_q_5__dup_19_aq),
	.datac(reg_q_4__dup_20_aq),
	.datad(reg_q_3__dup_21_aq),
	.cin(gnd),
	.combout(nx18416z4),
	.cout());
// synopsys translate_off
defparam ix18416z7099.lut_mask = 16'h0001;
defparam ix18416z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N20
fiftyfivenm_lcell_comb ix18416z7097(
// Equation(s):
// nx18416z2 = (nx18416z3) # ((reg_q_1__dup_23_aq) # ((reg_q_2__dup_22_aq) # (!nx18416z4)))

	.dataa(nx18416z3),
	.datab(reg_q_1__dup_23_aq),
	.datac(reg_q_2__dup_22_aq),
	.datad(nx18416z4),
	.cin(gnd),
	.combout(nx18416z2),
	.cout());
// synopsys translate_off
defparam ix18416z7097.lut_mask = 16'hFEFF;
defparam ix18416z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N30
fiftyfivenm_lcell_comb ix18416z7096(
// Equation(s):
// nx18416z1 = (nx7605z1) # (((nx18416z2 & u_uart_reg_RxRDYi_aq)) # (!reset_n_ainput_o))

	.dataa(nx7605z1),
	.datab(nx18416z2),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx18416z1),
	.cout());
// synopsys translate_off
defparam ix18416z7096.lut_mask = 16'hEAFF;
defparam ix18416z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y12_N29
dffeas reg_q_0__dup_24(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_q_0__dup_24_a_wirecell_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_24_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_24.is_wysiwyg = "true";
defparam reg_q_0__dup_24.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N0
fiftyfivenm_lcell_comb ix2404_fadd(
// Equation(s):
// nx14325z1 = CARRY(reg_q_0__dup_24_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_24_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx14325z1));
// synopsys translate_off
defparam ix2404_fadd.lut_mask = 16'h00CC;
defparam ix2404_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N2
fiftyfivenm_lcell_comb ix912_fadd(
// Equation(s):
// incdec_mux_1_dup_114 = (nx7605z1 & ((reg_q_1__dup_23_aq & (nx14325z1 & VCC)) # (!reg_q_1__dup_23_aq & (!nx14325z1)))) # (!nx7605z1 & ((reg_q_1__dup_23_aq & (!nx14325z1)) # (!reg_q_1__dup_23_aq & ((nx14325z1) # (GND)))))
// nx35637z1 = CARRY((nx7605z1 & (!reg_q_1__dup_23_aq & !nx14325z1)) # (!nx7605z1 & ((!nx14325z1) # (!reg_q_1__dup_23_aq))))

	.dataa(nx7605z1),
	.datab(reg_q_1__dup_23_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx14325z1),
	.combout(incdec_mux_1_dup_114),
	.cout(nx35637z1));
// synopsys translate_off
defparam ix912_fadd.lut_mask = 16'h9617;
defparam ix912_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N3
dffeas reg_q_1__dup_23(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_1_dup_114),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_23_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_23.is_wysiwyg = "true";
defparam reg_q_1__dup_23.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N4
fiftyfivenm_lcell_comb ix914_fadd(
// Equation(s):
// incdec_mux_2_dup_115 = ((nx7605z1 $ (reg_q_2__dup_22_aq $ (!nx35637z1)))) # (GND)
// nx20063z1 = CARRY((nx7605z1 & ((reg_q_2__dup_22_aq) # (!nx35637z1))) # (!nx7605z1 & (reg_q_2__dup_22_aq & !nx35637z1)))

	.dataa(nx7605z1),
	.datab(reg_q_2__dup_22_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx35637z1),
	.combout(incdec_mux_2_dup_115),
	.cout(nx20063z1));
// synopsys translate_off
defparam ix914_fadd.lut_mask = 16'h698E;
defparam ix914_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N5
dffeas reg_q_2__dup_22(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_2_dup_115),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_22_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_22.is_wysiwyg = "true";
defparam reg_q_2__dup_22.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N6
fiftyfivenm_lcell_comb ix916_fadd(
// Equation(s):
// incdec_mux_3_dup_116 = (nx7605z1 & ((reg_q_3__dup_21_aq & (nx20063z1 & VCC)) # (!reg_q_3__dup_21_aq & (!nx20063z1)))) # (!nx7605z1 & ((reg_q_3__dup_21_aq & (!nx20063z1)) # (!reg_q_3__dup_21_aq & ((nx20063z1) # (GND)))))
// nx4489z1 = CARRY((nx7605z1 & (!reg_q_3__dup_21_aq & !nx20063z1)) # (!nx7605z1 & ((!nx20063z1) # (!reg_q_3__dup_21_aq))))

	.dataa(nx7605z1),
	.datab(reg_q_3__dup_21_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx20063z1),
	.combout(incdec_mux_3_dup_116),
	.cout(nx4489z1));
// synopsys translate_off
defparam ix916_fadd.lut_mask = 16'h9617;
defparam ix916_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N7
dffeas reg_q_3__dup_21(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_3_dup_116),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_21_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_21.is_wysiwyg = "true";
defparam reg_q_3__dup_21.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N8
fiftyfivenm_lcell_comb ix918_fadd(
// Equation(s):
// incdec_mux_4_dup_117 = ((nx7605z1 $ (reg_q_4__dup_20_aq $ (!nx4489z1)))) # (GND)
// nx29142z1 = CARRY((nx7605z1 & ((reg_q_4__dup_20_aq) # (!nx4489z1))) # (!nx7605z1 & (reg_q_4__dup_20_aq & !nx4489z1)))

	.dataa(nx7605z1),
	.datab(reg_q_4__dup_20_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx4489z1),
	.combout(incdec_mux_4_dup_117),
	.cout(nx29142z1));
// synopsys translate_off
defparam ix918_fadd.lut_mask = 16'h698E;
defparam ix918_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N9
dffeas reg_q_4__dup_20(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_4_dup_117),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_20_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_20.is_wysiwyg = "true";
defparam reg_q_4__dup_20.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N10
fiftyfivenm_lcell_comb ix920_fadd(
// Equation(s):
// incdec_mux_5_dup_118 = (nx7605z1 & ((reg_q_5__dup_19_aq & (nx29142z1 & VCC)) # (!reg_q_5__dup_19_aq & (!nx29142z1)))) # (!nx7605z1 & ((reg_q_5__dup_19_aq & (!nx29142z1)) # (!reg_q_5__dup_19_aq & ((nx29142z1) # (GND)))))
// nx44716z1 = CARRY((nx7605z1 & (!reg_q_5__dup_19_aq & !nx29142z1)) # (!nx7605z1 & ((!nx29142z1) # (!reg_q_5__dup_19_aq))))

	.dataa(nx7605z1),
	.datab(reg_q_5__dup_19_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx29142z1),
	.combout(incdec_mux_5_dup_118),
	.cout(nx44716z1));
// synopsys translate_off
defparam ix920_fadd.lut_mask = 16'h9617;
defparam ix920_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N11
dffeas reg_q_5__dup_19(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_5_dup_118),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_19_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_19.is_wysiwyg = "true";
defparam reg_q_5__dup_19.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N12
fiftyfivenm_lcell_comb ix922_fadd(
// Equation(s):
// incdec_mux_6_dup_119 = ((nx7605z1 $ (reg_q_6__dup_18_aq $ (!nx44716z1)))) # (GND)
// nx60290z1 = CARRY((nx7605z1 & ((reg_q_6__dup_18_aq) # (!nx44716z1))) # (!nx7605z1 & (reg_q_6__dup_18_aq & !nx44716z1)))

	.dataa(nx7605z1),
	.datab(reg_q_6__dup_18_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx44716z1),
	.combout(incdec_mux_6_dup_119),
	.cout(nx60290z1));
// synopsys translate_off
defparam ix922_fadd.lut_mask = 16'h698E;
defparam ix922_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y12_N13
dffeas reg_q_6__dup_18(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_6_dup_119),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_18_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_18.is_wysiwyg = "true";
defparam reg_q_6__dup_18.power_up = "low";
// synopsys translate_on

// Location: FF_X17_Y12_N15
dffeas reg_q_7__dup_17(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_7_dup_120),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx18416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_17_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_17.is_wysiwyg = "true";
defparam reg_q_7__dup_17.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N22
fiftyfivenm_lcell_comb ix7605z7096(
// Equation(s):
// nx7605z2 = (reg_q_7__dup_17_aq) # ((reg_q_0__dup_24_aq) # ((reg_q_2__dup_22_aq) # (reg_q_1__dup_23_aq)))

	.dataa(reg_q_7__dup_17_aq),
	.datab(reg_q_0__dup_24_aq),
	.datac(reg_q_2__dup_22_aq),
	.datad(reg_q_1__dup_23_aq),
	.cin(gnd),
	.combout(nx7605z2),
	.cout());
// synopsys translate_off
defparam ix7605z7096.lut_mask = 16'hFFFE;
defparam ix7605z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N24
fiftyfivenm_lcell_comb ix7605z7095(
// Equation(s):
// nx7605z1 = (!u_uart_reg_RxRDYi_aq & ((nx7605z2) # ((reg_q_8__dup_16_aq) # (!nx18416z4))))

	.dataa(u_uart_reg_RxRDYi_aq),
	.datab(nx7605z2),
	.datac(nx18416z4),
	.datad(reg_q_8__dup_16_aq),
	.cin(gnd),
	.combout(nx7605z1),
	.cout());
// synopsys translate_off
defparam ix7605z7095.lut_mask = 16'h5545;
defparam ix7605z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N26
fiftyfivenm_lcell_comb write_fifo_reg_rd_en_delayed_afeeder(
// Equation(s):
// write_fifo_reg_rd_en_delayed_afeeder_combout = nx7605z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx7605z1),
	.cin(gnd),
	.combout(write_fifo_reg_rd_en_delayed_afeeder_combout),
	.cout());
// synopsys translate_off
defparam write_fifo_reg_rd_en_delayed_afeeder.lut_mask = 16'hFF00;
defparam write_fifo_reg_rd_en_delayed_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N27
dffeas write_fifo_reg_rd_en_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(write_fifo_reg_rd_en_delayed_afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_rd_en_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_rd_en_delayed.is_wysiwyg = "true";
defparam write_fifo_reg_rd_en_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N12
fiftyfivenm_lcell_comb ix37156z7101(
// Equation(s):
// nx37156z7 = (pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(nx37156z7),
	.cout());
// synopsys translate_off
defparam ix37156z7101.lut_mask = 16'hF000;
defparam ix37156z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N6
fiftyfivenm_lcell_comb ix1262_fadd(
// Equation(s):
// inc_d_1__dup_1283 = (reg_q_1__dup_97_aq & (!nx56034z1)) # (!reg_q_1__dup_97_aq & ((nx56034z1) # (GND)))
// nx40460z1 = CARRY((!nx56034z1) # (!reg_q_1__dup_97_aq))

	.dataa(reg_q_1__dup_97_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56034z1),
	.combout(inc_d_1__dup_1283),
	.cout(nx40460z1));
// synopsys translate_off
defparam ix1262_fadd.lut_mask = 16'h5A5F;
defparam ix1262_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N8
fiftyfivenm_lcell_comb ix1264_fadd(
// Equation(s):
// inc_d_2__dup_1285 = (reg_q_2__dup_96_aq & (nx40460z1 $ (GND))) # (!reg_q_2__dup_96_aq & (!nx40460z1 & VCC))
// nx40650z1 = CARRY((reg_q_2__dup_96_aq & !nx40460z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_96_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx40460z1),
	.combout(inc_d_2__dup_1285),
	.cout(nx40650z1));
// synopsys translate_off
defparam ix1264_fadd.lut_mask = 16'hC30C;
defparam ix1264_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y13_N9
dffeas reg_q_2__dup_96(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1285),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_96_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_96.is_wysiwyg = "true";
defparam reg_q_2__dup_96.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N10
fiftyfivenm_lcell_comb ix1266_fadd(
// Equation(s):
// inc_d_3__dup_1287 = (reg_q_3__dup_95_aq & (!nx40650z1)) # (!reg_q_3__dup_95_aq & ((nx40650z1) # (GND)))
// nx56224z1 = CARRY((!nx40650z1) # (!reg_q_3__dup_95_aq))

	.dataa(reg_q_3__dup_95_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx40650z1),
	.combout(inc_d_3__dup_1287),
	.cout(nx56224z1));
// synopsys translate_off
defparam ix1266_fadd.lut_mask = 16'h5A5F;
defparam ix1266_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y13_N11
dffeas reg_q_3__dup_95(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1287),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_95_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_95.is_wysiwyg = "true";
defparam reg_q_3__dup_95.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N12
fiftyfivenm_lcell_comb ix1268_fadd(
// Equation(s):
// inc_d_4__dup_1289 = (reg_q_4__dup_94_aq & (nx56224z1 $ (GND))) # (!reg_q_4__dup_94_aq & (!nx56224z1 & VCC))
// nx24319z1 = CARRY((reg_q_4__dup_94_aq & !nx56224z1))

	.dataa(reg_q_4__dup_94_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56224z1),
	.combout(inc_d_4__dup_1289),
	.cout(nx24319z1));
// synopsys translate_off
defparam ix1268_fadd.lut_mask = 16'hA50A;
defparam ix1268_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y13_N13
dffeas reg_q_4__dup_94(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1289),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_94_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_94.is_wysiwyg = "true";
defparam reg_q_4__dup_94.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N14
fiftyfivenm_lcell_comb ix1270_fadd(
// Equation(s):
// inc_d_5__dup_1291 = (reg_q_5__dup_93_aq & (!nx24319z1)) # (!reg_q_5__dup_93_aq & ((nx24319z1) # (GND)))
// nx25643z1 = CARRY((!nx24319z1) # (!reg_q_5__dup_93_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_93_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx24319z1),
	.combout(inc_d_5__dup_1291),
	.cout(nx25643z1));
// synopsys translate_off
defparam ix1270_fadd.lut_mask = 16'h3C3F;
defparam ix1270_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y13_N15
dffeas reg_q_5__dup_93(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1291),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_93_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_93.is_wysiwyg = "true";
defparam reg_q_5__dup_93.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N16
fiftyfivenm_lcell_comb ix1272_fadd(
// Equation(s):
// inc_d_6__dup_1293 = (reg_q_6__dup_92_aq & (nx25643z1 $ (GND))) # (!reg_q_6__dup_92_aq & (!nx25643z1 & VCC))
// nx17856z1 = CARRY((reg_q_6__dup_92_aq & !nx25643z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_92_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx25643z1),
	.combout(inc_d_6__dup_1293),
	.cout(nx17856z1));
// synopsys translate_off
defparam ix1272_fadd.lut_mask = 16'hC30C;
defparam ix1272_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y13_N17
dffeas reg_q_6__dup_92(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1293),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_92_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_92.is_wysiwyg = "true";
defparam reg_q_6__dup_92.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N18
fiftyfivenm_lcell_comb ix1273_fadd(
// Equation(s):
// inc_d_7__dup_1295 = reg_q_7__dup_91_aq $ (nx17856z1)

	.dataa(gnd),
	.datab(reg_q_7__dup_91_aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx17856z1),
	.combout(inc_d_7__dup_1295),
	.cout());
// synopsys translate_off
defparam ix1273_fadd.lut_mask = 16'h3C3C;
defparam ix1273_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y13_N19
dffeas reg_q_7__dup_91(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1295),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_91_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_91.is_wysiwyg = "true";
defparam reg_q_7__dup_91.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N30
fiftyfivenm_lcell_comb ix25399z7100(
// Equation(s):
// nx25399z6 = (reg_q_3__dup_95_aq & (reg_q_7__dup_91_aq & (reg_q_2__dup_96_aq & reg_q_6__dup_92_aq)))

	.dataa(reg_q_3__dup_95_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_2__dup_96_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx25399z6),
	.cout());
// synopsys translate_off
defparam ix25399z7100.lut_mask = 16'h8000;
defparam ix25399z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N18
fiftyfivenm_lcell_comb ix37156z7098(
// Equation(s):
// nx37156z4 = (reg_q_0__dup_98_aq & reg_q_1__dup_97_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx37156z4),
	.cout());
// synopsys translate_off
defparam ix37156z7098.lut_mask = 16'hF000;
defparam ix37156z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N20
fiftyfivenm_lcell_comb ix37156z7097(
// Equation(s):
// nx37156z3 = (reg_q_4__dup_94_aq & (nx25399z6 & (reg_q_5__dup_93_aq & nx37156z4)))

	.dataa(reg_q_4__dup_94_aq),
	.datab(nx25399z6),
	.datac(reg_q_5__dup_93_aq),
	.datad(nx37156z4),
	.cin(gnd),
	.combout(nx37156z3),
	.cout());
// synopsys translate_off
defparam ix37156z7097.lut_mask = 16'h8000;
defparam ix37156z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N12
fiftyfivenm_lcell_comb ix1222_fadd(
// Equation(s):
// inc_d_0__dup_1243 = reg_q_0__dup_90_aq $ (VCC)
// nx30952z1 = CARRY(reg_q_0__dup_90_aq)

	.dataa(reg_q_0__dup_90_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1243),
	.cout(nx30952z1));
// synopsys translate_off
defparam ix1222_fadd.lut_mask = 16'h55AA;
defparam ix1222_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N12
fiftyfivenm_lcell_comb ix38412z7095(
// Equation(s):
// nx38412z1 = ((write_fifo_reg_rd_en_delayed_aq & pb_a0_a_ainput_o)) # (!reset_n_ainput_o)

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx38412z1),
	.cout());
// synopsys translate_off
defparam ix38412z7095.lut_mask = 16'hA0FF;
defparam ix38412z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y15_N13
dffeas reg_q_0__dup_90(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_1243),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_90_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_90.is_wysiwyg = "true";
defparam reg_q_0__dup_90.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N14
fiftyfivenm_lcell_comb ix1224_fadd(
// Equation(s):
// inc_d_1__dup_1245 = (reg_q_1__dup_89_aq & (!nx30952z1)) # (!reg_q_1__dup_89_aq & ((nx30952z1) # (GND)))
// nx50158z1 = CARRY((!nx30952z1) # (!reg_q_1__dup_89_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_89_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx30952z1),
	.combout(inc_d_1__dup_1245),
	.cout(nx50158z1));
// synopsys translate_off
defparam ix1224_fadd.lut_mask = 16'h3C3F;
defparam ix1224_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N15
dffeas reg_q_1__dup_89(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_1245),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_89_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_89.is_wysiwyg = "true";
defparam reg_q_1__dup_89.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N16
fiftyfivenm_lcell_comb ix1226_fadd(
// Equation(s):
// inc_d_2__dup_1247 = (reg_q_2__dup_88_aq & (nx50158z1 $ (GND))) # (!reg_q_2__dup_88_aq & (!nx50158z1 & VCC))
// nx196z1 = CARRY((reg_q_2__dup_88_aq & !nx50158z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_88_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50158z1),
	.combout(inc_d_2__dup_1247),
	.cout(nx196z1));
// synopsys translate_off
defparam ix1226_fadd.lut_mask = 16'hC30C;
defparam ix1226_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N17
dffeas reg_q_2__dup_88(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1247),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_88_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_88.is_wysiwyg = "true";
defparam reg_q_2__dup_88.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N18
fiftyfivenm_lcell_comb ix1228_fadd(
// Equation(s):
// inc_d_3__dup_1249 = (reg_q_3__dup_87_aq & (!nx196z1)) # (!reg_q_3__dup_87_aq & ((nx196z1) # (GND)))
// nx33827z1 = CARRY((!nx196z1) # (!reg_q_3__dup_87_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_87_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx196z1),
	.combout(inc_d_3__dup_1249),
	.cout(nx33827z1));
// synopsys translate_off
defparam ix1228_fadd.lut_mask = 16'h3C3F;
defparam ix1228_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N19
dffeas reg_q_3__dup_87(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1249),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_87_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_87.is_wysiwyg = "true";
defparam reg_q_3__dup_87.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N28
fiftyfivenm_lcell_comb ix37156z7100(
// Equation(s):
// nx37156z6 = (reg_q_3__dup_87_aq & reg_q_2__dup_88_aq)

	.dataa(gnd),
	.datab(reg_q_3__dup_87_aq),
	.datac(gnd),
	.datad(reg_q_2__dup_88_aq),
	.cin(gnd),
	.combout(nx37156z6),
	.cout());
// synopsys translate_off
defparam ix37156z7100.lut_mask = 16'hCC00;
defparam ix37156z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N20
fiftyfivenm_lcell_comb ix1230_fadd(
// Equation(s):
// inc_d_4__dup_1251 = (reg_q_4__dup_86_aq & (nx33827z1 $ (GND))) # (!reg_q_4__dup_86_aq & (!nx33827z1 & VCC))
// nx16135z1 = CARRY((reg_q_4__dup_86_aq & !nx33827z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_86_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33827z1),
	.combout(inc_d_4__dup_1251),
	.cout(nx16135z1));
// synopsys translate_off
defparam ix1230_fadd.lut_mask = 16'hC30C;
defparam ix1230_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N21
dffeas reg_q_4__dup_86(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1251),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_86_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_86.is_wysiwyg = "true";
defparam reg_q_4__dup_86.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N22
fiftyfivenm_lcell_comb ix1232_fadd(
// Equation(s):
// inc_d_5__dup_1253 = (reg_q_5__dup_85_aq & (!nx16135z1)) # (!reg_q_5__dup_85_aq & ((nx16135z1) # (GND)))
// nx561z1 = CARRY((!nx16135z1) # (!reg_q_5__dup_85_aq))

	.dataa(reg_q_5__dup_85_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16135z1),
	.combout(inc_d_5__dup_1253),
	.cout(nx561z1));
// synopsys translate_off
defparam ix1232_fadd.lut_mask = 16'h5A5F;
defparam ix1232_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N23
dffeas reg_q_5__dup_85(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1253),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_85_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_85.is_wysiwyg = "true";
defparam reg_q_5__dup_85.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N24
fiftyfivenm_lcell_comb ix1234_fadd(
// Equation(s):
// inc_d_6__dup_1255 = (reg_q_6__dup_84_aq & (nx561z1 $ (GND))) # (!reg_q_6__dup_84_aq & (!nx561z1 & VCC))
// nx58310z1 = CARRY((reg_q_6__dup_84_aq & !nx561z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_84_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx561z1),
	.combout(inc_d_6__dup_1255),
	.cout(nx58310z1));
// synopsys translate_off
defparam ix1234_fadd.lut_mask = 16'hC30C;
defparam ix1234_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N25
dffeas reg_q_6__dup_84(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1255),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_84_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_84.is_wysiwyg = "true";
defparam reg_q_6__dup_84.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N26
fiftyfivenm_lcell_comb ix1235_fadd(
// Equation(s):
// inc_d_7__dup_1257 = reg_q_7__dup_83_aq $ (nx58310z1)

	.dataa(reg_q_7__dup_83_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx58310z1),
	.combout(inc_d_7__dup_1257),
	.cout());
// synopsys translate_off
defparam ix1235_fadd.lut_mask = 16'h5A5A;
defparam ix1235_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y15_N27
dffeas reg_q_7__dup_83(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1257),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx38412z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_83_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_83.is_wysiwyg = "true";
defparam reg_q_7__dup_83.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N2
fiftyfivenm_lcell_comb ix25399z7099(
// Equation(s):
// nx25399z5 = (reg_q_7__dup_83_aq & (reg_q_6__dup_84_aq & (reg_q_5__dup_85_aq & reg_q_4__dup_86_aq)))

	.dataa(reg_q_7__dup_83_aq),
	.datab(reg_q_6__dup_84_aq),
	.datac(reg_q_5__dup_85_aq),
	.datad(reg_q_4__dup_86_aq),
	.cin(gnd),
	.combout(nx25399z5),
	.cout());
// synopsys translate_off
defparam ix25399z7099.lut_mask = 16'h8000;
defparam ix25399z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N30
fiftyfivenm_lcell_comb ix37156z7099(
// Equation(s):
// nx37156z5 = (((!nx25399z5) # (!reg_q_1__dup_89_aq)) # (!nx37156z6)) # (!reg_q_0__dup_90_aq)

	.dataa(reg_q_0__dup_90_aq),
	.datab(nx37156z6),
	.datac(reg_q_1__dup_89_aq),
	.datad(nx25399z5),
	.cin(gnd),
	.combout(nx37156z5),
	.cout());
// synopsys translate_off
defparam ix37156z7099.lut_mask = 16'h7FFF;
defparam ix37156z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N24
fiftyfivenm_lcell_comb ix37156z7096(
// Equation(s):
// nx37156z2 = (u_kirsch_reg_o_mode_0__aq) # (!u_kirsch_reg_o_mode_1__aq)

	.dataa(u_kirsch_reg_o_mode_1__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_o_mode_0__aq),
	.cin(gnd),
	.combout(nx37156z2),
	.cout());
// synopsys translate_off
defparam ix37156z7096.lut_mask = 16'hFF55;
defparam ix37156z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N0
fiftyfivenm_lcell_comb ix37156z7095(
// Equation(s):
// nx37156z1 = (nx37156z7 & (nx37156z3 & (!nx37156z5 & !nx37156z2))) # (!nx37156z7 & (((nx37156z2))))

	.dataa(nx37156z7),
	.datab(nx37156z3),
	.datac(nx37156z5),
	.datad(nx37156z2),
	.cin(gnd),
	.combout(nx37156z1),
	.cout());
// synopsys translate_off
defparam ix37156z7095.lut_mask = 16'h5508;
defparam ix37156z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N1
dffeas u_kirsch_reg_o_mode_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx37156z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_mode_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_mode_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_mode_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N10
fiftyfivenm_lcell_comb ix38153z7095(
// Equation(s):
// nx38153z1 = ((u_kirsch_reg_o_mode_1__aq) # ((pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq))) # (!u_kirsch_reg_o_mode_0__aq)

	.dataa(pb_a0_a_ainput_o),
	.datab(u_kirsch_reg_o_mode_0__aq),
	.datac(u_kirsch_reg_o_mode_1__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(nx38153z1),
	.cout());
// synopsys translate_off
defparam ix38153z7095.lut_mask = 16'hFBF3;
defparam ix38153z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N11
dffeas u_kirsch_reg_o_mode_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx38153z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_mode_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_mode_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_mode_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N8
fiftyfivenm_lcell_comb ix25399z7102(
// Equation(s):
// nx25399z8 = (((!u_kirsch_reg_o_mode_0__aq) # (!reg_q_5__dup_93_aq)) # (!reg_q_4__dup_94_aq)) # (!u_kirsch_reg_o_mode_1__aq)

	.dataa(u_kirsch_reg_o_mode_1__aq),
	.datab(reg_q_4__dup_94_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(u_kirsch_reg_o_mode_0__aq),
	.cin(gnd),
	.combout(nx25399z8),
	.cout());
// synopsys translate_off
defparam ix25399z7102.lut_mask = 16'h7FFF;
defparam ix25399z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N26
fiftyfivenm_lcell_comb ix25399z7101(
// Equation(s):
// nx25399z7 = (((nx25399z8) # (!reg_q_1__dup_97_aq)) # (!nx25399z6)) # (!reg_q_0__dup_98_aq)

	.dataa(reg_q_0__dup_98_aq),
	.datab(nx25399z6),
	.datac(nx25399z8),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx25399z7),
	.cout());
// synopsys translate_off
defparam ix25399z7101.lut_mask = 16'hF7FF;
defparam ix25399z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N8
fiftyfivenm_lcell_comb ix25399z7098(
// Equation(s):
// nx25399z4 = (reg_q_0__dup_90_aq & (reg_q_3__dup_87_aq & (reg_q_1__dup_89_aq & reg_q_2__dup_88_aq)))

	.dataa(reg_q_0__dup_90_aq),
	.datab(reg_q_3__dup_87_aq),
	.datac(reg_q_1__dup_89_aq),
	.datad(reg_q_2__dup_88_aq),
	.cin(gnd),
	.combout(nx25399z4),
	.cout());
// synopsys translate_off
defparam ix25399z7098.lut_mask = 16'h8000;
defparam ix25399z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N28
fiftyfivenm_lcell_comb ix25399z7097(
// Equation(s):
// nx25399z3 = (reg_q_4__dup_94_aq & (reg_q_5__dup_93_aq & (reg_q_0__dup_98_aq & reg_q_1__dup_97_aq)))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_5__dup_93_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx25399z3),
	.cout());
// synopsys translate_off
defparam ix25399z7097.lut_mask = 16'h8000;
defparam ix25399z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N6
fiftyfivenm_lcell_comb ix25399z7096(
// Equation(s):
// nx25399z2 = (nx25399z4 & (nx25399z5 & ((!nx25399z3) # (!nx25399z6))))

	.dataa(nx25399z4),
	.datab(nx25399z6),
	.datac(nx25399z5),
	.datad(nx25399z3),
	.cin(gnd),
	.combout(nx25399z2),
	.cout());
// synopsys translate_off
defparam ix25399z7096.lut_mask = 16'h20A0;
defparam ix25399z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N30
fiftyfivenm_lcell_comb ix25399z7095(
// Equation(s):
// nx25399z1 = ((nx37156z7 & ((nx25399z2) # (!nx25399z7)))) # (!reset_n_ainput_o)

	.dataa(nx37156z7),
	.datab(reset_n_ainput_o),
	.datac(nx25399z7),
	.datad(nx25399z2),
	.cin(gnd),
	.combout(nx25399z1),
	.cout());
// synopsys translate_off
defparam ix25399z7095.lut_mask = 16'hBB3B;
defparam ix25399z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y13_N5
dffeas reg_q_0__dup_98(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_1281),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_98_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_98.is_wysiwyg = "true";
defparam reg_q_0__dup_98.power_up = "low";
// synopsys translate_on

// Location: FF_X17_Y13_N7
dffeas reg_q_1__dup_97(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_1283),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx25399z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_97_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_97.is_wysiwyg = "true";
defparam reg_q_1__dup_97.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N4
fiftyfivenm_lcell_comb ix18625z7096(
// Equation(s):
// nx18625z2 = (reg_q_1__dup_97_aq & ((reg_q_0__dup_98_aq & ((!reg_q_3__dup_95_aq))) # (!reg_q_0__dup_98_aq & (!reg_q_2__dup_96_aq)))) # (!reg_q_1__dup_97_aq & ((reg_q_0__dup_98_aq $ (!reg_q_3__dup_95_aq)) # (!reg_q_2__dup_96_aq)))

	.dataa(reg_q_1__dup_97_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_3__dup_95_aq),
	.cin(gnd),
	.combout(nx18625z2),
	.cout());
// synopsys translate_off
defparam ix18625z7096.lut_mask = 16'h53B7;
defparam ix18625z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N24
fiftyfivenm_lcell_comb ix18625z7097(
// Equation(s):
// nx18625z3 = (reg_q_7__dup_91_aq & ((reg_q_4__dup_94_aq & (!reg_q_5__dup_93_aq)) # (!reg_q_4__dup_94_aq & ((!reg_q_6__dup_92_aq))))) # (!reg_q_7__dup_91_aq & ((reg_q_4__dup_94_aq $ (!reg_q_5__dup_93_aq)) # (!reg_q_6__dup_92_aq)))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx18625z3),
	.cout());
// synopsys translate_off
defparam ix18625z7097.lut_mask = 16'h297F;
defparam ix18625z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N14
fiftyfivenm_lcell_comb ix18625z7095(
// Equation(s):
// nx18625z1 = (reg_q_10__dup_50_aq & ((nx18625z3))) # (!reg_q_10__dup_50_aq & (nx18625z2))

	.dataa(gnd),
	.datab(reg_q_10__dup_50_aq),
	.datac(nx18625z2),
	.datad(nx18625z3),
	.cin(gnd),
	.combout(nx18625z1),
	.cout());
// synopsys translate_off
defparam ix18625z7095.lut_mask = 16'hFC30;
defparam ix18625z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N20
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_prev_char0_en_a0(
// Equation(s):
// u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout = !reg_q_10__dup_50_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_10__dup_50_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_char0_en_a0.lut_mask = 16'h0F0F;
defparam u_seg7_u_dual_seg7_reg_prev_char0_en_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N21
dffeas u_seg7_u_dual_seg7_reg_prev_char0_en(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_prev_char0_en_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_char0_en.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_prev_char0_en.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N28
fiftyfivenm_lcell_comb ix10356z7096(
// Equation(s):
// u_seg7_u_dual_seg7_load_reg = u_seg7_u_dual_seg7_reg_prev_char0_en_aq $ (!reg_q_10__dup_50_aq)

	.dataa(gnd),
	.datab(u_seg7_u_dual_seg7_reg_prev_char0_en_aq),
	.datac(reg_q_10__dup_50_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_load_reg),
	.cout());
// synopsys translate_off
defparam ix10356z7096.lut_mask = 16'hC3C3;
defparam ix10356z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N15
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx18625z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N16
fiftyfivenm_lcell_comb ix28027z7096(
// Equation(s):
// nx28027z2 = (reg_q_1__dup_97_aq & ((reg_q_3__dup_95_aq) # ((reg_q_2__dup_96_aq & !reg_q_0__dup_98_aq)))) # (!reg_q_1__dup_97_aq & ((reg_q_2__dup_96_aq $ (reg_q_3__dup_95_aq)) # (!reg_q_0__dup_98_aq)))

	.dataa(reg_q_1__dup_97_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_3__dup_95_aq),
	.cin(gnd),
	.combout(nx28027z2),
	.cout());
// synopsys translate_off
defparam ix28027z7096.lut_mask = 16'hBF4D;
defparam ix28027z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N28
fiftyfivenm_lcell_comb ix28027z7097(
// Equation(s):
// nx28027z3 = (reg_q_6__dup_92_aq & ((reg_q_7__dup_91_aq $ (!reg_q_5__dup_93_aq)) # (!reg_q_4__dup_94_aq))) # (!reg_q_6__dup_92_aq & ((reg_q_7__dup_91_aq) # ((!reg_q_4__dup_94_aq & !reg_q_5__dup_93_aq))))

	.dataa(reg_q_6__dup_92_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_4__dup_94_aq),
	.datad(reg_q_5__dup_93_aq),
	.cin(gnd),
	.combout(nx28027z3),
	.cout());
// synopsys translate_off
defparam ix28027z7097.lut_mask = 16'hCE6F;
defparam ix28027z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N18
fiftyfivenm_lcell_comb ix28027z7095(
// Equation(s):
// nx28027z1 = (reg_q_10__dup_50_aq & ((nx28027z3))) # (!reg_q_10__dup_50_aq & (nx28027z2))

	.dataa(gnd),
	.datab(nx28027z2),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx28027z3),
	.cin(gnd),
	.combout(nx28027z1),
	.cout());
// synopsys translate_off
defparam ix28027z7095.lut_mask = 16'hFC0C;
defparam ix28027z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N19
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx28027z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N2
fiftyfivenm_lcell_comb ix51544z7096(
// Equation(s):
// nx51544z2 = (reg_q_0__dup_98_aq & ((reg_q_3__dup_95_aq) # (reg_q_2__dup_96_aq $ (reg_q_1__dup_97_aq)))) # (!reg_q_0__dup_98_aq & ((reg_q_1__dup_97_aq) # (reg_q_3__dup_95_aq $ (reg_q_2__dup_96_aq))))

	.dataa(reg_q_3__dup_95_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx51544z2),
	.cout());
// synopsys translate_off
defparam ix51544z7096.lut_mask = 16'hBFE6;
defparam ix51544z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N20
fiftyfivenm_lcell_comb ix51544z7097(
// Equation(s):
// nx51544z3 = (reg_q_4__dup_94_aq & ((reg_q_7__dup_91_aq) # (reg_q_5__dup_93_aq $ (reg_q_6__dup_92_aq)))) # (!reg_q_4__dup_94_aq & ((reg_q_5__dup_93_aq) # (reg_q_7__dup_91_aq $ (reg_q_6__dup_92_aq))))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx51544z3),
	.cout());
// synopsys translate_off
defparam ix51544z7097.lut_mask = 16'hDBFC;
defparam ix51544z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N8
fiftyfivenm_lcell_comb ix51544z7095(
// Equation(s):
// nx51544z1 = (reg_q_10__dup_50_aq & ((nx51544z3))) # (!reg_q_10__dup_50_aq & (nx51544z2))

	.dataa(nx51544z2),
	.datab(reg_q_10__dup_50_aq),
	.datac(nx51544z3),
	.datad(gnd),
	.cin(gnd),
	.combout(nx51544z1),
	.cout());
// synopsys translate_off
defparam ix51544z7095.lut_mask = 16'hE2E2;
defparam ix51544z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N9
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51544z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N4
fiftyfivenm_lcell_comb ix1140_fadd(
// Equation(s):
// inc_d_0__dup_1171 = reg_q_0__dup_82_aq $ (VCC)
// nx7939z1 = CARRY(reg_q_0__dup_82_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_82_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1171),
	.cout(nx7939z1));
// synopsys translate_off
defparam ix1140_fadd.lut_mask = 16'h33CC;
defparam ix1140_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N5
dffeas reg_q_0__dup_82(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_1171),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_82_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_82.is_wysiwyg = "true";
defparam reg_q_0__dup_82.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N6
fiftyfivenm_lcell_comb ix1142_fadd(
// Equation(s):
// inc_d_1__dup_1173 = (reg_q_1__dup_81_aq & (!nx7939z1)) # (!reg_q_1__dup_81_aq & ((nx7939z1) # (GND)))
// nx57901z1 = CARRY((!nx7939z1) # (!reg_q_1__dup_81_aq))

	.dataa(reg_q_1__dup_81_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx7939z1),
	.combout(inc_d_1__dup_1173),
	.cout(nx57901z1));
// synopsys translate_off
defparam ix1142_fadd.lut_mask = 16'h5A5F;
defparam ix1142_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N7
dffeas reg_q_1__dup_81(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_1173),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_81_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_81.is_wysiwyg = "true";
defparam reg_q_1__dup_81.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N8
fiftyfivenm_lcell_comb ix1144_fadd(
// Equation(s):
// inc_d_2__dup_1175 = (reg_q_2__dup_80_aq & (nx57901z1 $ (GND))) # (!reg_q_2__dup_80_aq & (!nx57901z1 & VCC))
// nx42327z1 = CARRY((reg_q_2__dup_80_aq & !nx57901z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_80_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx57901z1),
	.combout(inc_d_2__dup_1175),
	.cout(nx42327z1));
// synopsys translate_off
defparam ix1144_fadd.lut_mask = 16'hC30C;
defparam ix1144_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N9
dffeas reg_q_2__dup_80(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1175),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_80_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_80.is_wysiwyg = "true";
defparam reg_q_2__dup_80.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y12_N0
fiftyfivenm_lcell_comb ix57349z7097(
// Equation(s):
// nx57349z3 = (!reg_q_1__dup_81_aq & !reg_q_2__dup_80_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_1__dup_81_aq),
	.datad(reg_q_2__dup_80_aq),
	.cin(gnd),
	.combout(nx57349z3),
	.cout());
// synopsys translate_off
defparam ix57349z7097.lut_mask = 16'h000F;
defparam ix57349z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N10
fiftyfivenm_lcell_comb ix1146_fadd(
// Equation(s):
// inc_d_3__dup_1177 = (reg_q_3__dup_79_aq & (!nx42327z1)) # (!reg_q_3__dup_79_aq & ((nx42327z1) # (GND)))
// nx38783z1 = CARRY((!nx42327z1) # (!reg_q_3__dup_79_aq))

	.dataa(reg_q_3__dup_79_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42327z1),
	.combout(inc_d_3__dup_1177),
	.cout(nx38783z1));
// synopsys translate_off
defparam ix1146_fadd.lut_mask = 16'h5A5F;
defparam ix1146_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N11
dffeas reg_q_3__dup_79(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1177),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_79_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_79.is_wysiwyg = "true";
defparam reg_q_3__dup_79.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N12
fiftyfivenm_lcell_comb ix1148_fadd(
// Equation(s):
// inc_d_4__dup_1179 = (reg_q_4__dup_78_aq & (nx38783z1 $ (GND))) # (!reg_q_4__dup_78_aq & (!nx38783z1 & VCC))
// nx6878z1 = CARRY((reg_q_4__dup_78_aq & !nx38783z1))

	.dataa(reg_q_4__dup_78_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx38783z1),
	.combout(inc_d_4__dup_1179),
	.cout(nx6878z1));
// synopsys translate_off
defparam ix1148_fadd.lut_mask = 16'hA50A;
defparam ix1148_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N13
dffeas reg_q_4__dup_78(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1179),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_78_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_78.is_wysiwyg = "true";
defparam reg_q_4__dup_78.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N14
fiftyfivenm_lcell_comb ix1150_fadd(
// Equation(s):
// inc_d_5__dup_1181 = (reg_q_5__dup_77_aq & (!nx6878z1)) # (!reg_q_5__dup_77_aq & ((nx6878z1) # (GND)))
// nx22452z1 = CARRY((!nx6878z1) # (!reg_q_5__dup_77_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_77_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx6878z1),
	.combout(inc_d_5__dup_1181),
	.cout(nx22452z1));
// synopsys translate_off
defparam ix1150_fadd.lut_mask = 16'h3C3F;
defparam ix1150_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N15
dffeas reg_q_5__dup_77(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1181),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_77_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_77.is_wysiwyg = "true";
defparam reg_q_5__dup_77.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N16
fiftyfivenm_lcell_comb ix1152_fadd(
// Equation(s):
// inc_d_6__dup_1183 = (reg_q_6__dup_76_aq & (nx22452z1 $ (GND))) # (!reg_q_6__dup_76_aq & (!nx22452z1 & VCC))
// nx38026z1 = CARRY((reg_q_6__dup_76_aq & !nx22452z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_76_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx22452z1),
	.combout(inc_d_6__dup_1183),
	.cout(nx38026z1));
// synopsys translate_off
defparam ix1152_fadd.lut_mask = 16'hC30C;
defparam ix1152_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N17
dffeas reg_q_6__dup_76(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1183),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_76_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_76.is_wysiwyg = "true";
defparam reg_q_6__dup_76.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N18
fiftyfivenm_lcell_comb ix1154_fadd(
// Equation(s):
// inc_d_7__dup_1185 = (reg_q_7__dup_75_aq & (!nx38026z1)) # (!reg_q_7__dup_75_aq & ((nx38026z1) # (GND)))
// nx11936z1 = CARRY((!nx38026z1) # (!reg_q_7__dup_75_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_75_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx38026z1),
	.combout(inc_d_7__dup_1185),
	.cout(nx11936z1));
// synopsys translate_off
defparam ix1154_fadd.lut_mask = 16'h3C3F;
defparam ix1154_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N19
dffeas reg_q_7__dup_75(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1185),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_75_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_75.is_wysiwyg = "true";
defparam reg_q_7__dup_75.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N20
fiftyfivenm_lcell_comb ix1156_fadd(
// Equation(s):
// inc_d_8__dup_1187 = (reg_q_8__dup_74_aq & (nx11936z1 $ (GND))) # (!reg_q_8__dup_74_aq & (!nx11936z1 & VCC))
// nx47250z1 = CARRY((reg_q_8__dup_74_aq & !nx11936z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_74_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx11936z1),
	.combout(inc_d_8__dup_1187),
	.cout(nx47250z1));
// synopsys translate_off
defparam ix1156_fadd.lut_mask = 16'hC30C;
defparam ix1156_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N21
dffeas reg_q_8__dup_74(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_1187),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_74_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_74.is_wysiwyg = "true";
defparam reg_q_8__dup_74.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N22
fiftyfivenm_lcell_comb ix38_fadd(
// Equation(s):
// inc_d_9__dup_1189 = (reg_q_9__dup_73_aq & (!nx47250z1)) # (!reg_q_9__dup_73_aq & ((nx47250z1) # (GND)))
// nx61898z1 = CARRY((!nx47250z1) # (!reg_q_9__dup_73_aq))

	.dataa(reg_q_9__dup_73_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47250z1),
	.combout(inc_d_9__dup_1189),
	.cout(nx61898z1));
// synopsys translate_off
defparam ix38_fadd.lut_mask = 16'h5A5F;
defparam ix38_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N23
dffeas reg_q_9__dup_73(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_1189),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_73_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_73.is_wysiwyg = "true";
defparam reg_q_9__dup_73.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N24
fiftyfivenm_lcell_comb ix1158_fadd(
// Equation(s):
// inc_d_10__dup_1191 = (reg_q_10__dup_72_aq & (nx61898z1 $ (GND))) # (!reg_q_10__dup_72_aq & (!nx61898z1 & VCC))
// nx54111z1 = CARRY((reg_q_10__dup_72_aq & !nx61898z1))

	.dataa(gnd),
	.datab(reg_q_10__dup_72_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx61898z1),
	.combout(inc_d_10__dup_1191),
	.cout(nx54111z1));
// synopsys translate_off
defparam ix1158_fadd.lut_mask = 16'hC30C;
defparam ix1158_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N25
dffeas reg_q_10__dup_72(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_1191),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_72_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_72.is_wysiwyg = "true";
defparam reg_q_10__dup_72.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N26
fiftyfivenm_lcell_comb ix1159_fadd(
// Equation(s):
// inc_d_11_ = reg_q_11__aq $ (nx54111z1)

	.dataa(reg_q_11__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx54111z1),
	.combout(inc_d_11_),
	.cout());
// synopsys translate_off
defparam ix1159_fadd.lut_mask = 16'h5A5A;
defparam ix1159_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y16_N27
dffeas reg_q_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_11_),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_11_.is_wysiwyg = "true";
defparam reg_q_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N0
fiftyfivenm_lcell_comb ix57349z7096(
// Equation(s):
// nx57349z2 = (!reg_q_11__aq & (!reg_q_10__dup_72_aq & (!reg_q_9__dup_73_aq & !reg_q_3__dup_79_aq)))

	.dataa(reg_q_11__aq),
	.datab(reg_q_10__dup_72_aq),
	.datac(reg_q_9__dup_73_aq),
	.datad(reg_q_3__dup_79_aq),
	.cin(gnd),
	.combout(nx57349z2),
	.cout());
// synopsys translate_off
defparam ix57349z7096.lut_mask = 16'h0001;
defparam ix57349z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N0
fiftyfivenm_lcell_comb ix57349z7099(
// Equation(s):
// nx57349z5 = (u_uart_reg_RxDivisor_4__aq & (reg_q_4__dup_78_aq & (reg_q_8__dup_74_aq & reg_q_0__dup_82_aq)))

	.dataa(u_uart_reg_RxDivisor_4__aq),
	.datab(reg_q_4__dup_78_aq),
	.datac(reg_q_8__dup_74_aq),
	.datad(reg_q_0__dup_82_aq),
	.cin(gnd),
	.combout(nx57349z5),
	.cout());
// synopsys translate_off
defparam ix57349z7099.lut_mask = 16'h8000;
defparam ix57349z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N2
fiftyfivenm_lcell_comb ix57349z7100(
// Equation(s):
// nx57349z6 = (!reg_q_4__dup_78_aq & (!u_uart_reg_RxDivisor_4__aq & (!reg_q_0__dup_82_aq & !reg_q_8__dup_74_aq)))

	.dataa(reg_q_4__dup_78_aq),
	.datab(u_uart_reg_RxDivisor_4__aq),
	.datac(reg_q_0__dup_82_aq),
	.datad(reg_q_8__dup_74_aq),
	.cin(gnd),
	.combout(nx57349z6),
	.cout());
// synopsys translate_off
defparam ix57349z7100.lut_mask = 16'h0001;
defparam ix57349z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N28
fiftyfivenm_lcell_comb ix57349z7098(
// Equation(s):
// nx57349z4 = (reg_q_7__dup_75_aq & (nx57349z5 & (reg_q_5__dup_77_aq))) # (!reg_q_7__dup_75_aq & (((!reg_q_5__dup_77_aq & nx57349z6))))

	.dataa(nx57349z5),
	.datab(reg_q_7__dup_75_aq),
	.datac(reg_q_5__dup_77_aq),
	.datad(nx57349z6),
	.cin(gnd),
	.combout(nx57349z4),
	.cout());
// synopsys translate_off
defparam ix57349z7098.lut_mask = 16'h8380;
defparam ix57349z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N30
fiftyfivenm_lcell_comb ix57349z7095(
// Equation(s):
// nx57349z1 = (nx57349z3 & (!reg_q_6__dup_76_aq & (nx57349z2 & nx57349z4)))

	.dataa(nx57349z3),
	.datab(reg_q_6__dup_76_aq),
	.datac(nx57349z2),
	.datad(nx57349z4),
	.cin(gnd),
	.combout(nx57349z1),
	.cout());
// synopsys translate_off
defparam ix57349z7095.lut_mask = 16'h2000;
defparam ix57349z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N31
dffeas u_uart_reg_TopTx(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57349z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TopTx_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TopTx.is_wysiwyg = "true";
defparam u_uart_reg_TopTx.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N28
fiftyfivenm_lcell_comb ix8356z7095(
// Equation(s):
// nx8356z1 = u_uart_reg_TxFSM_1__aq $ (((u_uart_reg_TxFSM_0__aq & u_uart_reg_TopTx_aq)))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_reg_TxFSM_1__aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx8356z1),
	.cout());
// synopsys translate_off
defparam ix8356z7095.lut_mask = 16'h5AF0;
defparam ix8356z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N29
dffeas u_uart_reg_TxFSM_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx8356z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TxFSM_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TxFSM_1_.is_wysiwyg = "true";
defparam u_uart_reg_TxFSM_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N22
fiftyfivenm_lcell_comb ix61431z7096(
// Equation(s):
// nx61431z2 = (!u_uart_reg_TxFSM_1__aq & u_uart_reg_TopTx_aq)

	.dataa(gnd),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(gnd),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx61431z2),
	.cout());
// synopsys translate_off
defparam ix61431z7096.lut_mask = 16'h3300;
defparam ix61431z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N0
fiftyfivenm_lcell_comb ix59437z7095(
// Equation(s):
// nx59437z1 = ((!u_uart_reg_TxFSM_1__aq & u_uart_reg_TopTx_aq)) # (!u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)

	.dataa(gnd),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx59437z1),
	.cout());
// synopsys translate_off
defparam ix59437z7095.lut_mask = 16'h3F0F;
defparam ix59437z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N2
fiftyfivenm_lcell_comb ix59437z7096(
// Equation(s):
// nx59437z2 = (u_uart_reg_TopTx_aq & (u_uart_reg_TxFSM_0__aq $ (u_uart_reg_TxFSM_1__aq)))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(gnd),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx59437z2),
	.cout());
// synopsys translate_off
defparam ix59437z7096.lut_mask = 16'h6600;
defparam ix59437z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N1
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59437z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_0_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N4
fiftyfivenm_lcell_comb ix60434z7095(
// Equation(s):
// nx60434z1 = (u_uart_reg_TopTx_aq & (u_uart_reg_TxFSM_1__aq & (u_uart_modgen_counter_TxBitCnt_reg_q_1__aq $ (!u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)))) # (!u_uart_reg_TopTx_aq & ((u_uart_modgen_counter_TxBitCnt_reg_q_1__aq $ 
// (!u_uart_modgen_counter_TxBitCnt_reg_q_0__aq))))

	.dataa(u_uart_reg_TopTx_aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx60434z1),
	.cout());
// synopsys translate_off
defparam ix60434z7095.lut_mask = 16'hD00D;
defparam ix60434z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N5
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60434z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_1_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N8
fiftyfivenm_lcell_comb ix61431z7095(
// Equation(s):
// nx61431z1 = (!nx61431z2 & (u_uart_modgen_counter_TxBitCnt_reg_q_2__aq $ (((!u_uart_modgen_counter_TxBitCnt_reg_q_1__aq & !u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)))))

	.dataa(nx61431z2),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx61431z1),
	.cout());
// synopsys translate_off
defparam ix61431z7095.lut_mask = 16'h5041;
defparam ix61431z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N9
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx61431z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_2_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N26
fiftyfivenm_lcell_comb ix62428z7096(
// Equation(s):
// nx62428z2 = (u_uart_modgen_counter_TxBitCnt_reg_q_1__aq) # (u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx62428z2),
	.cout());
// synopsys translate_off
defparam ix62428z7096.lut_mask = 16'hFFF0;
defparam ix62428z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N20
fiftyfivenm_lcell_comb ix62428z7095(
// Equation(s):
// nx62428z1 = (nx61431z2) # (u_uart_modgen_counter_TxBitCnt_reg_q_3__aq $ (((!nx62428z2 & !u_uart_modgen_counter_TxBitCnt_reg_q_2__aq))))

	.dataa(nx62428z2),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.datad(nx61431z2),
	.cin(gnd),
	.combout(nx62428z1),
	.cout());
// synopsys translate_off
defparam ix62428z7095.lut_mask = 16'hFFE1;
defparam ix62428z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N21
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62428z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_3_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N30
fiftyfivenm_lcell_comb ix7359z7096(
// Equation(s):
// nx7359z2 = (u_uart_modgen_counter_TxBitCnt_reg_q_2__aq) # ((u_uart_modgen_counter_TxBitCnt_reg_q_3__aq) # ((u_uart_modgen_counter_TxBitCnt_reg_q_1__aq) # (!u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)))

	.dataa(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx7359z2),
	.cout());
// synopsys translate_off
defparam ix7359z7096.lut_mask = 16'hFEFF;
defparam ix7359z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N22
fiftyfivenm_lcell_comb ix26352z7099(
// Equation(s):
// nx26352z5 = (reg_q_2__dup_96_aq) # ((reg_q_5__dup_93_aq) # ((reg_q_4__dup_94_aq) # (reg_q_1__dup_97_aq)))

	.dataa(reg_q_2__dup_96_aq),
	.datab(reg_q_5__dup_93_aq),
	.datac(reg_q_4__dup_94_aq),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx26352z5),
	.cout());
// synopsys translate_off
defparam ix26352z7099.lut_mask = 16'hFFFE;
defparam ix26352z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N20
fiftyfivenm_lcell_comb ix26352z7100(
// Equation(s):
// nx26352z6 = (reg_q_3__dup_95_aq) # ((reg_q_7__dup_91_aq) # (reg_q_6__dup_92_aq))

	.dataa(reg_q_3__dup_95_aq),
	.datab(gnd),
	.datac(reg_q_7__dup_91_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx26352z6),
	.cout());
// synopsys translate_off
defparam ix26352z7100.lut_mask = 16'hFFFA;
defparam ix26352z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N12
fiftyfivenm_lcell_comb ix26352z7098(
// Equation(s):
// nx26352z4 = (write_fifo_reg_rd_en_delayed_aq & (pb_a0_a_ainput_o & ((nx26352z5) # (nx26352z6))))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(pb_a0_a_ainput_o),
	.datac(nx26352z5),
	.datad(nx26352z6),
	.cin(gnd),
	.combout(nx26352z4),
	.cout());
// synopsys translate_off
defparam ix26352z7098.lut_mask = 16'h8880;
defparam ix26352z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N10
fiftyfivenm_lcell_comb ix26352z7097(
// Equation(s):
// nx26352z3 = (!reg_q_7__dup_83_aq & (!reg_q_6__dup_84_aq & (!reg_q_5__dup_85_aq & !reg_q_4__dup_86_aq)))

	.dataa(reg_q_7__dup_83_aq),
	.datab(reg_q_6__dup_84_aq),
	.datac(reg_q_5__dup_85_aq),
	.datad(reg_q_4__dup_86_aq),
	.cin(gnd),
	.combout(nx26352z3),
	.cout());
// synopsys translate_off
defparam ix26352z7097.lut_mask = 16'h0001;
defparam ix26352z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N4
fiftyfivenm_lcell_comb ix26352z7096(
// Equation(s):
// nx26352z2 = (nx26352z3 & (!reg_q_2__dup_88_aq & (!reg_q_1__dup_89_aq & !reg_q_3__dup_87_aq)))

	.dataa(nx26352z3),
	.datab(reg_q_2__dup_88_aq),
	.datac(reg_q_1__dup_89_aq),
	.datad(reg_q_3__dup_87_aq),
	.cin(gnd),
	.combout(nx26352z2),
	.cout());
// synopsys translate_off
defparam ix26352z7096.lut_mask = 16'h0002;
defparam ix26352z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N6
fiftyfivenm_lcell_comb ix26352z7095(
// Equation(s):
// nx26352z1 = (nx26352z4 & !nx26352z2)

	.dataa(nx26352z4),
	.datab(gnd),
	.datac(nx26352z2),
	.datad(gnd),
	.cin(gnd),
	.combout(nx26352z1),
	.cout());
// synopsys translate_off
defparam ix26352z7095.lut_mask = 16'h0A0A;
defparam ix26352z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N0
fiftyfivenm_lcell_comb u_kirsch_reg_v_1__afeeder(
// Equation(s):
// u_kirsch_reg_v_1__afeeder_combout = nx26352z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx26352z1),
	.cin(gnd),
	.combout(u_kirsch_reg_v_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_v_1__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_v_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y15_N1
dffeas u_kirsch_reg_v_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_v_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y15_N31
dffeas u_kirsch_reg_v_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_v_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y15_N1
dffeas u_kirsch_reg_v_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_v_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y15_N9
dffeas u_kirsch_reg_v_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_v_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y15_N31
dffeas u_kirsch_reg_v_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_v_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y15_N5
dffeas u_kirsch_reg_v_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_v_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y15_N27
dffeas u_kirsch_reg_v_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_v_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_v_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_v_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_v_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y12_N4
fiftyfivenm_lcell_comb u_kirsch_reg_o_valid_afeeder(
// Equation(s):
// u_kirsch_reg_o_valid_afeeder_combout = u_kirsch_reg_v_7__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_v_7__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_o_valid_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_o_valid_afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_o_valid_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y12_N5
dffeas u_kirsch_reg_o_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_o_valid_afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_valid.is_wysiwyg = "true";
defparam u_kirsch_reg_o_valid.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y12_N26
fiftyfivenm_lcell_comb ix11963z7096(
// Equation(s):
// nx11963z1 = (pb_a0_a_ainput_o & (u_kirsch_reg_o_valid_aq)) # (!pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq)))

	.dataa(pb_a0_a_ainput_o),
	.datab(gnd),
	.datac(u_kirsch_reg_o_valid_aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(nx11963z1),
	.cout());
// synopsys translate_off
defparam ix11963z7096.lut_mask = 16'hF5A0;
defparam ix11963z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N26
fiftyfivenm_lcell_comb ix64502z7096(
// Equation(s):
// nx64502z2 = (reg_wait_for_tx_valid_aq & reg_tx_valid_aq)

	.dataa(reg_wait_for_tx_valid_aq),
	.datab(gnd),
	.datac(reg_tx_valid_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx64502z2),
	.cout());
// synopsys translate_off
defparam ix64502z7096.lut_mask = 16'hA0A0;
defparam ix64502z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N22
fiftyfivenm_lcell_comb ix64502z7095(
// Equation(s):
// nx64502z1 = (nx64502z2) # ((reg_rb_rd_en_aq & (!nx11963z1 & !reg_wait_for_tx_valid_delayed_aq)))

	.dataa(nx64502z2),
	.datab(reg_rb_rd_en_aq),
	.datac(nx11963z1),
	.datad(reg_wait_for_tx_valid_delayed_aq),
	.cin(gnd),
	.combout(nx64502z1),
	.cout());
// synopsys translate_off
defparam ix64502z7095.lut_mask = 16'hAAAE;
defparam ix64502z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N23
dffeas reg_wait_for_tx_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64502z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_wait_for_tx_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_wait_for_tx_valid.is_wysiwyg = "true";
defparam reg_wait_for_tx_valid.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y12_N9
dffeas reg_wait_for_tx_valid_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_wait_for_tx_valid_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_wait_for_tx_valid_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_wait_for_tx_valid_delayed.is_wysiwyg = "true";
defparam reg_wait_for_tx_valid_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y10_N2
fiftyfivenm_lcell_comb ix40197z7095(
// Equation(s):
// nx40197z1 = (!nx11963z1 & (nx15004z2 & (reg_rb_rd_en_aq & !reg_wait_for_tx_valid_delayed_aq)))

	.dataa(nx11963z1),
	.datab(nx15004z2),
	.datac(reg_rb_rd_en_aq),
	.datad(reg_wait_for_tx_valid_delayed_aq),
	.cin(gnd),
	.combout(nx40197z1),
	.cout());
// synopsys translate_off
defparam ix40197z7095.lut_mask = 16'h0040;
defparam ix40197z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N18
fiftyfivenm_lcell_comb reg_q_0__dup_49_a_wirecell(
// Equation(s):
// reg_q_0__dup_49_a_wirecell_combout = !reg_q_0__dup_49_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_0__dup_49_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(reg_q_0__dup_49_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam reg_q_0__dup_49_a_wirecell.lut_mask = 16'h0F0F;
defparam reg_q_0__dup_49_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N6
fiftyfivenm_lcell_comb ix1018_fadd(
// Equation(s):
// incdec_mux_3_dup_116_dup_1039 = (nx40197z1 & ((reg_q_3__dup_46_aq & (nx56487z1 & VCC)) # (!reg_q_3__dup_46_aq & (!nx56487z1)))) # (!nx40197z1 & ((reg_q_3__dup_46_aq & (!nx56487z1)) # (!reg_q_3__dup_46_aq & ((nx56487z1) # (GND)))))
// nx24582z1 = CARRY((nx40197z1 & (!reg_q_3__dup_46_aq & !nx56487z1)) # (!nx40197z1 & ((!nx56487z1) # (!reg_q_3__dup_46_aq))))

	.dataa(nx40197z1),
	.datab(reg_q_3__dup_46_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56487z1),
	.combout(incdec_mux_3_dup_116_dup_1039),
	.cout(nx24582z1));
// synopsys translate_off
defparam ix1018_fadd.lut_mask = 16'h9617;
defparam ix1018_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N8
fiftyfivenm_lcell_comb ix1020_fadd(
// Equation(s):
// incdec_mux_4_dup_117_dup_1041 = ((nx40197z1 $ (reg_q_4__dup_45_aq $ (!nx24582z1)))) # (GND)
// nx40156z1 = CARRY((nx40197z1 & ((reg_q_4__dup_45_aq) # (!nx24582z1))) # (!nx40197z1 & (reg_q_4__dup_45_aq & !nx24582z1)))

	.dataa(nx40197z1),
	.datab(reg_q_4__dup_45_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx24582z1),
	.combout(incdec_mux_4_dup_117_dup_1041),
	.cout(nx40156z1));
// synopsys translate_off
defparam ix1020_fadd.lut_mask = 16'h698E;
defparam ix1020_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N9
dffeas reg_q_4__dup_45(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_4_dup_117_dup_1041),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_45_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_45.is_wysiwyg = "true";
defparam reg_q_4__dup_45.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N26
fiftyfivenm_lcell_comb ix20415z7098(
// Equation(s):
// nx20415z3 = (reg_q_3__dup_46_aq) # ((reg_q_4__dup_45_aq) # ((reg_q_2__dup_47_aq) # (reg_q_1__dup_48_aq)))

	.dataa(reg_q_3__dup_46_aq),
	.datab(reg_q_4__dup_45_aq),
	.datac(reg_q_2__dup_47_aq),
	.datad(reg_q_1__dup_48_aq),
	.cin(gnd),
	.combout(nx20415z3),
	.cout());
// synopsys translate_off
defparam ix20415z7098.lut_mask = 16'hFFFE;
defparam ix20415z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N10
fiftyfivenm_lcell_comb ix1022_fadd(
// Equation(s):
// incdec_mux_5_dup_118_dup_1043 = (nx40197z1 & ((reg_q_5__dup_44_aq & (nx40156z1 & VCC)) # (!reg_q_5__dup_44_aq & (!nx40156z1)))) # (!nx40197z1 & ((reg_q_5__dup_44_aq & (!nx40156z1)) # (!reg_q_5__dup_44_aq & ((nx40156z1) # (GND)))))
// nx55730z1 = CARRY((nx40197z1 & (!reg_q_5__dup_44_aq & !nx40156z1)) # (!nx40197z1 & ((!nx40156z1) # (!reg_q_5__dup_44_aq))))

	.dataa(nx40197z1),
	.datab(reg_q_5__dup_44_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx40156z1),
	.combout(incdec_mux_5_dup_118_dup_1043),
	.cout(nx55730z1));
// synopsys translate_off
defparam ix1022_fadd.lut_mask = 16'h9617;
defparam ix1022_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N11
dffeas reg_q_5__dup_44(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_5_dup_118_dup_1043),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_44_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_44.is_wysiwyg = "true";
defparam reg_q_5__dup_44.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N12
fiftyfivenm_lcell_comb ix1024_fadd(
// Equation(s):
// incdec_mux_6_dup_119_dup_1045 = ((nx40197z1 $ (reg_q_6__dup_43_aq $ (!nx55730z1)))) # (GND)
// nx59768z1 = CARRY((nx40197z1 & ((reg_q_6__dup_43_aq) # (!nx55730z1))) # (!nx40197z1 & (reg_q_6__dup_43_aq & !nx55730z1)))

	.dataa(nx40197z1),
	.datab(reg_q_6__dup_43_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55730z1),
	.combout(incdec_mux_6_dup_119_dup_1045),
	.cout(nx59768z1));
// synopsys translate_off
defparam ix1024_fadd.lut_mask = 16'h698E;
defparam ix1024_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N13
dffeas reg_q_6__dup_43(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_6_dup_119_dup_1045),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_43_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_43.is_wysiwyg = "true";
defparam reg_q_6__dup_43.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N14
fiftyfivenm_lcell_comb ix1026_fadd(
// Equation(s):
// incdec_mux_7_dup_120_dup_1047 = (nx40197z1 & ((reg_q_7__dup_42_aq & (nx59768z1 & VCC)) # (!reg_q_7__dup_42_aq & (!nx59768z1)))) # (!nx40197z1 & ((reg_q_7__dup_42_aq & (!nx59768z1)) # (!reg_q_7__dup_42_aq & ((nx59768z1) # (GND)))))
// nx51981z1 = CARRY((nx40197z1 & (!reg_q_7__dup_42_aq & !nx59768z1)) # (!nx40197z1 & ((!nx59768z1) # (!reg_q_7__dup_42_aq))))

	.dataa(nx40197z1),
	.datab(reg_q_7__dup_42_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59768z1),
	.combout(incdec_mux_7_dup_120_dup_1047),
	.cout(nx51981z1));
// synopsys translate_off
defparam ix1026_fadd.lut_mask = 16'h9617;
defparam ix1026_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N15
dffeas reg_q_7__dup_42(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_7_dup_120_dup_1047),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_42_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_42.is_wysiwyg = "true";
defparam reg_q_7__dup_42.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N16
fiftyfivenm_lcell_comb ix1027_fadd(
// Equation(s):
// incdec_mux_8_dup_121_dup_1049 = reg_q_8__dup_41_aq $ (nx51981z1 $ (!nx40197z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_41_aq),
	.datac(gnd),
	.datad(nx40197z1),
	.cin(nx51981z1),
	.combout(incdec_mux_8_dup_121_dup_1049),
	.cout());
// synopsys translate_off
defparam ix1027_fadd.lut_mask = 16'h3CC3;
defparam ix1027_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N17
dffeas reg_q_8__dup_41(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_8_dup_121_dup_1049),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_41_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_41.is_wysiwyg = "true";
defparam reg_q_8__dup_41.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N28
fiftyfivenm_lcell_comb ix20415z7099(
// Equation(s):
// nx20415z4 = (reg_q_5__dup_44_aq) # (((reg_q_7__dup_42_aq) # (reg_q_6__dup_43_aq)) # (!reg_q_8__dup_41_aq))

	.dataa(reg_q_5__dup_44_aq),
	.datab(reg_q_8__dup_41_aq),
	.datac(reg_q_7__dup_42_aq),
	.datad(reg_q_6__dup_43_aq),
	.cin(gnd),
	.combout(nx20415z4),
	.cout());
// synopsys translate_off
defparam ix20415z7099.lut_mask = 16'hFFFB;
defparam ix20415z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y10_N24
fiftyfivenm_lcell_comb ix20415z7097(
// Equation(s):
// nx20415z2 = (nx11963z1 & ((nx20415z3) # ((reg_q_0__dup_49_aq) # (nx20415z4))))

	.dataa(nx20415z3),
	.datab(reg_q_0__dup_49_aq),
	.datac(nx20415z4),
	.datad(nx11963z1),
	.cin(gnd),
	.combout(nx20415z2),
	.cout());
// synopsys translate_off
defparam ix20415z7097.lut_mask = 16'hFE00;
defparam ix20415z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y10_N0
fiftyfivenm_lcell_comb ix20415z7096(
// Equation(s):
// nx20415z1 = (nx20415z2) # (((nx15004z2 & rb_rd_en_true)) # (!reset_n_ainput_o))

	.dataa(nx20415z2),
	.datab(nx15004z2),
	.datac(reset_n_ainput_o),
	.datad(rb_rd_en_true),
	.cin(gnd),
	.combout(nx20415z1),
	.cout());
// synopsys translate_off
defparam ix20415z7096.lut_mask = 16'hEFAF;
defparam ix20415z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y10_N19
dffeas reg_q_0__dup_49(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_q_0__dup_49_a_wirecell_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_49_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_49.is_wysiwyg = "true";
defparam reg_q_0__dup_49.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N0
fiftyfivenm_lcell_comb ix2403_fadd(
// Equation(s):
// nx40197z2 = CARRY(reg_q_0__dup_49_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_49_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx40197z2));
// synopsys translate_off
defparam ix2403_fadd.lut_mask = 16'h00CC;
defparam ix2403_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N2
fiftyfivenm_lcell_comb ix1014_fadd(
// Equation(s):
// incdec_mux_1_dup_114_dup_1035 = (nx40197z1 & ((reg_q_1__dup_48_aq & (nx40197z2 & VCC)) # (!reg_q_1__dup_48_aq & (!nx40197z2)))) # (!nx40197z1 & ((reg_q_1__dup_48_aq & (!nx40197z2)) # (!reg_q_1__dup_48_aq & ((nx40197z2) # (GND)))))
// nx24623z1 = CARRY((nx40197z1 & (!reg_q_1__dup_48_aq & !nx40197z2)) # (!nx40197z1 & ((!nx40197z2) # (!reg_q_1__dup_48_aq))))

	.dataa(nx40197z1),
	.datab(reg_q_1__dup_48_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx40197z2),
	.combout(incdec_mux_1_dup_114_dup_1035),
	.cout(nx24623z1));
// synopsys translate_off
defparam ix1014_fadd.lut_mask = 16'h9617;
defparam ix1014_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N3
dffeas reg_q_1__dup_48(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_1_dup_114_dup_1035),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_48_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_48.is_wysiwyg = "true";
defparam reg_q_1__dup_48.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N4
fiftyfivenm_lcell_comb ix1016_fadd(
// Equation(s):
// incdec_mux_2_dup_115_dup_1037 = ((nx40197z1 $ (reg_q_2__dup_47_aq $ (!nx24623z1)))) # (GND)
// nx56487z1 = CARRY((nx40197z1 & ((reg_q_2__dup_47_aq) # (!nx24623z1))) # (!nx40197z1 & (reg_q_2__dup_47_aq & !nx24623z1)))

	.dataa(nx40197z1),
	.datab(reg_q_2__dup_47_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx24623z1),
	.combout(incdec_mux_2_dup_115_dup_1037),
	.cout(nx56487z1));
// synopsys translate_off
defparam ix1016_fadd.lut_mask = 16'h698E;
defparam ix1016_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y10_N5
dffeas reg_q_2__dup_47(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_2_dup_115_dup_1037),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_47_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_47.is_wysiwyg = "true";
defparam reg_q_2__dup_47.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y10_N7
dffeas reg_q_3__dup_46(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_3_dup_116_dup_1039),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx20415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_46_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_46.is_wysiwyg = "true";
defparam reg_q_3__dup_46.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N30
fiftyfivenm_lcell_comb ix15004z7098(
// Equation(s):
// nx15004z4 = (reg_q_3__dup_46_aq) # ((reg_q_5__dup_44_aq) # ((reg_q_4__dup_45_aq) # (reg_q_6__dup_43_aq)))

	.dataa(reg_q_3__dup_46_aq),
	.datab(reg_q_5__dup_44_aq),
	.datac(reg_q_4__dup_45_aq),
	.datad(reg_q_6__dup_43_aq),
	.cin(gnd),
	.combout(nx15004z4),
	.cout());
// synopsys translate_off
defparam ix15004z7098.lut_mask = 16'hFFFE;
defparam ix15004z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N20
fiftyfivenm_lcell_comb ix15004z7097(
// Equation(s):
// nx15004z3 = (reg_q_1__dup_48_aq) # ((reg_q_2__dup_47_aq) # (reg_q_0__dup_49_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_48_aq),
	.datac(reg_q_2__dup_47_aq),
	.datad(reg_q_0__dup_49_aq),
	.cin(gnd),
	.combout(nx15004z3),
	.cout());
// synopsys translate_off
defparam ix15004z7097.lut_mask = 16'hFFFC;
defparam ix15004z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y10_N24
fiftyfivenm_lcell_comb ix15004z7096(
// Equation(s):
// nx15004z2 = (nx15004z4) # ((reg_q_8__dup_41_aq) # ((reg_q_7__dup_42_aq) # (nx15004z3)))

	.dataa(nx15004z4),
	.datab(reg_q_8__dup_41_aq),
	.datac(reg_q_7__dup_42_aq),
	.datad(nx15004z3),
	.cin(gnd),
	.combout(nx15004z2),
	.cout());
// synopsys translate_off
defparam ix15004z7096.lut_mask = 16'hFFFE;
defparam ix15004z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N14
fiftyfivenm_lcell_comb ix13251z7095(
// Equation(s):
// nx13251z1 = (u_uart_reg_TxFSM_0__aq) # ((u_uart_reg_TxFSM_1__aq) # (!reg_tx_valid_aq))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(gnd),
	.datac(reg_tx_valid_aq),
	.datad(u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx13251z1),
	.cout());
// synopsys translate_off
defparam ix13251z7095.lut_mask = 16'hFFAF;
defparam ix13251z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N15
dffeas u_uart_reg_TxBusy(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13251z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TxBusy_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TxBusy.is_wysiwyg = "true";
defparam u_uart_reg_TxBusy.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N20
fiftyfivenm_lcell_comb reg_tx_busy_delayed_afeeder(
// Equation(s):
// reg_tx_busy_delayed_afeeder_combout = u_uart_reg_TxBusy_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_TxBusy_aq),
	.cin(gnd),
	.combout(reg_tx_busy_delayed_afeeder_combout),
	.cout());
// synopsys translate_off
defparam reg_tx_busy_delayed_afeeder.lut_mask = 16'hFF00;
defparam reg_tx_busy_delayed_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N21
dffeas reg_tx_busy_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_tx_busy_delayed_afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_tx_busy_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_tx_busy_delayed.is_wysiwyg = "true";
defparam reg_tx_busy_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N24
fiftyfivenm_lcell_comb ix15004z7095(
// Equation(s):
// nx15004z1 = (nx15004z2 & (!u_uart_reg_TxBusy_aq & (!reg_rb_rd_en_aq & !reg_tx_busy_delayed_aq)))

	.dataa(nx15004z2),
	.datab(u_uart_reg_TxBusy_aq),
	.datac(reg_rb_rd_en_aq),
	.datad(reg_tx_busy_delayed_aq),
	.cin(gnd),
	.combout(nx15004z1),
	.cout());
// synopsys translate_off
defparam ix15004z7095.lut_mask = 16'h0002;
defparam ix15004z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N25
dffeas reg_rb_rd_en(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx15004z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_rb_rd_en_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_rb_rd_en.is_wysiwyg = "true";
defparam reg_rb_rd_en.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N2
fiftyfivenm_lcell_comb ix11963z7095(
// Equation(s):
// rb_rd_en_true = (reg_rb_rd_en_aq & (!nx11963z1 & !reg_wait_for_tx_valid_delayed_aq))

	.dataa(gnd),
	.datab(reg_rb_rd_en_aq),
	.datac(nx11963z1),
	.datad(reg_wait_for_tx_valid_delayed_aq),
	.cin(gnd),
	.combout(rb_rd_en_true),
	.cout());
// synopsys translate_off
defparam ix11963z7095.lut_mask = 16'h000C;
defparam ix11963z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N3
dffeas reg_rb_rd_en_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(rb_rd_en_true),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_rb_rd_en_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_rb_rd_en_delayed.is_wysiwyg = "true";
defparam reg_rb_rd_en_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y12_N18
fiftyfivenm_lcell_comb reg_rb_rd_en_delayed_a_wirecell(
// Equation(s):
// reg_rb_rd_en_delayed_a_wirecell_combout = !reg_rb_rd_en_delayed_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_rb_rd_en_delayed_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(reg_rb_rd_en_delayed_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam reg_rb_rd_en_delayed_a_wirecell.lut_mask = 16'h0F0F;
defparam reg_rb_rd_en_delayed_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y12_N19
dffeas reg_tx_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_rb_rd_en_delayed_a_wirecell_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_tx_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_tx_valid.is_wysiwyg = "true";
defparam reg_tx_valid.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N24
fiftyfivenm_lcell_comb ix7359z7097(
// Equation(s):
// nx7359z3 = (u_uart_reg_TxFSM_0__aq & (((!u_uart_reg_TopTx_aq)))) # (!u_uart_reg_TxFSM_0__aq & ((u_uart_reg_TxFSM_1__aq & ((!u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_1__aq & (reg_tx_valid_aq))))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(reg_tx_valid_aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx7359z3),
	.cout());
// synopsys translate_off
defparam ix7359z7097.lut_mask = 16'h10FE;
defparam ix7359z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N10
fiftyfivenm_lcell_comb ix7359z7095(
// Equation(s):
// nx7359z1 = (nx7359z3 & (((u_uart_reg_TxFSM_0__aq)))) # (!nx7359z3 & (!u_uart_reg_TxFSM_0__aq & ((!u_uart_reg_TxFSM_1__aq) # (!nx7359z2))))

	.dataa(nx7359z2),
	.datab(nx7359z3),
	.datac(u_uart_reg_TxFSM_0__aq),
	.datad(u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx7359z1),
	.cout());
// synopsys translate_off
defparam ix7359z7095.lut_mask = 16'hC1C3;
defparam ix7359z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N11
dffeas u_uart_reg_TxFSM_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx7359z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TxFSM_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TxFSM_0_.is_wysiwyg = "true";
defparam u_uart_reg_TxFSM_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N18
fiftyfivenm_lcell_comb ix17862z7097(
// Equation(s):
// nx17862z4 = (u_uart_reg_TxFSM_0__aq & ((u_uart_reg_TxFSM_1__aq) # ((!u_uart_reg_TopTx_aq)))) # (!u_uart_reg_TxFSM_0__aq & ((u_uart_reg_TxFSM_1__aq & ((!u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_1__aq & (reg_tx_valid_aq))))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(reg_tx_valid_aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx17862z4),
	.cout());
// synopsys translate_off
defparam ix17862z7097.lut_mask = 16'h98FE;
defparam ix17862z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N14
fiftyfivenm_lcell_comb ix39360z7098(
// Equation(s):
// b_1_ = (u_kirsch_reg_v_1__aq) # ((pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq))

	.dataa(gnd),
	.datab(pb_a0_a_ainput_o),
	.datac(write_fifo_reg_rd_en_delayed_aq),
	.datad(u_kirsch_reg_v_1__aq),
	.cin(gnd),
	.combout(b_1_),
	.cout());
// synopsys translate_off
defparam ix39360z7098.lut_mask = 16'hFFC0;
defparam ix39360z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N14
fiftyfivenm_lcell_comb ix48848z7096(
// Equation(s):
// nx48848z2 = (nx25399z5 & (pb_a0_a_ainput_o & (nx25399z4 & write_fifo_reg_rd_en_delayed_aq)))

	.dataa(nx25399z5),
	.datab(pb_a0_a_ainput_o),
	.datac(nx25399z4),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(nx48848z2),
	.cout());
// synopsys translate_off
defparam ix48848z7096.lut_mask = 16'h8000;
defparam ix48848z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N4
fiftyfivenm_lcell_comb ix46854z7095(
// Equation(s):
// nx46854z1 = (nx48848z2 & ((nx37156z3 & ((u_kirsch_reg_wr_en_2__aq))) # (!nx37156z3 & (u_kirsch_reg_wr_en_1__aq)))) # (!nx48848z2 & (((u_kirsch_reg_wr_en_2__aq))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(nx48848z2),
	.datac(u_kirsch_reg_wr_en_2__aq),
	.datad(nx37156z3),
	.cin(gnd),
	.combout(nx46854z1),
	.cout());
// synopsys translate_off
defparam ix46854z7095.lut_mask = 16'hF0B8;
defparam ix46854z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N5
dffeas u_kirsch_reg_wr_en_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46854z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_wr_en_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_wr_en_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_wr_en_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N2
fiftyfivenm_lcell_comb ix48848z7095(
// Equation(s):
// nx48848z1 = (nx48848z2 & ((nx37156z3 & ((u_kirsch_reg_wr_en_0__aq))) # (!nx37156z3 & (!u_kirsch_reg_wr_en_2__aq)))) # (!nx48848z2 & (((u_kirsch_reg_wr_en_0__aq))))

	.dataa(nx48848z2),
	.datab(u_kirsch_reg_wr_en_2__aq),
	.datac(u_kirsch_reg_wr_en_0__aq),
	.datad(nx37156z3),
	.cin(gnd),
	.combout(nx48848z1),
	.cout());
// synopsys translate_off
defparam ix48848z7095.lut_mask = 16'hF072;
defparam ix48848z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N3
dffeas u_kirsch_reg_wr_en_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx48848z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_wr_en_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_wr_en_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_wr_en_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N16
fiftyfivenm_lcell_comb ix47851z7095(
// Equation(s):
// nx47851z1 = (nx48848z2 & ((nx37156z3 & ((u_kirsch_reg_wr_en_1__aq))) # (!nx37156z3 & (!u_kirsch_reg_wr_en_0__aq)))) # (!nx48848z2 & (((u_kirsch_reg_wr_en_1__aq))))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(nx48848z2),
	.datac(u_kirsch_reg_wr_en_1__aq),
	.datad(nx37156z3),
	.cin(gnd),
	.combout(nx47851z1),
	.cout());
// synopsys translate_off
defparam ix47851z7095.lut_mask = 16'hF074;
defparam ix47851z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N17
dffeas u_kirsch_reg_wr_en_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx47851z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_wr_en_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_wr_en_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_wr_en_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N6
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_7__a0(
// Equation(s):
// u_uart_reg_Rx_Reg_7__a0_combout = !u_uart_reg_Rx_r_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_7__a0_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_7__a0.lut_mask = 16'h0F0F;
defparam u_uart_reg_Rx_Reg_7__a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N18
fiftyfivenm_lcell_comb ix44871z7096(
// Equation(s):
// nx44871z1 = (u_uart_reg_TopRx_aq & u_uart_reg_RxFSM_3__aq)

	.dataa(u_uart_reg_TopRx_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_RxFSM_3__aq),
	.cin(gnd),
	.combout(nx44871z1),
	.cout());
// synopsys translate_off
defparam ix44871z7096.lut_mask = 16'hAA00;
defparam ix44871z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N7
dffeas u_uart_reg_Rx_Reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_7__a0_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_7_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N16
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_6__afeeder(
// Equation(s):
// u_uart_reg_Rx_Reg_6__afeeder_combout = u_uart_reg_Rx_Reg_7__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_7__aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_6__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Rx_Reg_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N17
dffeas u_uart_reg_Rx_Reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_6__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_6_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N28
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_5__afeeder(
// Equation(s):
// u_uart_reg_Rx_Reg_5__afeeder_combout = u_uart_reg_Rx_Reg_6__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_6__aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_5__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Rx_Reg_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N29
dffeas u_uart_reg_Rx_Reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_5__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_5_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N22
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_4__afeeder(
// Equation(s):
// u_uart_reg_Rx_Reg_4__afeeder_combout = u_uart_reg_Rx_Reg_5__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_5__aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_4__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Rx_Reg_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N23
dffeas u_uart_reg_Rx_Reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_4__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_4_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N27
dffeas u_uart_reg_Rx_Reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_4__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_3_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N31
dffeas u_uart_reg_Rx_Reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_3__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_2_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N5
dffeas u_uart_reg_Rx_Reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_2__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_1_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N3
dffeas u_uart_reg_Rx_Reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_1__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_0_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N2
fiftyfivenm_lcell_comb u_uart_reg_Dout_0__afeeder(
// Equation(s):
// u_uart_reg_Dout_0__afeeder_combout = u_uart_reg_Rx_Reg_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(u_uart_reg_Rx_Reg_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_uart_reg_Dout_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_0__afeeder.lut_mask = 16'hF0F0;
defparam u_uart_reg_Dout_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N3
dffeas u_uart_reg_Dout_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_0__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_0_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N4
fiftyfivenm_lcell_comb ix875_fadd(
// Equation(s):
// inc_d_0__dup_894 = reg_q_0__dup_15_aq $ (VCC)
// nx48733z1 = CARRY(reg_q_0__dup_15_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_15_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_894),
	.cout(nx48733z1));
// synopsys translate_off
defparam ix875_fadd.lut_mask = 16'h33CC;
defparam ix875_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N0
fiftyfivenm_lcell_comb ix58143z7095(
// Equation(s):
// nx58143z1 = (nx7605z1) # (!reset_n_ainput_o)

	.dataa(gnd),
	.datab(gnd),
	.datac(reset_n_ainput_o),
	.datad(nx7605z1),
	.cin(gnd),
	.combout(nx58143z1),
	.cout());
// synopsys translate_off
defparam ix58143z7095.lut_mask = 16'hFF0F;
defparam ix58143z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N5
dffeas reg_q_0__dup_15(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_894),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_15_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_15.is_wysiwyg = "true";
defparam reg_q_0__dup_15.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N8
fiftyfivenm_lcell_comb ix840_fadd(
// Equation(s):
// inc_d_0__dup_858 = reg_q_0__dup_7_aq $ (VCC)
// nx17767z1 = CARRY(reg_q_0__dup_7_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_7_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_858),
	.cout(nx17767z1));
// synopsys translate_off
defparam ix840_fadd.lut_mask = 16'h33CC;
defparam ix840_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N30
fiftyfivenm_lcell_comb ix58151z7095(
// Equation(s):
// nx58151z1 = (u_uart_reg_RxRDYi_aq) # (!reset_n_ainput_o)

	.dataa(gnd),
	.datab(reset_n_ainput_o),
	.datac(gnd),
	.datad(u_uart_reg_RxRDYi_aq),
	.cin(gnd),
	.combout(nx58151z1),
	.cout());
// synopsys translate_off
defparam ix58151z7095.lut_mask = 16'hFF33;
defparam ix58151z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y12_N9
dffeas reg_q_0__dup_7(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_858),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_7_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_7.is_wysiwyg = "true";
defparam reg_q_0__dup_7.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N24
fiftyfivenm_lcell_comb ix49438z7102(
// Equation(s):
// write_fifo_pointer[0] = (u_uart_reg_RxRDYi_aq & ((reg_q_0__dup_7_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_0__dup_15_aq))

	.dataa(gnd),
	.datab(reg_q_0__dup_15_aq),
	.datac(reg_q_0__dup_7_aq),
	.datad(u_uart_reg_RxRDYi_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[0]),
	.cout());
// synopsys translate_off
defparam ix49438z7102.lut_mask = 16'hF0CC;
defparam ix49438z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N6
fiftyfivenm_lcell_comb ix877_fadd(
// Equation(s):
// inc_d_1__dup_896 = (reg_q_1__dup_14_aq & (!nx48733z1)) # (!reg_q_1__dup_14_aq & ((nx48733z1) # (GND)))
// nx33159z1 = CARRY((!nx48733z1) # (!reg_q_1__dup_14_aq))

	.dataa(reg_q_1__dup_14_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx48733z1),
	.combout(inc_d_1__dup_896),
	.cout(nx33159z1));
// synopsys translate_off
defparam ix877_fadd.lut_mask = 16'h5A5F;
defparam ix877_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N7
dffeas reg_q_1__dup_14(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_896),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_14_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_14.is_wysiwyg = "true";
defparam reg_q_1__dup_14.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N10
fiftyfivenm_lcell_comb ix842_fadd(
// Equation(s):
// inc_d_1__dup_860 = (reg_q_1__dup_6_aq & (!nx17767z1)) # (!reg_q_1__dup_6_aq & ((nx17767z1) # (GND)))
// nx33341z1 = CARRY((!nx17767z1) # (!reg_q_1__dup_6_aq))

	.dataa(reg_q_1__dup_6_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx17767z1),
	.combout(inc_d_1__dup_860),
	.cout(nx33341z1));
// synopsys translate_off
defparam ix842_fadd.lut_mask = 16'h5A5F;
defparam ix842_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N11
dffeas reg_q_1__dup_6(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_860),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_6_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_6.is_wysiwyg = "true";
defparam reg_q_1__dup_6.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N2
fiftyfivenm_lcell_comb ix49438z7101(
// Equation(s):
// write_fifo_pointer[1] = (u_uart_reg_RxRDYi_aq & ((reg_q_1__dup_6_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_1__dup_14_aq))

	.dataa(gnd),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(reg_q_1__dup_14_aq),
	.datad(reg_q_1__dup_6_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[1]),
	.cout());
// synopsys translate_off
defparam ix49438z7101.lut_mask = 16'hFC30;
defparam ix49438z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N8
fiftyfivenm_lcell_comb ix879_fadd(
// Equation(s):
// inc_d_2__dup_898 = (reg_q_2__dup_13_aq & (nx33159z1 $ (GND))) # (!reg_q_2__dup_13_aq & (!nx33159z1 & VCC))
// nx472z1 = CARRY((reg_q_2__dup_13_aq & !nx33159z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_13_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33159z1),
	.combout(inc_d_2__dup_898),
	.cout(nx472z1));
// synopsys translate_off
defparam ix879_fadd.lut_mask = 16'hC30C;
defparam ix879_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N9
dffeas reg_q_2__dup_13(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_898),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_13_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_13.is_wysiwyg = "true";
defparam reg_q_2__dup_13.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N12
fiftyfivenm_lcell_comb ix844_fadd(
// Equation(s):
// inc_d_2__dup_862 = (reg_q_2__dup_5_aq & (nx33341z1 $ (GND))) # (!reg_q_2__dup_5_aq & (!nx33341z1 & VCC))
// nx48915z1 = CARRY((reg_q_2__dup_5_aq & !nx33341z1))

	.dataa(reg_q_2__dup_5_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33341z1),
	.combout(inc_d_2__dup_862),
	.cout(nx48915z1));
// synopsys translate_off
defparam ix844_fadd.lut_mask = 16'hA50A;
defparam ix844_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N13
dffeas reg_q_2__dup_5(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_862),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_5_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_5.is_wysiwyg = "true";
defparam reg_q_2__dup_5.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N28
fiftyfivenm_lcell_comb ix49438z7100(
// Equation(s):
// write_fifo_pointer[2] = (u_uart_reg_RxRDYi_aq & ((reg_q_2__dup_5_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_2__dup_13_aq))

	.dataa(reg_q_2__dup_13_aq),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(gnd),
	.datad(reg_q_2__dup_5_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[2]),
	.cout());
// synopsys translate_off
defparam ix49438z7100.lut_mask = 16'hEE22;
defparam ix49438z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N14
fiftyfivenm_lcell_comb ix846_fadd(
// Equation(s):
// inc_d_3__dup_864 = (reg_q_3__dup_4_aq & (!nx48915z1)) # (!reg_q_3__dup_4_aq & ((nx48915z1) # (GND)))
// nx64489z1 = CARRY((!nx48915z1) # (!reg_q_3__dup_4_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_4_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx48915z1),
	.combout(inc_d_3__dup_864),
	.cout(nx64489z1));
// synopsys translate_off
defparam ix846_fadd.lut_mask = 16'h3C3F;
defparam ix846_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N15
dffeas reg_q_3__dup_4(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_864),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_4_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_4.is_wysiwyg = "true";
defparam reg_q_3__dup_4.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N10
fiftyfivenm_lcell_comb ix881_fadd(
// Equation(s):
// inc_d_3__dup_900 = (reg_q_3__dup_12_aq & (!nx472z1)) # (!reg_q_3__dup_12_aq & ((nx472z1) # (GND)))
// nx16046z1 = CARRY((!nx472z1) # (!reg_q_3__dup_12_aq))

	.dataa(reg_q_3__dup_12_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx472z1),
	.combout(inc_d_3__dup_900),
	.cout(nx16046z1));
// synopsys translate_off
defparam ix881_fadd.lut_mask = 16'h5A5F;
defparam ix881_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N11
dffeas reg_q_3__dup_12(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_900),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_12_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_12.is_wysiwyg = "true";
defparam reg_q_3__dup_12.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N28
fiftyfivenm_lcell_comb ix49438z7099(
// Equation(s):
// write_fifo_pointer[3] = (u_uart_reg_RxRDYi_aq & (reg_q_3__dup_4_aq)) # (!u_uart_reg_RxRDYi_aq & ((reg_q_3__dup_12_aq)))

	.dataa(gnd),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(reg_q_3__dup_4_aq),
	.datad(reg_q_3__dup_12_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[3]),
	.cout());
// synopsys translate_off
defparam ix49438z7099.lut_mask = 16'hF3C0;
defparam ix49438z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N12
fiftyfivenm_lcell_comb ix883_fadd(
// Equation(s):
// inc_d_4__dup_902 = (reg_q_4__dup_11_aq & (nx16046z1 $ (GND))) # (!reg_q_4__dup_11_aq & (!nx16046z1 & VCC))
// nx31620z1 = CARRY((reg_q_4__dup_11_aq & !nx16046z1))

	.dataa(reg_q_4__dup_11_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16046z1),
	.combout(inc_d_4__dup_902),
	.cout(nx31620z1));
// synopsys translate_off
defparam ix883_fadd.lut_mask = 16'hA50A;
defparam ix883_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N13
dffeas reg_q_4__dup_11(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_902),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_11_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_11.is_wysiwyg = "true";
defparam reg_q_4__dup_11.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N16
fiftyfivenm_lcell_comb ix848_fadd(
// Equation(s):
// inc_d_4__dup_866 = (reg_q_4__dup_3_aq & (nx64489z1 $ (GND))) # (!reg_q_4__dup_3_aq & (!nx64489z1 & VCC))
// nx32952z1 = CARRY((reg_q_4__dup_3_aq & !nx64489z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_3_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx64489z1),
	.combout(inc_d_4__dup_866),
	.cout(nx32952z1));
// synopsys translate_off
defparam ix848_fadd.lut_mask = 16'hC30C;
defparam ix848_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N17
dffeas reg_q_4__dup_3(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_866),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_3_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_3.is_wysiwyg = "true";
defparam reg_q_4__dup_3.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N6
fiftyfivenm_lcell_comb ix49438z7098(
// Equation(s):
// write_fifo_pointer[4] = (u_uart_reg_RxRDYi_aq & ((reg_q_4__dup_3_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_4__dup_11_aq))

	.dataa(reg_q_4__dup_11_aq),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(gnd),
	.datad(reg_q_4__dup_3_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[4]),
	.cout());
// synopsys translate_off
defparam ix49438z7098.lut_mask = 16'hEE22;
defparam ix49438z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N14
fiftyfivenm_lcell_comb ix885_fadd(
// Equation(s):
// inc_d_5__dup_904 = (reg_q_5__dup_10_aq & (!nx31620z1)) # (!reg_q_5__dup_10_aq & ((nx31620z1) # (GND)))
// nx47194z1 = CARRY((!nx31620z1) # (!reg_q_5__dup_10_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_10_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31620z1),
	.combout(inc_d_5__dup_904),
	.cout(nx47194z1));
// synopsys translate_off
defparam ix885_fadd.lut_mask = 16'h3C3F;
defparam ix885_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N15
dffeas reg_q_5__dup_10(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_904),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_10_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_10.is_wysiwyg = "true";
defparam reg_q_5__dup_10.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N18
fiftyfivenm_lcell_comb ix850_fadd(
// Equation(s):
// inc_d_5__dup_868 = (reg_q_5__dup_2_aq & (!nx32952z1)) # (!reg_q_5__dup_2_aq & ((nx32952z1) # (GND)))
// nx17378z1 = CARRY((!nx32952z1) # (!reg_q_5__dup_2_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_2_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx32952z1),
	.combout(inc_d_5__dup_868),
	.cout(nx17378z1));
// synopsys translate_off
defparam ix850_fadd.lut_mask = 16'h3C3F;
defparam ix850_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N19
dffeas reg_q_5__dup_2(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_868),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_2_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_2.is_wysiwyg = "true";
defparam reg_q_5__dup_2.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N0
fiftyfivenm_lcell_comb ix49438z7097(
// Equation(s):
// write_fifo_pointer[5] = (u_uart_reg_RxRDYi_aq & ((reg_q_5__dup_2_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_5__dup_10_aq))

	.dataa(reg_q_5__dup_10_aq),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(gnd),
	.datad(reg_q_5__dup_2_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[5]),
	.cout());
// synopsys translate_off
defparam ix49438z7097.lut_mask = 16'hEE22;
defparam ix49438z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N16
fiftyfivenm_lcell_comb ix887_fadd(
// Equation(s):
// inc_d_6__dup_906 = (reg_q_6__dup_9_aq & (nx47194z1 $ (GND))) # (!reg_q_6__dup_9_aq & (!nx47194z1 & VCC))
// nx10555z1 = CARRY((reg_q_6__dup_9_aq & !nx47194z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_9_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47194z1),
	.combout(inc_d_6__dup_906),
	.cout(nx10555z1));
// synopsys translate_off
defparam ix887_fadd.lut_mask = 16'hC30C;
defparam ix887_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N17
dffeas reg_q_6__dup_9(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_906),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_9_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_9.is_wysiwyg = "true";
defparam reg_q_6__dup_9.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N20
fiftyfivenm_lcell_comb ix852_fadd(
// Equation(s):
// inc_d_6__dup_870 = (reg_q_6__dup_1_aq & (nx17378z1 $ (GND))) # (!reg_q_6__dup_1_aq & (!nx17378z1 & VCC))
// nx9591z1 = CARRY((reg_q_6__dup_1_aq & !nx17378z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_1_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx17378z1),
	.combout(inc_d_6__dup_870),
	.cout(nx9591z1));
// synopsys translate_off
defparam ix852_fadd.lut_mask = 16'hC30C;
defparam ix852_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N21
dffeas reg_q_6__dup_1(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_870),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_1_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_1.is_wysiwyg = "true";
defparam reg_q_6__dup_1.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N26
fiftyfivenm_lcell_comb ix49438z7096(
// Equation(s):
// write_fifo_pointer[6] = (u_uart_reg_RxRDYi_aq & ((reg_q_6__dup_1_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_6__dup_9_aq))

	.dataa(gnd),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(reg_q_6__dup_9_aq),
	.datad(reg_q_6__dup_1_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[6]),
	.cout());
// synopsys translate_off
defparam ix49438z7096.lut_mask = 16'hFC30;
defparam ix49438z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N22
fiftyfivenm_lcell_comb ix853_fadd(
// Equation(s):
// inc_d_7__dup_872 = reg_q_7__dup_0_aq $ (nx9591z1)

	.dataa(reg_q_7__dup_0_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx9591z1),
	.combout(inc_d_7__dup_872),
	.cout());
// synopsys translate_off
defparam ix853_fadd.lut_mask = 16'h5A5A;
defparam ix853_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y12_N23
dffeas reg_q_7__dup_0(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_872),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_0_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_0.is_wysiwyg = "true";
defparam reg_q_7__dup_0.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N18
fiftyfivenm_lcell_comb ix888_fadd(
// Equation(s):
// inc_d_7__dup_908 = reg_q_7__dup_8_aq $ (nx10555z1)

	.dataa(gnd),
	.datab(reg_q_7__dup_8_aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx10555z1),
	.combout(inc_d_7__dup_908),
	.cout());
// synopsys translate_off
defparam ix888_fadd.lut_mask = 16'h3C3C;
defparam ix888_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y12_N19
dffeas reg_q_7__dup_8(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_908),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_8_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_8.is_wysiwyg = "true";
defparam reg_q_7__dup_8.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N4
fiftyfivenm_lcell_comb ix49438z7095(
// Equation(s):
// write_fifo_pointer[7] = (u_uart_reg_RxRDYi_aq & (reg_q_7__dup_0_aq)) # (!u_uart_reg_RxRDYi_aq & ((reg_q_7__dup_8_aq)))

	.dataa(gnd),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(reg_q_7__dup_0_aq),
	.datad(reg_q_7__dup_8_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[7]),
	.cout());
// synopsys translate_off
defparam ix49438z7095.lut_mask = 16'hF3C0;
defparam ix49438z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N28
fiftyfivenm_lcell_comb u_uart_reg_Dout_1__afeeder(
// Equation(s):
// u_uart_reg_Dout_1__afeeder_combout = u_uart_reg_Rx_Reg_1__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_1__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_1__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N29
dffeas u_uart_reg_Dout_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_1__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_1_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N1
dffeas u_uart_reg_Dout_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_2__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_2_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N9
dffeas u_uart_reg_Dout_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_3__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_3_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N21
dffeas u_uart_reg_Dout_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_4__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_4_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N24
fiftyfivenm_lcell_comb u_uart_reg_Dout_5__afeeder(
// Equation(s):
// u_uart_reg_Dout_5__afeeder_combout = u_uart_reg_Rx_Reg_5__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_5__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_5__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N25
dffeas u_uart_reg_Dout_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_5__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_5_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N10
fiftyfivenm_lcell_comb u_uart_reg_Dout_6__afeeder(
// Equation(s):
// u_uart_reg_Dout_6__afeeder_combout = u_uart_reg_Rx_Reg_6__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_6__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_6__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N11
dffeas u_uart_reg_Dout_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_6__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_6_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N30
fiftyfivenm_lcell_comb u_uart_reg_Dout_7__afeeder(
// Equation(s):
// u_uart_reg_Dout_7__afeeder_combout = u_uart_reg_Rx_Reg_7__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_7__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_7__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N31
dffeas u_uart_reg_Dout_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_7__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_7_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_7_.power_up = "low";
// synopsys translate_on

// Location: M9K_X26_Y15_N0
fiftyfivenm_ram_block write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(u_uart_reg_RxRDYi_aq),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,u_uart_reg_Dout_7__aq,u_uart_reg_Dout_6__aq,u_uart_reg_Dout_5__aq,u_uart_reg_Dout_4__aq,u_uart_reg_Dout_3__aq,u_uart_reg_Dout_2__aq,u_uart_reg_Dout_1__aq,u_uart_reg_Dout_0__aq}),
	.portaaddr({write_fifo_pointer[7],write_fifo_pointer[6],write_fifo_pointer[5],write_fifo_pointer[4],write_fifo_pointer[3],write_fifo_pointer[2],write_fifo_pointer[1],write_fifo_pointer[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:write_fifo_mem_mem|altsyncram:ix64056z29481|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: FF_X20_Y14_N25
dffeas write_fifo_reg_q_saved_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_0_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N24
fiftyfivenm_lcell_comb ix22500z7098(
// Equation(s):
// k_i_pixel[0] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_0__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_0__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[0]),
	.cout());
// synopsys translate_off
defparam ix22500z7098.lut_mask = 16'hAAF0;
defparam ix22500z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N13
dffeas write_fifo_reg_q_saved_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_1_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N24
fiftyfivenm_lcell_comb ix22500z7097(
// Equation(s):
// k_i_pixel[1] = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_1__aq))

	.dataa(gnd),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(write_fifo_reg_q_saved_1__aq),
	.datad(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(k_i_pixel[1]),
	.cout());
// synopsys translate_off
defparam ix22500z7097.lut_mask = 16'hFC30;
defparam ix22500z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N29
dffeas write_fifo_reg_q_saved_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_2_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N28
fiftyfivenm_lcell_comb ix22500z7096(
// Equation(s):
// k_i_pixel[2] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_2__aq)))

	.dataa(gnd),
	.datab(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datac(write_fifo_reg_q_saved_2__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[2]),
	.cout());
// synopsys translate_off
defparam ix22500z7096.lut_mask = 16'hCCF0;
defparam ix22500z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N7
dffeas write_fifo_reg_q_saved_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_3_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N6
fiftyfivenm_lcell_comb ix22500z7095(
// Equation(s):
// k_i_pixel[3] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_3__aq)))

	.dataa(gnd),
	.datab(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.datac(write_fifo_reg_q_saved_3__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[3]),
	.cout());
// synopsys translate_off
defparam ix22500z7095.lut_mask = 16'hCCF0;
defparam ix22500z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N9
dffeas write_fifo_reg_q_saved_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_4_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N22
fiftyfivenm_lcell_comb ix59319z7102(
// Equation(s):
// k_i_pixel[4] = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_4__aq))

	.dataa(write_fifo_reg_q_saved_4__aq),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(gnd),
	.datad(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(k_i_pixel[4]),
	.cout());
// synopsys translate_off
defparam ix59319z7102.lut_mask = 16'hEE22;
defparam ix59319z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N31
dffeas write_fifo_reg_q_saved_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_5_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N30
fiftyfivenm_lcell_comb ix59319z7100(
// Equation(s):
// k_i_pixel[5] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_5__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_5__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[5]),
	.cout());
// synopsys translate_off
defparam ix59319z7100.lut_mask = 16'hAAF0;
defparam ix59319z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N27
dffeas write_fifo_reg_q_saved_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_6_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N26
fiftyfivenm_lcell_comb ix59319z7098(
// Equation(s):
// k_i_pixel[6] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_6__aq)))

	.dataa(gnd),
	.datab(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.datac(write_fifo_reg_q_saved_6__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[6]),
	.cout());
// synopsys translate_off
defparam ix59319z7098.lut_mask = 16'hCCF0;
defparam ix59319z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N25
dffeas write_fifo_reg_q_saved_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_7_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N24
fiftyfivenm_lcell_comb ix59319z7096(
// Equation(s):
// k_i_pixel[7] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_7__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_7__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[7]),
	.cout());
// synopsys translate_off
defparam ix59319z7096.lut_mask = 16'hAAF0;
defparam ix59319z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y16_N0
fiftyfivenm_ram_block u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0(
	.portawe(u_kirsch_reg_wr_en_2__aq),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,k_i_pixel[7],k_i_pixel[6],k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],k_i_pixel[0]}),
	.portaaddr({reg_q_7__dup_83_aq,reg_q_6__dup_84_aq,reg_q_5__dup_85_aq,reg_q_4__dup_86_aq,reg_q_3__dup_87_aq,reg_q_2__dup_88_aq,reg_q_1__dup_89_aq,reg_q_0__dup_90_aq}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_4:u_kirsch_mem_gen_2_m_mem|altsyncram:ix64056z29485|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: M9K_X26_Y17_N0
fiftyfivenm_ram_block u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(!u_kirsch_reg_wr_en_0__aq),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,k_i_pixel[7],k_i_pixel[6],k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],k_i_pixel[0]}),
	.portaaddr({reg_q_7__dup_83_aq,reg_q_6__dup_84_aq,reg_q_5__dup_85_aq,reg_q_4__dup_86_aq,reg_q_3__dup_87_aq,reg_q_2__dup_88_aq,reg_q_1__dup_89_aq,reg_q_0__dup_90_aq}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:u_kirsch_mem_gen_0_m_mem|altsyncram:ix64056z29483|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N16
fiftyfivenm_lcell_comb ix14288z7095(
// Equation(s):
// nx14288z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[7])) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[7]))))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[7]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datad(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx14288z1),
	.cout());
// synopsys translate_off
defparam ix14288z7095.lut_mask = 16'hF780;
defparam ix14288z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N8
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_7__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_7__afeeder_combout = nx14288z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx14288z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_7__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y14_N0
fiftyfivenm_ram_block u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0(
	.portawe(u_kirsch_reg_wr_en_1__aq),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,k_i_pixel[7],k_i_pixel[6],k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],k_i_pixel[0]}),
	.portaaddr({reg_q_7__dup_83_aq,reg_q_6__dup_84_aq,reg_q_5__dup_85_aq,reg_q_4__dup_86_aq,reg_q_3__dup_87_aq,reg_q_2__dup_88_aq,reg_q_1__dup_89_aq,reg_q_0__dup_90_aq}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_3:u_kirsch_mem_gen_1_m_mem|altsyncram:ix64056z29484|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: FF_X25_Y16_N9
dffeas u_kirsch_reg_r_c_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_7__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N10
fiftyfivenm_lcell_comb ix59667z7096(
// Equation(s):
// u_kirsch_M_a[7] = (u_kirsch_reg_wr_en_0__aq & ((nx14288z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7]))

	.dataa(gnd),
	.datab(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.datac(u_kirsch_reg_wr_en_0__aq),
	.datad(nx14288z1),
	.cin(gnd),
	.combout(u_kirsch_M_a[7]),
	.cout());
// synopsys translate_off
defparam ix59667z7096.lut_mask = 16'hFC0C;
defparam ix59667z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N28
fiftyfivenm_lcell_comb ix59667z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[7] = (nx26352z4 & ((u_kirsch_M_a[7]))) # (!nx26352z4 & (u_kirsch_reg_r_c_7__aq))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(u_kirsch_reg_r_c_7__aq),
	.datad(u_kirsch_M_a[7]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[7]),
	.cout());
// synopsys translate_off
defparam ix59667z7095.lut_mask = 16'hFC30;
defparam ix59667z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N20
fiftyfivenm_lcell_comb ix25991z7096(
// Equation(s):
// nx25991z1 = (nx26352z4 & (reg_q_0__dup_90_aq & (nx26352z2))) # (!nx26352z4 & (((u_kirsch_reg_v_3__aq))))

	.dataa(reg_q_0__dup_90_aq),
	.datab(nx26352z2),
	.datac(u_kirsch_reg_v_3__aq),
	.datad(nx26352z4),
	.cin(gnd),
	.combout(nx25991z1),
	.cout());
// synopsys translate_off
defparam ix25991z7096.lut_mask = 16'h88F0;
defparam ix25991z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N29
dffeas u_kirsch_reg_r_b_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N4
fiftyfivenm_lcell_comb ix2550z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[7] = (nx26352z4 & ((u_kirsch_M_a[7]))) # (!nx26352z4 & (u_kirsch_reg_r_b_7__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_b_7__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[7]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[7]),
	.cout());
// synopsys translate_off
defparam ix2550z7095.lut_mask = 16'hFC0C;
defparam ix2550z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N10
fiftyfivenm_lcell_comb ix2550z7096(
// Equation(s):
// nx2550z1 = (nx26352z4 & (!reg_q_0__dup_90_aq & (nx26352z2))) # (!nx26352z4 & (((u_kirsch_reg_v_3__aq))))

	.dataa(reg_q_0__dup_90_aq),
	.datab(nx26352z2),
	.datac(u_kirsch_reg_v_3__aq),
	.datad(nx26352z4),
	.cin(gnd),
	.combout(nx2550z1),
	.cout());
// synopsys translate_off
defparam ix2550z7096.lut_mask = 16'h44F0;
defparam ix2550z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N5
dffeas u_kirsch_reg_r_a_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N22
fiftyfivenm_lcell_comb ix39360z7097(
// Equation(s):
// b_0_ = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq) # ((!u_kirsch_reg_v_1__aq & u_kirsch_reg_v_2__aq)))) # (!pb_a0_a_ainput_o & (!u_kirsch_reg_v_1__aq & (u_kirsch_reg_v_2__aq)))

	.dataa(pb_a0_a_ainput_o),
	.datab(u_kirsch_reg_v_1__aq),
	.datac(u_kirsch_reg_v_2__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(b_0_),
	.cout());
// synopsys translate_off
defparam ix39360z7097.lut_mask = 16'hBA30;
defparam ix39360z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N6
fiftyfivenm_lcell_comb ix22707z7095(
// Equation(s):
// nx22707z1 = (u_kirsch_reg_wr_en_0__aq & ((u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[7])) # (!u_kirsch_reg_wr_en_1__aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7]))))) # 
// (!u_kirsch_reg_wr_en_0__aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7]))))

	.dataa(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_reg_wr_en_1__aq),
	.datad(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx22707z1),
	.cout());
// synopsys translate_off
defparam ix22707z7095.lut_mask = 16'hBF80;
defparam ix22707z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N18
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_7__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_7__afeeder_combout = nx22707z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx22707z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_7__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N19
dffeas u_kirsch_reg_r_d_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_7__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N19
dffeas u_kirsch_reg_r_e_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N2
fiftyfivenm_lcell_comb ix25991z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[7] = (nx26352z4 & ((k_i_pixel[7]))) # (!nx26352z4 & (u_kirsch_reg_r_e_7__aq))

	.dataa(nx26352z4),
	.datab(gnd),
	.datac(u_kirsch_reg_r_e_7__aq),
	.datad(k_i_pixel[7]),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[7]),
	.cout());
// synopsys translate_off
defparam ix25991z7095.lut_mask = 16'hFA50;
defparam ix25991z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N3
dffeas u_kirsch_reg_r_f_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N12
fiftyfivenm_lcell_comb ix39360z7096(
// Equation(s):
// nx39360z1 = (b_0_ & ((u_kirsch_reg_r_d_7__aq) # ((b_1_)))) # (!b_0_ & (((u_kirsch_reg_r_f_7__aq & !b_1_))))

	.dataa(b_0_),
	.datab(u_kirsch_reg_r_d_7__aq),
	.datac(u_kirsch_reg_r_f_7__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx39360z1),
	.cout());
// synopsys translate_off
defparam ix39360z7096.lut_mask = 16'hAAD8;
defparam ix39360z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N30
fiftyfivenm_lcell_comb ix39360z7095(
// Equation(s):
// u_kirsch_i3[7] = (b_1_ & ((nx39360z1 & ((u_kirsch_reg_r_a_7__aq))) # (!nx39360z1 & (u_kirsch_reg_r_b_7__aq)))) # (!b_1_ & (((nx39360z1))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_b_7__aq),
	.datac(u_kirsch_reg_r_a_7__aq),
	.datad(nx39360z1),
	.cin(gnd),
	.combout(u_kirsch_i3[7]),
	.cout());
// synopsys translate_off
defparam ix39360z7095.lut_mask = 16'hF588;
defparam ix39360z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N14
fiftyfivenm_lcell_comb ix47964z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[7] = (nx26352z4 & (k_i_pixel[7])) # (!nx26352z4 & ((u_kirsch_reg_r_f_7__aq)))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(k_i_pixel[7]),
	.datad(u_kirsch_reg_r_f_7__aq),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[7]),
	.cout());
// synopsys translate_off
defparam ix47964z7095.lut_mask = 16'hF3C0;
defparam ix47964z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N15
dffeas u_kirsch_reg_r_g_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N22
fiftyfivenm_lcell_comb ix39360z7100(
// Equation(s):
// nx39360z2 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & (u_kirsch_reg_r_e_7__aq)) # (!b_0_ & ((u_kirsch_reg_r_g_7__aq)))))

	.dataa(u_kirsch_reg_r_e_7__aq),
	.datab(u_kirsch_reg_r_g_7__aq),
	.datac(b_1_),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx39360z2),
	.cout());
// synopsys translate_off
defparam ix39360z7100.lut_mask = 16'hFA0C;
defparam ix39360z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N0
fiftyfivenm_lcell_comb ix734z7096(
// Equation(s):
// u_kirsch_M_b[7] = (u_kirsch_reg_wr_en_0__aq & ((nx22707z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[7]))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datad(nx22707z1),
	.cin(gnd),
	.combout(u_kirsch_M_b[7]),
	.cout());
// synopsys translate_off
defparam ix734z7096.lut_mask = 16'hFC30;
defparam ix734z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N22
fiftyfivenm_lcell_comb ix734z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[7] = (nx26352z4 & ((u_kirsch_M_b[7]))) # (!nx26352z4 & (u_kirsch_reg_r_d_7__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_d_7__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[7]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[7]),
	.cout());
// synopsys translate_off
defparam ix734z7095.lut_mask = 16'hFC0C;
defparam ix734z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N23
dffeas u_kirsch_reg_r_i_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N18
fiftyfivenm_lcell_comb ix56383z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[7] = (nx26352z4 & ((u_kirsch_M_b[7]))) # (!nx26352z4 & (u_kirsch_reg_r_i_7__aq))

	.dataa(u_kirsch_reg_r_i_7__aq),
	.datab(nx26352z4),
	.datac(gnd),
	.datad(u_kirsch_M_b[7]),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[7]),
	.cout());
// synopsys translate_off
defparam ix56383z7095.lut_mask = 16'hEE22;
defparam ix56383z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N19
dffeas u_kirsch_reg_r_h_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N24
fiftyfivenm_lcell_comb ix39360z7099(
// Equation(s):
// u_kirsch_i4[7] = (nx39360z2 & ((u_kirsch_reg_r_h_7__aq) # ((!b_1_)))) # (!nx39360z2 & (((u_kirsch_reg_r_c_7__aq & b_1_))))

	.dataa(nx39360z2),
	.datab(u_kirsch_reg_r_h_7__aq),
	.datac(u_kirsch_reg_r_c_7__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(u_kirsch_i4[7]),
	.cout());
// synopsys translate_off
defparam ix39360z7099.lut_mask = 16'hD8AA;
defparam ix39360z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N12
fiftyfivenm_lcell_comb ix23704z7095(
// Equation(s):
// nx23704z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[6])) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6]))))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datad(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx23704z1),
	.cout());
// synopsys translate_off
defparam ix23704z7095.lut_mask = 16'hF780;
defparam ix23704z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N22
fiftyfivenm_lcell_comb ix65273z7096(
// Equation(s):
// u_kirsch_M_b[6] = (u_kirsch_reg_wr_en_0__aq & ((nx23704z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[6]))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.datad(nx23704z1),
	.cin(gnd),
	.combout(u_kirsch_M_b[6]),
	.cout());
// synopsys translate_off
defparam ix65273z7096.lut_mask = 16'hFC30;
defparam ix65273z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N4
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_6__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_6__afeeder_combout = nx23704z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx23704z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_6__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N5
dffeas u_kirsch_reg_r_d_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_6__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N14
fiftyfivenm_lcell_comb ix65273z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[6] = (nx26352z4 & (u_kirsch_M_b[6])) # (!nx26352z4 & ((u_kirsch_reg_r_d_6__aq)))

	.dataa(nx26352z4),
	.datab(gnd),
	.datac(u_kirsch_M_b[6]),
	.datad(u_kirsch_reg_r_d_6__aq),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[6]),
	.cout());
// synopsys translate_off
defparam ix65273z7095.lut_mask = 16'hF5A0;
defparam ix65273z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N15
dffeas u_kirsch_reg_r_i_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N8
fiftyfivenm_lcell_comb ix57380z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[6] = (nx26352z4 & ((u_kirsch_M_b[6]))) # (!nx26352z4 & (u_kirsch_reg_r_i_6__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_i_6__aq),
	.datac(u_kirsch_M_b[6]),
	.datad(nx26352z4),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[6]),
	.cout());
// synopsys translate_off
defparam ix57380z7095.lut_mask = 16'hF0CC;
defparam ix57380z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N9
dffeas u_kirsch_reg_r_h_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N28
fiftyfivenm_lcell_comb ix15285z7095(
// Equation(s):
// nx15285z1 = (u_kirsch_reg_wr_en_0__aq & ((u_kirsch_reg_wr_en_1__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[6]))) # (!u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[6])))) # 
// (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[6]))

	.dataa(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.datad(u_kirsch_reg_wr_en_1__aq),
	.cin(gnd),
	.combout(nx15285z1),
	.cout());
// synopsys translate_off
defparam ix15285z7095.lut_mask = 16'hE2AA;
defparam ix15285z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N22
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_6__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_6__afeeder_combout = nx15285z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx15285z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_6__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N23
dffeas u_kirsch_reg_r_c_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_6__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N7
dffeas u_kirsch_reg_r_e_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N26
fiftyfivenm_lcell_comb ix24994z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[6] = (nx26352z4 & ((k_i_pixel[6]))) # (!nx26352z4 & (u_kirsch_reg_r_e_6__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_e_6__aq),
	.datac(k_i_pixel[6]),
	.datad(nx26352z4),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[6]),
	.cout());
// synopsys translate_off
defparam ix24994z7095.lut_mask = 16'hF0CC;
defparam ix24994z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N27
dffeas u_kirsch_reg_r_f_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N18
fiftyfivenm_lcell_comb ix48961z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[6] = (nx26352z4 & ((k_i_pixel[6]))) # (!nx26352z4 & (u_kirsch_reg_r_f_6__aq))

	.dataa(u_kirsch_reg_r_f_6__aq),
	.datab(gnd),
	.datac(k_i_pixel[6]),
	.datad(nx26352z4),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[6]),
	.cout());
// synopsys translate_off
defparam ix48961z7095.lut_mask = 16'hF0AA;
defparam ix48961z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N19
dffeas u_kirsch_reg_r_g_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N6
fiftyfivenm_lcell_comb ix42507z7098(
// Equation(s):
// nx42507z2 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & ((u_kirsch_reg_r_e_6__aq))) # (!b_0_ & (u_kirsch_reg_r_g_6__aq))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_g_6__aq),
	.datac(u_kirsch_reg_r_e_6__aq),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx42507z2),
	.cout());
// synopsys translate_off
defparam ix42507z7098.lut_mask = 16'hFA44;
defparam ix42507z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N24
fiftyfivenm_lcell_comb ix42507z7097(
// Equation(s):
// u_kirsch_i4[6] = (b_1_ & ((nx42507z2 & (u_kirsch_reg_r_h_6__aq)) # (!nx42507z2 & ((u_kirsch_reg_r_c_6__aq))))) # (!b_1_ & (((nx42507z2))))

	.dataa(u_kirsch_reg_r_h_6__aq),
	.datab(u_kirsch_reg_r_c_6__aq),
	.datac(b_1_),
	.datad(nx42507z2),
	.cin(gnd),
	.combout(u_kirsch_i4[6]),
	.cout());
// synopsys translate_off
defparam ix42507z7097.lut_mask = 16'hAFC0;
defparam ix42507z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N30
fiftyfivenm_lcell_comb ix58670z7096(
// Equation(s):
// u_kirsch_M_a[6] = (u_kirsch_reg_wr_en_0__aq & ((nx15285z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6]))

	.dataa(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.datab(gnd),
	.datac(u_kirsch_reg_wr_en_0__aq),
	.datad(nx15285z1),
	.cin(gnd),
	.combout(u_kirsch_M_a[6]),
	.cout());
// synopsys translate_off
defparam ix58670z7096.lut_mask = 16'hFA0A;
defparam ix58670z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N0
fiftyfivenm_lcell_comb ix58670z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[6] = (nx26352z4 & (u_kirsch_M_a[6])) # (!nx26352z4 & ((u_kirsch_reg_r_c_6__aq)))

	.dataa(nx26352z4),
	.datab(gnd),
	.datac(u_kirsch_M_a[6]),
	.datad(u_kirsch_reg_r_c_6__aq),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[6]),
	.cout());
// synopsys translate_off
defparam ix58670z7095.lut_mask = 16'hF5A0;
defparam ix58670z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N1
dffeas u_kirsch_reg_r_b_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N20
fiftyfivenm_lcell_comb ix1553z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[6] = (nx26352z4 & (u_kirsch_M_a[6])) # (!nx26352z4 & ((u_kirsch_reg_r_b_6__aq)))

	.dataa(nx26352z4),
	.datab(gnd),
	.datac(u_kirsch_M_a[6]),
	.datad(u_kirsch_reg_r_b_6__aq),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[6]),
	.cout());
// synopsys translate_off
defparam ix1553z7095.lut_mask = 16'hF5A0;
defparam ix1553z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N21
dffeas u_kirsch_reg_r_a_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N10
fiftyfivenm_lcell_comb ix42507z7096(
// Equation(s):
// nx42507z1 = (b_0_ & (((b_1_) # (u_kirsch_reg_r_d_6__aq)))) # (!b_0_ & (u_kirsch_reg_r_f_6__aq & (!b_1_)))

	.dataa(u_kirsch_reg_r_f_6__aq),
	.datab(b_0_),
	.datac(b_1_),
	.datad(u_kirsch_reg_r_d_6__aq),
	.cin(gnd),
	.combout(nx42507z1),
	.cout());
// synopsys translate_off
defparam ix42507z7096.lut_mask = 16'hCEC2;
defparam ix42507z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N4
fiftyfivenm_lcell_comb ix42507z7095(
// Equation(s):
// u_kirsch_i3[6] = (b_1_ & ((nx42507z1 & ((u_kirsch_reg_r_a_6__aq))) # (!nx42507z1 & (u_kirsch_reg_r_b_6__aq)))) # (!b_1_ & (((nx42507z1))))

	.dataa(u_kirsch_reg_r_b_6__aq),
	.datab(u_kirsch_reg_r_a_6__aq),
	.datac(b_1_),
	.datad(nx42507z1),
	.cin(gnd),
	.combout(u_kirsch_i3[6]),
	.cout());
// synopsys translate_off
defparam ix42507z7095.lut_mask = 16'hCFA0;
defparam ix42507z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N6
fiftyfivenm_lcell_comb ix16282z7095(
// Equation(s):
// nx16282z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[5]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[5])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[5]))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.datac(u_kirsch_reg_wr_en_0__aq),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx16282z1),
	.cout());
// synopsys translate_off
defparam ix16282z7095.lut_mask = 16'hEC4C;
defparam ix16282z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N2
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_5__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_5__afeeder_combout = nx16282z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx16282z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_5__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N3
dffeas u_kirsch_reg_r_c_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_5__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N17
dffeas u_kirsch_reg_r_e_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N12
fiftyfivenm_lcell_comb ix23997z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[5] = (nx26352z4 & ((k_i_pixel[5]))) # (!nx26352z4 & (u_kirsch_reg_r_e_5__aq))

	.dataa(nx26352z4),
	.datab(u_kirsch_reg_r_e_5__aq),
	.datac(gnd),
	.datad(k_i_pixel[5]),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[5]),
	.cout());
// synopsys translate_off
defparam ix23997z7095.lut_mask = 16'hEE44;
defparam ix23997z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N26
fiftyfivenm_lcell_comb u_kirsch_reg_r_f_5__afeeder(
// Equation(s):
// u_kirsch_reg_r_f_5__afeeder_combout = u_kirsch_r_f_11n3ss1[5]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_r_f_11n3ss1[5]),
	.cin(gnd),
	.combout(u_kirsch_reg_r_f_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_f_5__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_f_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N27
dffeas u_kirsch_reg_r_f_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_f_5__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N0
fiftyfivenm_lcell_comb ix49958z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[5] = (nx26352z4 & ((k_i_pixel[5]))) # (!nx26352z4 & (u_kirsch_reg_r_f_5__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_f_5__aq),
	.datac(nx26352z4),
	.datad(k_i_pixel[5]),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[5]),
	.cout());
// synopsys translate_off
defparam ix49958z7095.lut_mask = 16'hFC0C;
defparam ix49958z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N1
dffeas u_kirsch_reg_r_g_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N4
fiftyfivenm_lcell_comb ix11359z7098(
// Equation(s):
// nx11359z2 = (b_0_ & ((u_kirsch_reg_r_e_5__aq) # ((b_1_)))) # (!b_0_ & (((u_kirsch_reg_r_g_5__aq & !b_1_))))

	.dataa(u_kirsch_reg_r_e_5__aq),
	.datab(u_kirsch_reg_r_g_5__aq),
	.datac(b_0_),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx11359z2),
	.cout());
// synopsys translate_off
defparam ix11359z7098.lut_mask = 16'hF0AC;
defparam ix11359z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N16
fiftyfivenm_lcell_comb ix24701z7095(
// Equation(s):
// nx24701z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[5]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.datad(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx24701z1),
	.cout());
// synopsys translate_off
defparam ix24701z7095.lut_mask = 16'hF870;
defparam ix24701z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N24
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_5__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_5__afeeder_combout = nx24701z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx24701z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_5__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N25
dffeas u_kirsch_reg_r_d_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_5__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N2
fiftyfivenm_lcell_comb ix64276z7096(
// Equation(s):
// u_kirsch_M_b[5] = (u_kirsch_reg_wr_en_0__aq & (nx24701z1)) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[5])))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(nx24701z1),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(u_kirsch_M_b[5]),
	.cout());
// synopsys translate_off
defparam ix64276z7096.lut_mask = 16'hF3C0;
defparam ix64276z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N14
fiftyfivenm_lcell_comb ix64276z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[5] = (nx26352z4 & ((u_kirsch_M_b[5]))) # (!nx26352z4 & (u_kirsch_reg_r_d_5__aq))

	.dataa(u_kirsch_reg_r_d_5__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[5]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[5]),
	.cout());
// synopsys translate_off
defparam ix64276z7095.lut_mask = 16'hFA0A;
defparam ix64276z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y17_N15
dffeas u_kirsch_reg_r_i_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N12
fiftyfivenm_lcell_comb ix58377z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[5] = (nx26352z4 & ((u_kirsch_M_b[5]))) # (!nx26352z4 & (u_kirsch_reg_r_i_5__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_i_5__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[5]),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[5]),
	.cout());
// synopsys translate_off
defparam ix58377z7095.lut_mask = 16'hFC0C;
defparam ix58377z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y17_N13
dffeas u_kirsch_reg_r_h_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N22
fiftyfivenm_lcell_comb ix11359z7097(
// Equation(s):
// u_kirsch_i4[5] = (b_1_ & ((nx11359z2 & ((u_kirsch_reg_r_h_5__aq))) # (!nx11359z2 & (u_kirsch_reg_r_c_5__aq)))) # (!b_1_ & (((nx11359z2))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_c_5__aq),
	.datac(nx11359z2),
	.datad(u_kirsch_reg_r_h_5__aq),
	.cin(gnd),
	.combout(u_kirsch_i4[5]),
	.cout());
// synopsys translate_off
defparam ix11359z7097.lut_mask = 16'hF858;
defparam ix11359z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N24
fiftyfivenm_lcell_comb ix57673z7096(
// Equation(s):
// u_kirsch_M_a[5] = (u_kirsch_reg_wr_en_0__aq & (nx16282z1)) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5])))

	.dataa(nx16282z1),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.datad(gnd),
	.cin(gnd),
	.combout(u_kirsch_M_a[5]),
	.cout());
// synopsys translate_off
defparam ix57673z7096.lut_mask = 16'hB8B8;
defparam ix57673z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N26
fiftyfivenm_lcell_comb ix57673z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[5] = (nx26352z4 & ((u_kirsch_M_a[5]))) # (!nx26352z4 & (u_kirsch_reg_r_c_5__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_c_5__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[5]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[5]),
	.cout());
// synopsys translate_off
defparam ix57673z7095.lut_mask = 16'hFC0C;
defparam ix57673z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y17_N27
dffeas u_kirsch_reg_r_b_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N28
fiftyfivenm_lcell_comb ix556z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[5] = (nx26352z4 & ((u_kirsch_M_a[5]))) # (!nx26352z4 & (u_kirsch_reg_r_b_5__aq))

	.dataa(u_kirsch_reg_r_b_5__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[5]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[5]),
	.cout());
// synopsys translate_off
defparam ix556z7095.lut_mask = 16'hFA0A;
defparam ix556z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y17_N29
dffeas u_kirsch_reg_r_a_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N0
fiftyfivenm_lcell_comb ix11359z7096(
// Equation(s):
// nx11359z1 = (b_0_ & ((u_kirsch_reg_r_d_5__aq) # ((b_1_)))) # (!b_0_ & (((u_kirsch_reg_r_f_5__aq & !b_1_))))

	.dataa(u_kirsch_reg_r_d_5__aq),
	.datab(b_0_),
	.datac(u_kirsch_reg_r_f_5__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx11359z1),
	.cout());
// synopsys translate_off
defparam ix11359z7096.lut_mask = 16'hCCB8;
defparam ix11359z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N10
fiftyfivenm_lcell_comb ix11359z7095(
// Equation(s):
// u_kirsch_i3[5] = (b_1_ & ((nx11359z1 & (u_kirsch_reg_r_a_5__aq)) # (!nx11359z1 & ((u_kirsch_reg_r_b_5__aq))))) # (!b_1_ & (((nx11359z1))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_a_5__aq),
	.datac(u_kirsch_reg_r_b_5__aq),
	.datad(nx11359z1),
	.cin(gnd),
	.combout(u_kirsch_i3[5]),
	.cout());
// synopsys translate_off
defparam ix11359z7095.lut_mask = 16'hDDA0;
defparam ix11359z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N30
fiftyfivenm_lcell_comb ix25698z7095(
// Equation(s):
// nx25698z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[4])) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4]))))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx25698z1),
	.cout());
// synopsys translate_off
defparam ix25698z7095.lut_mask = 16'hF780;
defparam ix25698z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N12
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_4__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_4__afeeder_combout = nx25698z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx25698z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_4__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N13
dffeas u_kirsch_reg_r_d_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_4__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N11
dffeas u_kirsch_reg_r_e_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N4
fiftyfivenm_lcell_comb ix23000z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[4] = (nx26352z4 & ((k_i_pixel[4]))) # (!nx26352z4 & (u_kirsch_reg_r_e_4__aq))

	.dataa(nx26352z4),
	.datab(gnd),
	.datac(u_kirsch_reg_r_e_4__aq),
	.datad(k_i_pixel[4]),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[4]),
	.cout());
// synopsys translate_off
defparam ix23000z7095.lut_mask = 16'hFA50;
defparam ix23000z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N5
dffeas u_kirsch_reg_r_f_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N6
fiftyfivenm_lcell_comb ix19789z7096(
// Equation(s):
// nx19789z1 = (b_0_ & ((u_kirsch_reg_r_d_4__aq) # ((b_1_)))) # (!b_0_ & (((u_kirsch_reg_r_f_4__aq & !b_1_))))

	.dataa(b_0_),
	.datab(u_kirsch_reg_r_d_4__aq),
	.datac(u_kirsch_reg_r_f_4__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx19789z1),
	.cout());
// synopsys translate_off
defparam ix19789z7096.lut_mask = 16'hAAD8;
defparam ix19789z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N14
fiftyfivenm_lcell_comb ix17279z7095(
// Equation(s):
// nx17279z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[4]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[4])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[4]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx17279z1),
	.cout());
// synopsys translate_off
defparam ix17279z7095.lut_mask = 16'hF870;
defparam ix17279z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N8
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_4__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_4__afeeder_combout = nx17279z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx17279z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_4__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N9
dffeas u_kirsch_reg_r_c_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_4__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N24
fiftyfivenm_lcell_comb ix56676z7096(
// Equation(s):
// u_kirsch_M_a[4] = (u_kirsch_reg_wr_en_0__aq & (nx17279z1)) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4])))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(nx17279z1),
	.datad(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(u_kirsch_M_a[4]),
	.cout());
// synopsys translate_off
defparam ix56676z7096.lut_mask = 16'hF3C0;
defparam ix56676z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N2
fiftyfivenm_lcell_comb ix56676z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[4] = (nx26352z4 & ((u_kirsch_M_a[4]))) # (!nx26352z4 & (u_kirsch_reg_r_c_4__aq))

	.dataa(u_kirsch_reg_r_c_4__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[4]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[4]),
	.cout());
// synopsys translate_off
defparam ix56676z7095.lut_mask = 16'hFA0A;
defparam ix56676z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N3
dffeas u_kirsch_reg_r_b_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N20
fiftyfivenm_lcell_comb ix65095z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[4] = (nx26352z4 & ((u_kirsch_M_a[4]))) # (!nx26352z4 & (u_kirsch_reg_r_b_4__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_b_4__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[4]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[4]),
	.cout());
// synopsys translate_off
defparam ix65095z7095.lut_mask = 16'hFC0C;
defparam ix65095z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N21
dffeas u_kirsch_reg_r_a_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N0
fiftyfivenm_lcell_comb ix19789z7095(
// Equation(s):
// u_kirsch_i3[4] = (nx19789z1 & (((u_kirsch_reg_r_a_4__aq) # (!b_1_)))) # (!nx19789z1 & (u_kirsch_reg_r_b_4__aq & ((b_1_))))

	.dataa(nx19789z1),
	.datab(u_kirsch_reg_r_b_4__aq),
	.datac(u_kirsch_reg_r_a_4__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(u_kirsch_i3[4]),
	.cout());
// synopsys translate_off
defparam ix19789z7095.lut_mask = 16'hE4AA;
defparam ix19789z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N16
fiftyfivenm_lcell_comb ix63279z7096(
// Equation(s):
// u_kirsch_M_b[4] = (u_kirsch_reg_wr_en_0__aq & (nx25698z1)) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[4])))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(nx25698z1),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(u_kirsch_M_b[4]),
	.cout());
// synopsys translate_off
defparam ix63279z7096.lut_mask = 16'hF3C0;
defparam ix63279z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N22
fiftyfivenm_lcell_comb ix63279z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[4] = (nx26352z4 & ((u_kirsch_M_b[4]))) # (!nx26352z4 & (u_kirsch_reg_r_d_4__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_d_4__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[4]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[4]),
	.cout());
// synopsys translate_off
defparam ix63279z7095.lut_mask = 16'hFC0C;
defparam ix63279z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N23
dffeas u_kirsch_reg_r_i_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N26
fiftyfivenm_lcell_comb ix59374z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[4] = (nx26352z4 & ((u_kirsch_M_b[4]))) # (!nx26352z4 & (u_kirsch_reg_r_i_4__aq))

	.dataa(u_kirsch_reg_r_i_4__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[4]),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[4]),
	.cout());
// synopsys translate_off
defparam ix59374z7095.lut_mask = 16'hFA0A;
defparam ix59374z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N27
dffeas u_kirsch_reg_r_h_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N2
fiftyfivenm_lcell_comb ix50955z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[4] = (nx26352z4 & ((k_i_pixel[4]))) # (!nx26352z4 & (u_kirsch_reg_r_f_4__aq))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(u_kirsch_reg_r_f_4__aq),
	.datad(k_i_pixel[4]),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[4]),
	.cout());
// synopsys translate_off
defparam ix50955z7095.lut_mask = 16'hFC30;
defparam ix50955z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N3
dffeas u_kirsch_reg_r_g_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N10
fiftyfivenm_lcell_comb ix19789z7098(
// Equation(s):
// nx19789z2 = (b_0_ & (((u_kirsch_reg_r_e_4__aq) # (b_1_)))) # (!b_0_ & (u_kirsch_reg_r_g_4__aq & ((!b_1_))))

	.dataa(b_0_),
	.datab(u_kirsch_reg_r_g_4__aq),
	.datac(u_kirsch_reg_r_e_4__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx19789z2),
	.cout());
// synopsys translate_off
defparam ix19789z7098.lut_mask = 16'hAAE4;
defparam ix19789z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N12
fiftyfivenm_lcell_comb ix19789z7097(
// Equation(s):
// u_kirsch_i4[4] = (b_1_ & ((nx19789z2 & ((u_kirsch_reg_r_h_4__aq))) # (!nx19789z2 & (u_kirsch_reg_r_c_4__aq)))) # (!b_1_ & (((nx19789z2))))

	.dataa(u_kirsch_reg_r_c_4__aq),
	.datab(b_1_),
	.datac(u_kirsch_reg_r_h_4__aq),
	.datad(nx19789z2),
	.cin(gnd),
	.combout(u_kirsch_i4[4]),
	.cout());
// synopsys translate_off
defparam ix19789z7097.lut_mask = 16'hF388;
defparam ix19789z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N0
fiftyfivenm_lcell_comb ix18276z7095(
// Equation(s):
// nx18276z1 = (u_kirsch_reg_wr_en_0__aq & ((u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[3])) # (!u_kirsch_reg_wr_en_1__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[3]))))) # 
// (!u_kirsch_reg_wr_en_0__aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[3]))))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(u_kirsch_reg_wr_en_1__aq),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datad(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx18276z1),
	.cout());
// synopsys translate_off
defparam ix18276z7095.lut_mask = 16'hF780;
defparam ix18276z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y15_N8
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_3__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_3__afeeder_combout = nx18276z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx18276z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_3__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y15_N9
dffeas u_kirsch_reg_r_c_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_3__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N21
dffeas u_kirsch_reg_r_e_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N22
fiftyfivenm_lcell_comb ix22003z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[3] = (nx26352z4 & ((k_i_pixel[3]))) # (!nx26352z4 & (u_kirsch_reg_r_e_3__aq))

	.dataa(u_kirsch_reg_r_e_3__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(k_i_pixel[3]),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[3]),
	.cout());
// synopsys translate_off
defparam ix22003z7095.lut_mask = 16'hFA0A;
defparam ix22003z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N23
dffeas u_kirsch_reg_r_f_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N4
fiftyfivenm_lcell_comb ix51952z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[3] = (nx26352z4 & ((k_i_pixel[3]))) # (!nx26352z4 & (u_kirsch_reg_r_f_3__aq))

	.dataa(u_kirsch_reg_r_f_3__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(k_i_pixel[3]),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[3]),
	.cout());
// synopsys translate_off
defparam ix51952z7095.lut_mask = 16'hFA0A;
defparam ix51952z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N5
dffeas u_kirsch_reg_r_g_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N4
fiftyfivenm_lcell_comb ix3458z7098(
// Equation(s):
// nx3458z2 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & ((u_kirsch_reg_r_e_3__aq))) # (!b_0_ & (u_kirsch_reg_r_g_3__aq))))

	.dataa(u_kirsch_reg_r_g_3__aq),
	.datab(b_1_),
	.datac(b_0_),
	.datad(u_kirsch_reg_r_e_3__aq),
	.cin(gnd),
	.combout(nx3458z2),
	.cout());
// synopsys translate_off
defparam ix3458z7098.lut_mask = 16'hF2C2;
defparam ix3458z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N6
fiftyfivenm_lcell_comb ix26695z7095(
// Equation(s):
// nx26695z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[3]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3]))

	.dataa(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datab(u_kirsch_reg_wr_en_1__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.datad(u_kirsch_reg_wr_en_0__aq),
	.cin(gnd),
	.combout(nx26695z1),
	.cout());
// synopsys translate_off
defparam ix26695z7095.lut_mask = 16'hE2AA;
defparam ix26695z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N26
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_3__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_3__afeeder_combout = nx26695z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx26695z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_3__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N27
dffeas u_kirsch_reg_r_d_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_3__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N24
fiftyfivenm_lcell_comb ix62282z7096(
// Equation(s):
// u_kirsch_M_b[3] = (u_kirsch_reg_wr_en_0__aq & ((nx26695z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[3]))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(gnd),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datad(nx26695z1),
	.cin(gnd),
	.combout(u_kirsch_M_b[3]),
	.cout());
// synopsys translate_off
defparam ix62282z7096.lut_mask = 16'hFA50;
defparam ix62282z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N28
fiftyfivenm_lcell_comb ix62282z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[3] = (nx26352z4 & ((u_kirsch_M_b[3]))) # (!nx26352z4 & (u_kirsch_reg_r_d_3__aq))

	.dataa(u_kirsch_reg_r_d_3__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[3]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[3]),
	.cout());
// synopsys translate_off
defparam ix62282z7095.lut_mask = 16'hFA0A;
defparam ix62282z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N29
dffeas u_kirsch_reg_r_i_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N10
fiftyfivenm_lcell_comb ix60371z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[3] = (nx26352z4 & ((u_kirsch_M_b[3]))) # (!nx26352z4 & (u_kirsch_reg_r_i_3__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_i_3__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[3]),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[3]),
	.cout());
// synopsys translate_off
defparam ix60371z7095.lut_mask = 16'hFC0C;
defparam ix60371z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N11
dffeas u_kirsch_reg_r_h_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N16
fiftyfivenm_lcell_comb ix3458z7097(
// Equation(s):
// u_kirsch_i4[3] = (b_1_ & ((nx3458z2 & ((u_kirsch_reg_r_h_3__aq))) # (!nx3458z2 & (u_kirsch_reg_r_c_3__aq)))) # (!b_1_ & (((nx3458z2))))

	.dataa(u_kirsch_reg_r_c_3__aq),
	.datab(b_1_),
	.datac(nx3458z2),
	.datad(u_kirsch_reg_r_h_3__aq),
	.cin(gnd),
	.combout(u_kirsch_i4[3]),
	.cout());
// synopsys translate_off
defparam ix3458z7097.lut_mask = 16'hF838;
defparam ix3458z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N2
fiftyfivenm_lcell_comb ix55679z7096(
// Equation(s):
// u_kirsch_M_a[3] = (u_kirsch_reg_wr_en_0__aq & ((nx18276z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3]))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(gnd),
	.datac(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datad(nx18276z1),
	.cin(gnd),
	.combout(u_kirsch_M_a[3]),
	.cout());
// synopsys translate_off
defparam ix55679z7096.lut_mask = 16'hFA50;
defparam ix55679z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N20
fiftyfivenm_lcell_comb ix55679z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[3] = (nx26352z4 & ((u_kirsch_M_a[3]))) # (!nx26352z4 & (u_kirsch_reg_r_c_3__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_c_3__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[3]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[3]),
	.cout());
// synopsys translate_off
defparam ix55679z7095.lut_mask = 16'hFC0C;
defparam ix55679z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N21
dffeas u_kirsch_reg_r_b_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N14
fiftyfivenm_lcell_comb ix64098z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[3] = (nx26352z4 & ((u_kirsch_M_a[3]))) # (!nx26352z4 & (u_kirsch_reg_r_b_3__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_b_3__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[3]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[3]),
	.cout());
// synopsys translate_off
defparam ix64098z7095.lut_mask = 16'hFC0C;
defparam ix64098z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N15
dffeas u_kirsch_reg_r_a_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N8
fiftyfivenm_lcell_comb ix3458z7096(
// Equation(s):
// nx3458z1 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & (u_kirsch_reg_r_d_3__aq)) # (!b_0_ & ((u_kirsch_reg_r_f_3__aq)))))

	.dataa(u_kirsch_reg_r_d_3__aq),
	.datab(b_1_),
	.datac(u_kirsch_reg_r_f_3__aq),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx3458z1),
	.cout());
// synopsys translate_off
defparam ix3458z7096.lut_mask = 16'hEE30;
defparam ix3458z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N18
fiftyfivenm_lcell_comb ix3458z7095(
// Equation(s):
// u_kirsch_i3[3] = (b_1_ & ((nx3458z1 & (u_kirsch_reg_r_a_3__aq)) # (!nx3458z1 & ((u_kirsch_reg_r_b_3__aq))))) # (!b_1_ & (((nx3458z1))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_a_3__aq),
	.datac(nx3458z1),
	.datad(u_kirsch_reg_r_b_3__aq),
	.cin(gnd),
	.combout(u_kirsch_i3[3]),
	.cout());
// synopsys translate_off
defparam ix3458z7095.lut_mask = 16'hDAD0;
defparam ix3458z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N0
fiftyfivenm_lcell_comb ix27692z7095(
// Equation(s):
// nx27692z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[2]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2]))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datad(u_kirsch_reg_wr_en_0__aq),
	.cin(gnd),
	.combout(nx27692z1),
	.cout());
// synopsys translate_off
defparam ix27692z7095.lut_mask = 16'hE4CC;
defparam ix27692z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N6
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_2__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_2__afeeder_combout = nx27692z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx27692z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N7
dffeas u_kirsch_reg_r_d_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_2__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N6
fiftyfivenm_lcell_comb ix61285z7096(
// Equation(s):
// u_kirsch_M_b[2] = (u_kirsch_reg_wr_en_0__aq & (nx27692z1)) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[2])))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(nx27692z1),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(u_kirsch_M_b[2]),
	.cout());
// synopsys translate_off
defparam ix61285z7096.lut_mask = 16'hF3C0;
defparam ix61285z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N22
fiftyfivenm_lcell_comb ix61285z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[2] = (nx26352z4 & ((u_kirsch_M_b[2]))) # (!nx26352z4 & (u_kirsch_reg_r_d_2__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_d_2__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[2]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[2]),
	.cout());
// synopsys translate_off
defparam ix61285z7095.lut_mask = 16'hFC0C;
defparam ix61285z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N23
dffeas u_kirsch_reg_r_i_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N24
fiftyfivenm_lcell_comb ix61368z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[2] = (nx26352z4 & ((u_kirsch_M_b[2]))) # (!nx26352z4 & (u_kirsch_reg_r_i_2__aq))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(u_kirsch_reg_r_i_2__aq),
	.datad(u_kirsch_M_b[2]),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[2]),
	.cout());
// synopsys translate_off
defparam ix61368z7095.lut_mask = 16'hFC30;
defparam ix61368z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N25
dffeas u_kirsch_reg_r_h_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N28
fiftyfivenm_lcell_comb u_kirsch_reg_r_e_2__afeeder(
// Equation(s):
// u_kirsch_reg_r_e_2__afeeder_combout = write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(u_kirsch_reg_r_e_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_e_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_e_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N29
dffeas u_kirsch_reg_r_e_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_e_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N12
fiftyfivenm_lcell_comb ix21006z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[2] = (nx26352z4 & (k_i_pixel[2])) # (!nx26352z4 & ((u_kirsch_reg_r_e_2__aq)))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(k_i_pixel[2]),
	.datad(u_kirsch_reg_r_e_2__aq),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[2]),
	.cout());
// synopsys translate_off
defparam ix21006z7095.lut_mask = 16'hF3C0;
defparam ix21006z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N13
dffeas u_kirsch_reg_r_f_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N18
fiftyfivenm_lcell_comb ix52949z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[2] = (nx26352z4 & (k_i_pixel[2])) # (!nx26352z4 & ((u_kirsch_reg_r_f_2__aq)))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(k_i_pixel[2]),
	.datad(u_kirsch_reg_r_f_2__aq),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[2]),
	.cout());
// synopsys translate_off
defparam ix52949z7095.lut_mask = 16'hF3C0;
defparam ix52949z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N19
dffeas u_kirsch_reg_r_g_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N14
fiftyfivenm_lcell_comb ix30930z7098(
// Equation(s):
// nx30930z2 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & ((u_kirsch_reg_r_e_2__aq))) # (!b_0_ & (u_kirsch_reg_r_g_2__aq))))

	.dataa(u_kirsch_reg_r_g_2__aq),
	.datab(b_1_),
	.datac(b_0_),
	.datad(u_kirsch_reg_r_e_2__aq),
	.cin(gnd),
	.combout(nx30930z2),
	.cout());
// synopsys translate_off
defparam ix30930z7098.lut_mask = 16'hF2C2;
defparam ix30930z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N2
fiftyfivenm_lcell_comb ix19273z7095(
// Equation(s):
// nx19273z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[2]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[2])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[2]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx19273z1),
	.cout());
// synopsys translate_off
defparam ix19273z7095.lut_mask = 16'hF870;
defparam ix19273z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N16
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_2__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_2__afeeder_combout = nx19273z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx19273z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N17
dffeas u_kirsch_reg_r_c_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_2__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N8
fiftyfivenm_lcell_comb ix30930z7097(
// Equation(s):
// u_kirsch_i4[2] = (b_1_ & ((nx30930z2 & (u_kirsch_reg_r_h_2__aq)) # (!nx30930z2 & ((u_kirsch_reg_r_c_2__aq))))) # (!b_1_ & (((nx30930z2))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_h_2__aq),
	.datac(nx30930z2),
	.datad(u_kirsch_reg_r_c_2__aq),
	.cin(gnd),
	.combout(u_kirsch_i4[2]),
	.cout());
// synopsys translate_off
defparam ix30930z7097.lut_mask = 16'hDAD0;
defparam ix30930z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N20
fiftyfivenm_lcell_comb ix54682z7096(
// Equation(s):
// u_kirsch_M_a[2] = (u_kirsch_reg_wr_en_0__aq & ((nx19273z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2]))

	.dataa(gnd),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.datad(nx19273z1),
	.cin(gnd),
	.combout(u_kirsch_M_a[2]),
	.cout());
// synopsys translate_off
defparam ix54682z7096.lut_mask = 16'hFC30;
defparam ix54682z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N6
fiftyfivenm_lcell_comb ix54682z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[2] = (nx26352z4 & ((u_kirsch_M_a[2]))) # (!nx26352z4 & (u_kirsch_reg_r_c_2__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_c_2__aq),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[2]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[2]),
	.cout());
// synopsys translate_off
defparam ix54682z7095.lut_mask = 16'hFC0C;
defparam ix54682z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N7
dffeas u_kirsch_reg_r_b_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N16
fiftyfivenm_lcell_comb ix63101z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[2] = (nx26352z4 & ((u_kirsch_M_a[2]))) # (!nx26352z4 & (u_kirsch_reg_r_b_2__aq))

	.dataa(u_kirsch_reg_r_b_2__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[2]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[2]),
	.cout());
// synopsys translate_off
defparam ix63101z7095.lut_mask = 16'hFA0A;
defparam ix63101z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N17
dffeas u_kirsch_reg_r_a_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N10
fiftyfivenm_lcell_comb ix30930z7096(
// Equation(s):
// nx30930z1 = (b_0_ & (((u_kirsch_reg_r_d_2__aq) # (b_1_)))) # (!b_0_ & (u_kirsch_reg_r_f_2__aq & ((!b_1_))))

	.dataa(u_kirsch_reg_r_f_2__aq),
	.datab(u_kirsch_reg_r_d_2__aq),
	.datac(b_0_),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx30930z1),
	.cout());
// synopsys translate_off
defparam ix30930z7096.lut_mask = 16'hF0CA;
defparam ix30930z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N4
fiftyfivenm_lcell_comb ix30930z7095(
// Equation(s):
// u_kirsch_i3[2] = (b_1_ & ((nx30930z1 & (u_kirsch_reg_r_a_2__aq)) # (!nx30930z1 & ((u_kirsch_reg_r_b_2__aq))))) # (!b_1_ & (((nx30930z1))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_a_2__aq),
	.datac(u_kirsch_reg_r_b_2__aq),
	.datad(nx30930z1),
	.cin(gnd),
	.combout(u_kirsch_i3[2]),
	.cout());
// synopsys translate_off
defparam ix30930z7095.lut_mask = 16'hDDA0;
defparam ix30930z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N24
fiftyfivenm_lcell_comb ix28689z7095(
// Equation(s):
// nx28689z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[1])) # (!u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1]))))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx28689z1),
	.cout());
// synopsys translate_off
defparam ix28689z7095.lut_mask = 16'hF780;
defparam ix28689z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N10
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_1__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_1__afeeder_combout = nx28689z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx28689z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_1__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N11
dffeas u_kirsch_reg_r_d_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_1__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N10
fiftyfivenm_lcell_comb ix60288z7096(
// Equation(s):
// u_kirsch_M_b[1] = (u_kirsch_reg_wr_en_0__aq & ((nx28689z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[1]))

	.dataa(gnd),
	.datab(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.datac(u_kirsch_reg_wr_en_0__aq),
	.datad(nx28689z1),
	.cin(gnd),
	.combout(u_kirsch_M_b[1]),
	.cout());
// synopsys translate_off
defparam ix60288z7096.lut_mask = 16'hFC0C;
defparam ix60288z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N26
fiftyfivenm_lcell_comb ix60288z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[1] = (nx26352z4 & ((u_kirsch_M_b[1]))) # (!nx26352z4 & (u_kirsch_reg_r_d_1__aq))

	.dataa(u_kirsch_reg_r_d_1__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[1]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[1]),
	.cout());
// synopsys translate_off
defparam ix60288z7095.lut_mask = 16'hFA0A;
defparam ix60288z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N27
dffeas u_kirsch_reg_r_i_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N4
fiftyfivenm_lcell_comb ix62365z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[1] = (nx26352z4 & ((u_kirsch_M_b[1]))) # (!nx26352z4 & (u_kirsch_reg_r_i_1__aq))

	.dataa(u_kirsch_reg_r_i_1__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[1]),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[1]),
	.cout());
// synopsys translate_off
defparam ix62365z7095.lut_mask = 16'hFA0A;
defparam ix62365z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N5
dffeas u_kirsch_reg_r_h_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N18
fiftyfivenm_lcell_comb ix20270z7095(
// Equation(s):
// nx20270z1 = (u_kirsch_reg_wr_en_1__aq & ((u_kirsch_reg_wr_en_0__aq & ((u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[1]))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[1])))) # 
// (!u_kirsch_reg_wr_en_1__aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[1]))))

	.dataa(u_kirsch_reg_wr_en_1__aq),
	.datab(u_kirsch_reg_wr_en_0__aq),
	.datac(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx20270z1),
	.cout());
// synopsys translate_off
defparam ix20270z7095.lut_mask = 16'hF870;
defparam ix20270z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N28
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_1__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_1__afeeder_combout = nx20270z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx20270z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_1__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N29
dffeas u_kirsch_reg_r_c_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_1__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N15
dffeas u_kirsch_reg_r_e_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N16
fiftyfivenm_lcell_comb ix20009z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[1] = (nx26352z4 & ((k_i_pixel[1]))) # (!nx26352z4 & (u_kirsch_reg_r_e_1__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_e_1__aq),
	.datac(nx26352z4),
	.datad(k_i_pixel[1]),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[1]),
	.cout());
// synopsys translate_off
defparam ix20009z7095.lut_mask = 16'hFC0C;
defparam ix20009z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N17
dffeas u_kirsch_reg_r_f_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N26
fiftyfivenm_lcell_comb ix53946z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[1] = (nx26352z4 & ((k_i_pixel[1]))) # (!nx26352z4 & (u_kirsch_reg_r_f_1__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_f_1__aq),
	.datac(nx26352z4),
	.datad(k_i_pixel[1]),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[1]),
	.cout());
// synopsys translate_off
defparam ix53946z7095.lut_mask = 16'hFC0C;
defparam ix53946z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N27
dffeas u_kirsch_reg_r_g_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N28
fiftyfivenm_lcell_comb ix18275z7098(
// Equation(s):
// nx18275z2 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & (u_kirsch_reg_r_e_1__aq)) # (!b_0_ & ((u_kirsch_reg_r_g_1__aq)))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_e_1__aq),
	.datac(u_kirsch_reg_r_g_1__aq),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx18275z2),
	.cout());
// synopsys translate_off
defparam ix18275z7098.lut_mask = 16'hEE50;
defparam ix18275z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N30
fiftyfivenm_lcell_comb ix18275z7097(
// Equation(s):
// u_kirsch_i4[1] = (b_1_ & ((nx18275z2 & (u_kirsch_reg_r_h_1__aq)) # (!nx18275z2 & ((u_kirsch_reg_r_c_1__aq))))) # (!b_1_ & (((nx18275z2))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_h_1__aq),
	.datac(u_kirsch_reg_r_c_1__aq),
	.datad(nx18275z2),
	.cin(gnd),
	.combout(u_kirsch_i4[1]),
	.cout());
// synopsys translate_off
defparam ix18275z7097.lut_mask = 16'hDDA0;
defparam ix18275z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N28
fiftyfivenm_lcell_comb ix53685z7096(
// Equation(s):
// u_kirsch_M_a[1] = (u_kirsch_reg_wr_en_0__aq & ((nx20270z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1]))

	.dataa(gnd),
	.datab(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.datac(u_kirsch_reg_wr_en_0__aq),
	.datad(nx20270z1),
	.cin(gnd),
	.combout(u_kirsch_M_a[1]),
	.cout());
// synopsys translate_off
defparam ix53685z7096.lut_mask = 16'hFC0C;
defparam ix53685z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N22
fiftyfivenm_lcell_comb ix53685z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[1] = (nx26352z4 & ((u_kirsch_M_a[1]))) # (!nx26352z4 & (u_kirsch_reg_r_c_1__aq))

	.dataa(u_kirsch_reg_r_c_1__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[1]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[1]),
	.cout());
// synopsys translate_off
defparam ix53685z7095.lut_mask = 16'hFA0A;
defparam ix53685z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N23
dffeas u_kirsch_reg_r_b_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N30
fiftyfivenm_lcell_comb ix62104z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[1] = (nx26352z4 & ((u_kirsch_M_a[1]))) # (!nx26352z4 & (u_kirsch_reg_r_b_1__aq))

	.dataa(u_kirsch_reg_r_b_1__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[1]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[1]),
	.cout());
// synopsys translate_off
defparam ix62104z7095.lut_mask = 16'hFA0A;
defparam ix62104z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N31
dffeas u_kirsch_reg_r_a_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N12
fiftyfivenm_lcell_comb ix18275z7096(
// Equation(s):
// nx18275z1 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & ((u_kirsch_reg_r_d_1__aq))) # (!b_0_ & (u_kirsch_reg_r_f_1__aq))))

	.dataa(u_kirsch_reg_r_f_1__aq),
	.datab(u_kirsch_reg_r_d_1__aq),
	.datac(b_1_),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx18275z1),
	.cout());
// synopsys translate_off
defparam ix18275z7096.lut_mask = 16'hFC0A;
defparam ix18275z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N18
fiftyfivenm_lcell_comb ix18275z7095(
// Equation(s):
// u_kirsch_i3[1] = (b_1_ & ((nx18275z1 & (u_kirsch_reg_r_a_1__aq)) # (!nx18275z1 & ((u_kirsch_reg_r_b_1__aq))))) # (!b_1_ & (((nx18275z1))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_a_1__aq),
	.datac(nx18275z1),
	.datad(u_kirsch_reg_r_b_1__aq),
	.cin(gnd),
	.combout(u_kirsch_i3[1]),
	.cout());
// synopsys translate_off
defparam ix18275z7095.lut_mask = 16'hDAD0;
defparam ix18275z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N0
fiftyfivenm_lcell_comb ix21267z7095(
// Equation(s):
// nx21267z1 = (u_kirsch_reg_wr_en_0__aq & ((u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[0])) # (!u_kirsch_reg_wr_en_1__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[0]))))) # 
// (!u_kirsch_reg_wr_en_0__aq & (((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[0]))))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.datac(u_kirsch_reg_wr_en_1__aq),
	.datad(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx21267z1),
	.cout());
// synopsys translate_off
defparam ix21267z7095.lut_mask = 16'hDF80;
defparam ix21267z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y15_N2
fiftyfivenm_lcell_comb u_kirsch_reg_r_c_0__afeeder(
// Equation(s):
// u_kirsch_reg_r_c_0__afeeder_combout = nx21267z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx21267z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_c_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_c_0__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_c_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y15_N3
dffeas u_kirsch_reg_r_c_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_c_0__afeeder_combout),
	.asdata(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_c_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_c_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_c_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N20
fiftyfivenm_lcell_comb ix29686z7095(
// Equation(s):
// nx29686z1 = (u_kirsch_reg_wr_en_0__aq & ((u_kirsch_reg_wr_en_1__aq & ((u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[0]))) # (!u_kirsch_reg_wr_en_1__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0])))) # 
// (!u_kirsch_reg_wr_en_0__aq & (((u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0]))))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(u_kirsch_reg_wr_en_1__aq),
	.datac(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.datad(u_kirsch_mem_gen_0_m_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx29686z1),
	.cout());
// synopsys translate_off
defparam ix29686z7095.lut_mask = 16'hF870;
defparam ix29686z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N30
fiftyfivenm_lcell_comb u_kirsch_reg_r_d_0__afeeder(
// Equation(s):
// u_kirsch_reg_r_d_0__afeeder_combout = nx29686z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx29686z1),
	.cin(gnd),
	.combout(u_kirsch_reg_r_d_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_d_0__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_d_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N31
dffeas u_kirsch_reg_r_d_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_d_0__afeeder_combout),
	.asdata(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!u_kirsch_reg_wr_en_0__aq),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_d_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_d_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_d_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N30
fiftyfivenm_lcell_comb ix59291z7096(
// Equation(s):
// u_kirsch_M_b[0] = (u_kirsch_reg_wr_en_0__aq & ((nx29686z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[0]))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(gnd),
	.datac(u_kirsch_mem_gen_2_m_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.datad(nx29686z1),
	.cin(gnd),
	.combout(u_kirsch_M_b[0]),
	.cout());
// synopsys translate_off
defparam ix59291z7096.lut_mask = 16'hFA50;
defparam ix59291z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N30
fiftyfivenm_lcell_comb ix59291z7095(
// Equation(s):
// u_kirsch_r_i_11n3ss1[0] = (nx26352z4 & ((u_kirsch_M_b[0]))) # (!nx26352z4 & (u_kirsch_reg_r_d_0__aq))

	.dataa(u_kirsch_reg_r_d_0__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_b[0]),
	.cin(gnd),
	.combout(u_kirsch_r_i_11n3ss1[0]),
	.cout());
// synopsys translate_off
defparam ix59291z7095.lut_mask = 16'hFA0A;
defparam ix59291z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N31
dffeas u_kirsch_reg_r_i_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_i_11n3ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_i_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_i_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_i_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N24
fiftyfivenm_lcell_comb ix63362z7095(
// Equation(s):
// u_kirsch_r_h_11n3ss1[0] = (nx26352z4 & ((u_kirsch_M_b[0]))) # (!nx26352z4 & (u_kirsch_reg_r_i_0__aq))

	.dataa(u_kirsch_reg_r_i_0__aq),
	.datab(nx26352z4),
	.datac(u_kirsch_M_b[0]),
	.datad(gnd),
	.cin(gnd),
	.combout(u_kirsch_r_h_11n3ss1[0]),
	.cout());
// synopsys translate_off
defparam ix63362z7095.lut_mask = 16'hE2E2;
defparam ix63362z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N25
dffeas u_kirsch_reg_r_h_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_h_11n3ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_h_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_h_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_h_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y16_N23
dffeas u_kirsch_reg_r_e_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx26352z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_e_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_e_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_e_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N20
fiftyfivenm_lcell_comb ix19012z7095(
// Equation(s):
// u_kirsch_r_f_11n3ss1[0] = (nx26352z4 & ((k_i_pixel[0]))) # (!nx26352z4 & (u_kirsch_reg_r_e_0__aq))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(u_kirsch_reg_r_e_0__aq),
	.datad(k_i_pixel[0]),
	.cin(gnd),
	.combout(u_kirsch_r_f_11n3ss1[0]),
	.cout());
// synopsys translate_off
defparam ix19012z7095.lut_mask = 16'hFC30;
defparam ix19012z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N21
dffeas u_kirsch_reg_r_f_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_f_11n3ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_f_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_f_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_f_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N10
fiftyfivenm_lcell_comb ix54943z7095(
// Equation(s):
// u_kirsch_r_g_11n3ss1[0] = (nx26352z4 & ((k_i_pixel[0]))) # (!nx26352z4 & (u_kirsch_reg_r_f_0__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_f_0__aq),
	.datac(nx26352z4),
	.datad(k_i_pixel[0]),
	.cin(gnd),
	.combout(u_kirsch_r_g_11n3ss1[0]),
	.cout());
// synopsys translate_off
defparam ix54943z7095.lut_mask = 16'hFC0C;
defparam ix54943z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N11
dffeas u_kirsch_reg_r_g_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_g_11n3ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_g_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_g_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_g_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N18
fiftyfivenm_lcell_comb ix49423z7098(
// Equation(s):
// nx49423z2 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & ((u_kirsch_reg_r_e_0__aq))) # (!b_0_ & (u_kirsch_reg_r_g_0__aq))))

	.dataa(u_kirsch_reg_r_g_0__aq),
	.datab(u_kirsch_reg_r_e_0__aq),
	.datac(b_1_),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx49423z2),
	.cout());
// synopsys translate_off
defparam ix49423z7098.lut_mask = 16'hFC0A;
defparam ix49423z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N4
fiftyfivenm_lcell_comb ix49423z7097(
// Equation(s):
// u_kirsch_i4[0] = (b_1_ & ((nx49423z2 & ((u_kirsch_reg_r_h_0__aq))) # (!nx49423z2 & (u_kirsch_reg_r_c_0__aq)))) # (!b_1_ & (((nx49423z2))))

	.dataa(u_kirsch_reg_r_c_0__aq),
	.datab(u_kirsch_reg_r_h_0__aq),
	.datac(b_1_),
	.datad(nx49423z2),
	.cin(gnd),
	.combout(u_kirsch_i4[0]),
	.cout());
// synopsys translate_off
defparam ix49423z7097.lut_mask = 16'hCFA0;
defparam ix49423z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N26
fiftyfivenm_lcell_comb ix52688z7096(
// Equation(s):
// u_kirsch_M_a[0] = (u_kirsch_reg_wr_en_0__aq & ((nx21267z1))) # (!u_kirsch_reg_wr_en_0__aq & (u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0]))

	.dataa(u_kirsch_reg_wr_en_0__aq),
	.datab(gnd),
	.datac(u_kirsch_mem_gen_1_m_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.datad(nx21267z1),
	.cin(gnd),
	.combout(u_kirsch_M_a[0]),
	.cout());
// synopsys translate_off
defparam ix52688z7096.lut_mask = 16'hFA50;
defparam ix52688z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N8
fiftyfivenm_lcell_comb ix52688z7095(
// Equation(s):
// u_kirsch_r_b_11n3ss1[0] = (nx26352z4 & ((u_kirsch_M_a[0]))) # (!nx26352z4 & (u_kirsch_reg_r_c_0__aq))

	.dataa(u_kirsch_reg_r_c_0__aq),
	.datab(gnd),
	.datac(nx26352z4),
	.datad(u_kirsch_M_a[0]),
	.cin(gnd),
	.combout(u_kirsch_r_b_11n3ss1[0]),
	.cout());
// synopsys translate_off
defparam ix52688z7095.lut_mask = 16'hFA0A;
defparam ix52688z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N9
dffeas u_kirsch_reg_r_b_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_b_11n3ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx25991z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_b_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_b_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_b_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N28
fiftyfivenm_lcell_comb ix61107z7095(
// Equation(s):
// u_kirsch_r_a_11n3ss1[0] = (nx26352z4 & ((u_kirsch_M_a[0]))) # (!nx26352z4 & (u_kirsch_reg_r_b_0__aq))

	.dataa(gnd),
	.datab(nx26352z4),
	.datac(u_kirsch_reg_r_b_0__aq),
	.datad(u_kirsch_M_a[0]),
	.cin(gnd),
	.combout(u_kirsch_r_a_11n3ss1[0]),
	.cout());
// synopsys translate_off
defparam ix61107z7095.lut_mask = 16'hFC30;
defparam ix61107z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N29
dffeas u_kirsch_reg_r_a_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_a_11n3ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2550z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_a_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_a_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_a_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N6
fiftyfivenm_lcell_comb ix49423z7096(
// Equation(s):
// nx49423z1 = (b_1_ & (((b_0_)))) # (!b_1_ & ((b_0_ & ((u_kirsch_reg_r_d_0__aq))) # (!b_0_ & (u_kirsch_reg_r_f_0__aq))))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_f_0__aq),
	.datac(u_kirsch_reg_r_d_0__aq),
	.datad(b_0_),
	.cin(gnd),
	.combout(nx49423z1),
	.cout());
// synopsys translate_off
defparam ix49423z7096.lut_mask = 16'hFA44;
defparam ix49423z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N16
fiftyfivenm_lcell_comb ix49423z7095(
// Equation(s):
// u_kirsch_i3[0] = (b_1_ & ((nx49423z1 & ((u_kirsch_reg_r_a_0__aq))) # (!nx49423z1 & (u_kirsch_reg_r_b_0__aq)))) # (!b_1_ & (((nx49423z1))))

	.dataa(u_kirsch_reg_r_b_0__aq),
	.datab(u_kirsch_reg_r_a_0__aq),
	.datac(b_1_),
	.datad(nx49423z1),
	.cin(gnd),
	.combout(u_kirsch_i3[0]),
	.cout());
// synopsys translate_off
defparam ix49423z7095.lut_mask = 16'hCFA0;
defparam ix49423z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N0
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix35_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[0] = (u_kirsch_i4[0] & (u_kirsch_i3[0] $ (VCC))) # (!u_kirsch_i4[0] & (u_kirsch_i3[0] & VCC))
// nx18275z3 = CARRY((u_kirsch_i4[0] & u_kirsch_i3[0]))

	.dataa(u_kirsch_i4[0]),
	.datab(u_kirsch_i3[0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_kirsch_r2_14n0r1[0]),
	.cout(nx18275z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix35_fadd.lut_mask = 16'h6688;
defparam u_kirsch_r2_add8_14i1_ix35_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N2
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix39_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[1] = (u_kirsch_i4[1] & ((u_kirsch_i3[1] & (nx18275z3 & VCC)) # (!u_kirsch_i3[1] & (!nx18275z3)))) # (!u_kirsch_i4[1] & ((u_kirsch_i3[1] & (!nx18275z3)) # (!u_kirsch_i3[1] & ((nx18275z3) # (GND)))))
// nx30930z3 = CARRY((u_kirsch_i4[1] & (!u_kirsch_i3[1] & !nx18275z3)) # (!u_kirsch_i4[1] & ((!nx18275z3) # (!u_kirsch_i3[1]))))

	.dataa(u_kirsch_i4[1]),
	.datab(u_kirsch_i3[1]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx18275z3),
	.combout(u_kirsch_r2_14n0r1[1]),
	.cout(nx30930z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix39_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r2_add8_14i1_ix39_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N4
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix43_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[2] = ((u_kirsch_i4[2] $ (u_kirsch_i3[2] $ (!nx30930z3)))) # (GND)
// nx3458z3 = CARRY((u_kirsch_i4[2] & ((u_kirsch_i3[2]) # (!nx30930z3))) # (!u_kirsch_i4[2] & (u_kirsch_i3[2] & !nx30930z3)))

	.dataa(u_kirsch_i4[2]),
	.datab(u_kirsch_i3[2]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx30930z3),
	.combout(u_kirsch_r2_14n0r1[2]),
	.cout(nx3458z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix43_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r2_add8_14i1_ix43_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N6
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix47_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[3] = (u_kirsch_i4[3] & ((u_kirsch_i3[3] & (nx3458z3 & VCC)) # (!u_kirsch_i3[3] & (!nx3458z3)))) # (!u_kirsch_i4[3] & ((u_kirsch_i3[3] & (!nx3458z3)) # (!u_kirsch_i3[3] & ((nx3458z3) # (GND)))))
// nx19789z3 = CARRY((u_kirsch_i4[3] & (!u_kirsch_i3[3] & !nx3458z3)) # (!u_kirsch_i4[3] & ((!nx3458z3) # (!u_kirsch_i3[3]))))

	.dataa(u_kirsch_i4[3]),
	.datab(u_kirsch_i3[3]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx3458z3),
	.combout(u_kirsch_r2_14n0r1[3]),
	.cout(nx19789z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix47_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r2_add8_14i1_ix47_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N8
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix51_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[4] = ((u_kirsch_i3[4] $ (u_kirsch_i4[4] $ (!nx19789z3)))) # (GND)
// nx11359z3 = CARRY((u_kirsch_i3[4] & ((u_kirsch_i4[4]) # (!nx19789z3))) # (!u_kirsch_i3[4] & (u_kirsch_i4[4] & !nx19789z3)))

	.dataa(u_kirsch_i3[4]),
	.datab(u_kirsch_i4[4]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx19789z3),
	.combout(u_kirsch_r2_14n0r1[4]),
	.cout(nx11359z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix51_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r2_add8_14i1_ix51_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N10
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix55_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[5] = (u_kirsch_i4[5] & ((u_kirsch_i3[5] & (nx11359z3 & VCC)) # (!u_kirsch_i3[5] & (!nx11359z3)))) # (!u_kirsch_i4[5] & ((u_kirsch_i3[5] & (!nx11359z3)) # (!u_kirsch_i3[5] & ((nx11359z3) # (GND)))))
// nx42507z3 = CARRY((u_kirsch_i4[5] & (!u_kirsch_i3[5] & !nx11359z3)) # (!u_kirsch_i4[5] & ((!nx11359z3) # (!u_kirsch_i3[5]))))

	.dataa(u_kirsch_i4[5]),
	.datab(u_kirsch_i3[5]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx11359z3),
	.combout(u_kirsch_r2_14n0r1[5]),
	.cout(nx42507z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix55_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r2_add8_14i1_ix55_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N12
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix59_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[6] = ((u_kirsch_i4[6] $ (u_kirsch_i3[6] $ (!nx42507z3)))) # (GND)
// nx39360z3 = CARRY((u_kirsch_i4[6] & ((u_kirsch_i3[6]) # (!nx42507z3))) # (!u_kirsch_i4[6] & (u_kirsch_i3[6] & !nx42507z3)))

	.dataa(u_kirsch_i4[6]),
	.datab(u_kirsch_i3[6]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42507z3),
	.combout(u_kirsch_r2_14n0r1[6]),
	.cout(nx39360z3));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix59_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r2_add8_14i1_ix59_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N14
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix63_fadd(
// Equation(s):
// u_kirsch_r2_14n0r1[7] = (u_kirsch_i3[7] & ((u_kirsch_i4[7] & (nx39360z3 & VCC)) # (!u_kirsch_i4[7] & (!nx39360z3)))) # (!u_kirsch_i3[7] & ((u_kirsch_i4[7] & (!nx39360z3)) # (!u_kirsch_i4[7] & ((nx39360z3) # (GND)))))
// nx63652z1 = CARRY((u_kirsch_i3[7] & (!u_kirsch_i4[7] & !nx39360z3)) # (!u_kirsch_i3[7] & ((!nx39360z3) # (!u_kirsch_i4[7]))))

	.dataa(u_kirsch_i3[7]),
	.datab(u_kirsch_i4[7]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39360z3),
	.combout(u_kirsch_r2_14n0r1[7]),
	.cout(nx63652z1));
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix63_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r2_add8_14i1_ix63_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N16
fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix63_fadd_buf(
// Equation(s):
// u_kirsch_r2_14n0r1[8] = !nx63652z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx63652z1),
	.combout(u_kirsch_r2_14n0r1[8]),
	.cout());
// synopsys translate_off
defparam u_kirsch_r2_add8_14i1_ix63_fadd_buf.lut_mask = 16'h0F0F;
defparam u_kirsch_r2_add8_14i1_ix63_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y18_N17
dffeas u_kirsch_reg_r2_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N18
fiftyfivenm_lcell_comb ix46527z7097(
// Equation(s):
// nx46527z2 = (b_1_ & (u_kirsch_reg_r_a_7__aq)) # (!b_1_ & ((u_kirsch_reg_r_e_7__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_a_7__aq),
	.datac(u_kirsch_reg_r_e_7__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx46527z2),
	.cout());
// synopsys translate_off
defparam ix46527z7097.lut_mask = 16'hCCF0;
defparam ix46527z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N10
fiftyfivenm_lcell_comb ix46527z7098(
// Equation(s):
// nx46527z3 = (write_fifo_reg_rd_en_delayed_aq & (!pb_a0_a_ainput_o & ((u_kirsch_reg_v_1__aq) # (!u_kirsch_reg_v_2__aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (((u_kirsch_reg_v_1__aq) # (!u_kirsch_reg_v_2__aq))))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(pb_a0_a_ainput_o),
	.datac(u_kirsch_reg_v_2__aq),
	.datad(u_kirsch_reg_v_1__aq),
	.cin(gnd),
	.combout(nx46527z3),
	.cout());
// synopsys translate_off
defparam ix46527z7098.lut_mask = 16'h7707;
defparam ix46527z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N26
fiftyfivenm_lcell_comb ix46527z7096(
// Equation(s):
// nx46527z1 = (b_1_ & ((u_kirsch_reg_r_g_7__aq))) # (!b_1_ & (u_kirsch_reg_r_c_7__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_c_7__aq),
	.datac(u_kirsch_reg_r_g_7__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx46527z1),
	.cout());
// synopsys translate_off
defparam ix46527z7096.lut_mask = 16'hF0CC;
defparam ix46527z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N8
fiftyfivenm_lcell_comb ix46527z7095(
// Equation(s):
// u_kirsch_i2_val[7] = (nx46527z3 & (nx46527z2)) # (!nx46527z3 & ((nx46527z1)))

	.dataa(nx46527z2),
	.datab(nx46527z3),
	.datac(gnd),
	.datad(nx46527z1),
	.cin(gnd),
	.combout(u_kirsch_i2_val[7]),
	.cout());
// synopsys translate_off
defparam ix46527z7095.lut_mask = 16'hBB88;
defparam ix46527z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N8
fiftyfivenm_lcell_comb ix46527z7100(
// Equation(s):
// nx46527z4 = (b_1_ & ((u_kirsch_reg_r_d_7__aq))) # (!b_1_ & (u_kirsch_reg_r_h_7__aq))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_h_7__aq),
	.datac(gnd),
	.datad(u_kirsch_reg_r_d_7__aq),
	.cin(gnd),
	.combout(nx46527z4),
	.cout());
// synopsys translate_off
defparam ix46527z7100.lut_mask = 16'hEE44;
defparam ix46527z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N2
fiftyfivenm_lcell_comb ix46527z7101(
// Equation(s):
// nx46527z5 = (b_1_ & (u_kirsch_reg_r_b_7__aq)) # (!b_1_ & ((u_kirsch_reg_r_f_7__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_b_7__aq),
	.datac(u_kirsch_reg_r_f_7__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx46527z5),
	.cout());
// synopsys translate_off
defparam ix46527z7101.lut_mask = 16'hCCF0;
defparam ix46527z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N20
fiftyfivenm_lcell_comb ix46527z7099(
// Equation(s):
// u_kirsch_i1_val[7] = (nx46527z3 & (nx46527z4)) # (!nx46527z3 & ((nx46527z5)))

	.dataa(gnd),
	.datab(nx46527z3),
	.datac(nx46527z4),
	.datad(nx46527z5),
	.cin(gnd),
	.combout(u_kirsch_i1_val[7]),
	.cout());
// synopsys translate_off
defparam ix46527z7099.lut_mask = 16'hF3C0;
defparam ix46527z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N4
fiftyfivenm_lcell_comb ix10989z7100(
// Equation(s):
// nx10989z4 = (b_1_ & ((u_kirsch_reg_r_a_6__aq))) # (!b_1_ & (u_kirsch_reg_r_e_6__aq))

	.dataa(u_kirsch_reg_r_e_6__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_a_6__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx10989z4),
	.cout());
// synopsys translate_off
defparam ix10989z7100.lut_mask = 16'hF0AA;
defparam ix10989z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N16
fiftyfivenm_lcell_comb ix10989z7099(
// Equation(s):
// nx10989z3 = (b_1_ & (u_kirsch_reg_r_g_6__aq)) # (!b_1_ & ((u_kirsch_reg_r_c_6__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_g_6__aq),
	.datac(b_1_),
	.datad(u_kirsch_reg_r_c_6__aq),
	.cin(gnd),
	.combout(nx10989z3),
	.cout());
// synopsys translate_off
defparam ix10989z7099.lut_mask = 16'hCFC0;
defparam ix10989z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N10
fiftyfivenm_lcell_comb ix10989z7098(
// Equation(s):
// u_kirsch_i2_val[6] = (nx46527z3 & (nx10989z4)) # (!nx46527z3 & ((nx10989z3)))

	.dataa(nx10989z4),
	.datab(nx46527z3),
	.datac(gnd),
	.datad(nx10989z3),
	.cin(gnd),
	.combout(u_kirsch_i2_val[6]),
	.cout());
// synopsys translate_off
defparam ix10989z7098.lut_mask = 16'hBB88;
defparam ix10989z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N14
fiftyfivenm_lcell_comb ix10989z7096(
// Equation(s):
// nx10989z1 = (b_1_ & (u_kirsch_reg_r_d_6__aq)) # (!b_1_ & ((u_kirsch_reg_r_h_6__aq)))

	.dataa(u_kirsch_reg_r_d_6__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_h_6__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx10989z1),
	.cout());
// synopsys translate_off
defparam ix10989z7096.lut_mask = 16'hAAF0;
defparam ix10989z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N24
fiftyfivenm_lcell_comb ix10989z7097(
// Equation(s):
// nx10989z2 = (b_1_ & ((u_kirsch_reg_r_b_6__aq))) # (!b_1_ & (u_kirsch_reg_r_f_6__aq))

	.dataa(u_kirsch_reg_r_f_6__aq),
	.datab(u_kirsch_reg_r_b_6__aq),
	.datac(gnd),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx10989z2),
	.cout());
// synopsys translate_off
defparam ix10989z7097.lut_mask = 16'hCCAA;
defparam ix10989z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N26
fiftyfivenm_lcell_comb ix10989z7095(
// Equation(s):
// u_kirsch_i1_val[6] = (nx46527z3 & (nx10989z1)) # (!nx46527z3 & ((nx10989z2)))

	.dataa(gnd),
	.datab(nx46527z3),
	.datac(nx10989z1),
	.datad(nx10989z2),
	.cin(gnd),
	.combout(u_kirsch_i1_val[6]),
	.cout());
// synopsys translate_off
defparam ix10989z7095.lut_mask = 16'hF3C0;
defparam ix10989z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N8
fiftyfivenm_lcell_comb ix26563z7096(
// Equation(s):
// nx26563z1 = (b_1_ & ((u_kirsch_reg_r_d_5__aq))) # (!b_1_ & (u_kirsch_reg_r_h_5__aq))

	.dataa(u_kirsch_reg_r_h_5__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_d_5__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx26563z1),
	.cout());
// synopsys translate_off
defparam ix26563z7096.lut_mask = 16'hF0AA;
defparam ix26563z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N18
fiftyfivenm_lcell_comb ix26563z7097(
// Equation(s):
// nx26563z2 = (b_1_ & (u_kirsch_reg_r_b_5__aq)) # (!b_1_ & ((u_kirsch_reg_r_f_5__aq)))

	.dataa(u_kirsch_reg_r_b_5__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_f_5__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx26563z2),
	.cout());
// synopsys translate_off
defparam ix26563z7097.lut_mask = 16'hAAF0;
defparam ix26563z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N20
fiftyfivenm_lcell_comb ix26563z7095(
// Equation(s):
// u_kirsch_i1_val[5] = (nx46527z3 & (nx26563z1)) # (!nx46527z3 & ((nx26563z2)))

	.dataa(nx46527z3),
	.datab(gnd),
	.datac(nx26563z1),
	.datad(nx26563z2),
	.cin(gnd),
	.combout(u_kirsch_i1_val[5]),
	.cout());
// synopsys translate_off
defparam ix26563z7095.lut_mask = 16'hF5A0;
defparam ix26563z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N22
fiftyfivenm_lcell_comb ix26563z7100(
// Equation(s):
// nx26563z4 = (b_1_ & ((u_kirsch_reg_r_a_5__aq))) # (!b_1_ & (u_kirsch_reg_r_e_5__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_e_5__aq),
	.datac(u_kirsch_reg_r_a_5__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx26563z4),
	.cout());
// synopsys translate_off
defparam ix26563z7100.lut_mask = 16'hF0CC;
defparam ix26563z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N30
fiftyfivenm_lcell_comb ix26563z7099(
// Equation(s):
// nx26563z3 = (b_1_ & (u_kirsch_reg_r_g_5__aq)) # (!b_1_ & ((u_kirsch_reg_r_c_5__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_g_5__aq),
	.datac(u_kirsch_reg_r_c_5__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx26563z3),
	.cout());
// synopsys translate_off
defparam ix26563z7099.lut_mask = 16'hCCF0;
defparam ix26563z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N4
fiftyfivenm_lcell_comb ix26563z7098(
// Equation(s):
// u_kirsch_i2_val[5] = (nx46527z3 & (nx26563z4)) # (!nx46527z3 & ((nx26563z3)))

	.dataa(nx46527z3),
	.datab(nx26563z4),
	.datac(gnd),
	.datad(nx26563z3),
	.cin(gnd),
	.combout(u_kirsch_i2_val[5]),
	.cout());
// synopsys translate_off
defparam ix26563z7098.lut_mask = 16'hDD88;
defparam ix26563z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N8
fiftyfivenm_lcell_comb ix60194z7100(
// Equation(s):
// nx60194z4 = (b_1_ & ((u_kirsch_reg_r_a_4__aq))) # (!b_1_ & (u_kirsch_reg_r_e_4__aq))

	.dataa(u_kirsch_reg_r_e_4__aq),
	.datab(u_kirsch_reg_r_a_4__aq),
	.datac(gnd),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx60194z4),
	.cout());
// synopsys translate_off
defparam ix60194z7100.lut_mask = 16'hCCAA;
defparam ix60194z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N16
fiftyfivenm_lcell_comb ix60194z7099(
// Equation(s):
// nx60194z3 = (b_1_ & ((u_kirsch_reg_r_g_4__aq))) # (!b_1_ & (u_kirsch_reg_r_c_4__aq))

	.dataa(u_kirsch_reg_r_c_4__aq),
	.datab(u_kirsch_reg_r_g_4__aq),
	.datac(gnd),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx60194z3),
	.cout());
// synopsys translate_off
defparam ix60194z7099.lut_mask = 16'hCCAA;
defparam ix60194z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N6
fiftyfivenm_lcell_comb ix60194z7098(
// Equation(s):
// u_kirsch_i2_val[4] = (nx46527z3 & (nx60194z4)) # (!nx46527z3 & ((nx60194z3)))

	.dataa(nx60194z4),
	.datab(nx46527z3),
	.datac(gnd),
	.datad(nx60194z3),
	.cin(gnd),
	.combout(u_kirsch_i2_val[4]),
	.cout());
// synopsys translate_off
defparam ix60194z7098.lut_mask = 16'hBB88;
defparam ix60194z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N8
fiftyfivenm_lcell_comb ix60194z7096(
// Equation(s):
// nx60194z1 = (b_1_ & (u_kirsch_reg_r_d_4__aq)) # (!b_1_ & ((u_kirsch_reg_r_h_4__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_d_4__aq),
	.datac(u_kirsch_reg_r_h_4__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx60194z1),
	.cout());
// synopsys translate_off
defparam ix60194z7096.lut_mask = 16'hCCF0;
defparam ix60194z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N18
fiftyfivenm_lcell_comb ix60194z7097(
// Equation(s):
// nx60194z2 = (b_1_ & (u_kirsch_reg_r_b_4__aq)) # (!b_1_ & ((u_kirsch_reg_r_f_4__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_b_4__aq),
	.datac(u_kirsch_reg_r_f_4__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx60194z2),
	.cout());
// synopsys translate_off
defparam ix60194z7097.lut_mask = 16'hCCF0;
defparam ix60194z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N28
fiftyfivenm_lcell_comb ix60194z7095(
// Equation(s):
// u_kirsch_i1_val[4] = (nx46527z3 & (nx60194z1)) # (!nx46527z3 & ((nx60194z2)))

	.dataa(nx46527z3),
	.datab(gnd),
	.datac(nx60194z1),
	.datad(nx60194z2),
	.cin(gnd),
	.combout(u_kirsch_i1_val[4]),
	.cout());
// synopsys translate_off
defparam ix60194z7095.lut_mask = 16'hF5A0;
defparam ix60194z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y22_N26
fiftyfivenm_lcell_comb ix55304z7099(
// Equation(s):
// nx55304z3 = (nx46527z3) # ((b_1_ & (u_kirsch_reg_r_g_3__aq)) # (!b_1_ & ((u_kirsch_reg_r_c_3__aq))))

	.dataa(u_kirsch_reg_r_g_3__aq),
	.datab(u_kirsch_reg_r_c_3__aq),
	.datac(nx46527z3),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx55304z3),
	.cout());
// synopsys translate_off
defparam ix55304z7099.lut_mask = 16'hFAFC;
defparam ix55304z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N20
fiftyfivenm_lcell_comb ix55304z7100(
// Equation(s):
// nx55304z4 = (b_1_ & (u_kirsch_reg_r_a_3__aq)) # (!b_1_ & ((u_kirsch_reg_r_e_3__aq)))

	.dataa(u_kirsch_reg_r_a_3__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_e_3__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx55304z4),
	.cout());
// synopsys translate_off
defparam ix55304z7100.lut_mask = 16'hAAF0;
defparam ix55304z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y22_N16
fiftyfivenm_lcell_comb ix55304z7098(
// Equation(s):
// u_kirsch_i2_val[3] = (nx55304z3 & ((nx55304z4) # (!nx46527z3)))

	.dataa(nx55304z3),
	.datab(nx46527z3),
	.datac(gnd),
	.datad(nx55304z4),
	.cin(gnd),
	.combout(u_kirsch_i2_val[3]),
	.cout());
// synopsys translate_off
defparam ix55304z7098.lut_mask = 16'hAA22;
defparam ix55304z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N2
fiftyfivenm_lcell_comb ix55304z7096(
// Equation(s):
// nx55304z1 = (nx46527z3) # ((b_1_ & (u_kirsch_reg_r_b_3__aq)) # (!b_1_ & ((u_kirsch_reg_r_f_3__aq))))

	.dataa(u_kirsch_reg_r_b_3__aq),
	.datab(b_1_),
	.datac(u_kirsch_reg_r_f_3__aq),
	.datad(nx46527z3),
	.cin(gnd),
	.combout(nx55304z1),
	.cout());
// synopsys translate_off
defparam ix55304z7096.lut_mask = 16'hFFB8;
defparam ix55304z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N18
fiftyfivenm_lcell_comb ix55304z7097(
// Equation(s):
// nx55304z2 = (b_1_ & ((u_kirsch_reg_r_d_3__aq))) # (!b_1_ & (u_kirsch_reg_r_h_3__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_h_3__aq),
	.datac(u_kirsch_reg_r_d_3__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx55304z2),
	.cout());
// synopsys translate_off
defparam ix55304z7097.lut_mask = 16'hF0CC;
defparam ix55304z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N0
fiftyfivenm_lcell_comb ix55304z7095(
// Equation(s):
// u_kirsch_i1_val[3] = (nx55304z1 & ((nx55304z2) # (!nx46527z3)))

	.dataa(nx46527z3),
	.datab(nx55304z1),
	.datac(gnd),
	.datad(nx55304z2),
	.cin(gnd),
	.combout(u_kirsch_i1_val[3]),
	.cout());
// synopsys translate_off
defparam ix55304z7095.lut_mask = 16'hCC44;
defparam ix55304z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N26
fiftyfivenm_lcell_comb ix39730z7096(
// Equation(s):
// nx39730z1 = (nx46527z3) # ((b_1_ & ((u_kirsch_reg_r_b_2__aq))) # (!b_1_ & (u_kirsch_reg_r_f_2__aq)))

	.dataa(u_kirsch_reg_r_f_2__aq),
	.datab(u_kirsch_reg_r_b_2__aq),
	.datac(nx46527z3),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx39730z1),
	.cout());
// synopsys translate_off
defparam ix39730z7096.lut_mask = 16'hFCFA;
defparam ix39730z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N28
fiftyfivenm_lcell_comb ix39730z7097(
// Equation(s):
// nx39730z2 = (b_1_ & ((u_kirsch_reg_r_d_2__aq))) # (!b_1_ & (u_kirsch_reg_r_h_2__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_h_2__aq),
	.datac(u_kirsch_reg_r_d_2__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx39730z2),
	.cout());
// synopsys translate_off
defparam ix39730z7097.lut_mask = 16'hF0CC;
defparam ix39730z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N30
fiftyfivenm_lcell_comb ix39730z7095(
// Equation(s):
// u_kirsch_i1_val[2] = (nx39730z1 & ((nx39730z2) # (!nx46527z3)))

	.dataa(gnd),
	.datab(nx46527z3),
	.datac(nx39730z1),
	.datad(nx39730z2),
	.cin(gnd),
	.combout(u_kirsch_i1_val[2]),
	.cout());
// synopsys translate_off
defparam ix39730z7095.lut_mask = 16'hF030;
defparam ix39730z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N2
fiftyfivenm_lcell_comb ix39730z7100(
// Equation(s):
// nx39730z4 = (b_1_ & ((u_kirsch_reg_r_a_2__aq))) # (!b_1_ & (u_kirsch_reg_r_e_2__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_e_2__aq),
	.datac(u_kirsch_reg_r_a_2__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx39730z4),
	.cout());
// synopsys translate_off
defparam ix39730z7100.lut_mask = 16'hF0CC;
defparam ix39730z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N0
fiftyfivenm_lcell_comb ix39730z7099(
// Equation(s):
// nx39730z3 = (nx46527z3) # ((b_1_ & (u_kirsch_reg_r_g_2__aq)) # (!b_1_ & ((u_kirsch_reg_r_c_2__aq))))

	.dataa(u_kirsch_reg_r_g_2__aq),
	.datab(u_kirsch_reg_r_c_2__aq),
	.datac(nx46527z3),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx39730z3),
	.cout());
// synopsys translate_off
defparam ix39730z7099.lut_mask = 16'hFAFC;
defparam ix39730z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N0
fiftyfivenm_lcell_comb ix39730z7098(
// Equation(s):
// u_kirsch_i2_val[2] = (nx39730z3 & ((nx39730z4) # (!nx46527z3)))

	.dataa(nx39730z4),
	.datab(nx46527z3),
	.datac(gnd),
	.datad(nx39730z3),
	.cin(gnd),
	.combout(u_kirsch_i2_val[2]),
	.cout());
// synopsys translate_off
defparam ix39730z7098.lut_mask = 16'hBB00;
defparam ix39730z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N0
fiftyfivenm_lcell_comb ix24156z7097(
// Equation(s):
// nx24156z2 = (b_1_ & (u_kirsch_reg_r_d_1__aq)) # (!b_1_ & ((u_kirsch_reg_r_h_1__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_d_1__aq),
	.datac(u_kirsch_reg_r_h_1__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx24156z2),
	.cout());
// synopsys translate_off
defparam ix24156z7097.lut_mask = 16'hCCF0;
defparam ix24156z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N2
fiftyfivenm_lcell_comb ix24156z7096(
// Equation(s):
// nx24156z1 = (nx46527z3) # ((b_1_ & ((u_kirsch_reg_r_b_1__aq))) # (!b_1_ & (u_kirsch_reg_r_f_1__aq)))

	.dataa(b_1_),
	.datab(u_kirsch_reg_r_f_1__aq),
	.datac(nx46527z3),
	.datad(u_kirsch_reg_r_b_1__aq),
	.cin(gnd),
	.combout(nx24156z1),
	.cout());
// synopsys translate_off
defparam ix24156z7096.lut_mask = 16'hFEF4;
defparam ix24156z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N26
fiftyfivenm_lcell_comb ix24156z7095(
// Equation(s):
// u_kirsch_i1_val[1] = (nx24156z1 & ((nx24156z2) # (!nx46527z3)))

	.dataa(gnd),
	.datab(nx24156z2),
	.datac(nx46527z3),
	.datad(nx24156z1),
	.cin(gnd),
	.combout(u_kirsch_i1_val[1]),
	.cout());
// synopsys translate_off
defparam ix24156z7095.lut_mask = 16'hCF00;
defparam ix24156z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N28
fiftyfivenm_lcell_comb ix24156z7099(
// Equation(s):
// nx24156z3 = (nx46527z3) # ((b_1_ & (u_kirsch_reg_r_g_1__aq)) # (!b_1_ & ((u_kirsch_reg_r_c_1__aq))))

	.dataa(u_kirsch_reg_r_g_1__aq),
	.datab(nx46527z3),
	.datac(u_kirsch_reg_r_c_1__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx24156z3),
	.cout());
// synopsys translate_off
defparam ix24156z7099.lut_mask = 16'hEEFC;
defparam ix24156z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N20
fiftyfivenm_lcell_comb ix24156z7100(
// Equation(s):
// nx24156z4 = (b_1_ & (u_kirsch_reg_r_a_1__aq)) # (!b_1_ & ((u_kirsch_reg_r_e_1__aq)))

	.dataa(u_kirsch_reg_r_a_1__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_e_1__aq),
	.datad(b_1_),
	.cin(gnd),
	.combout(nx24156z4),
	.cout());
// synopsys translate_off
defparam ix24156z7100.lut_mask = 16'hAAF0;
defparam ix24156z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N24
fiftyfivenm_lcell_comb ix24156z7098(
// Equation(s):
// u_kirsch_i2_val[1] = (nx24156z3 & ((nx24156z4) # (!nx46527z3)))

	.dataa(nx46527z3),
	.datab(nx24156z3),
	.datac(gnd),
	.datad(nx24156z4),
	.cin(gnd),
	.combout(u_kirsch_i2_val[1]),
	.cout());
// synopsys translate_off
defparam ix24156z7098.lut_mask = 16'hCC44;
defparam ix24156z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N6
fiftyfivenm_lcell_comb ix56954z7096(
// Equation(s):
// nx56954z1 = (nx46527z3) # ((b_1_ & (u_kirsch_reg_r_b_0__aq)) # (!b_1_ & ((u_kirsch_reg_r_f_0__aq))))

	.dataa(u_kirsch_reg_r_b_0__aq),
	.datab(b_1_),
	.datac(u_kirsch_reg_r_f_0__aq),
	.datad(nx46527z3),
	.cin(gnd),
	.combout(nx56954z1),
	.cout());
// synopsys translate_off
defparam ix56954z7096.lut_mask = 16'hFFB8;
defparam ix56954z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N8
fiftyfivenm_lcell_comb ix56954z7097(
// Equation(s):
// nx56954z2 = (b_1_ & (u_kirsch_reg_r_d_0__aq)) # (!b_1_ & ((u_kirsch_reg_r_h_0__aq)))

	.dataa(u_kirsch_reg_r_d_0__aq),
	.datab(gnd),
	.datac(b_1_),
	.datad(u_kirsch_reg_r_h_0__aq),
	.cin(gnd),
	.combout(nx56954z2),
	.cout());
// synopsys translate_off
defparam ix56954z7097.lut_mask = 16'hAFA0;
defparam ix56954z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N30
fiftyfivenm_lcell_comb ix56954z7095(
// Equation(s):
// u_kirsch_i1_val[0] = (nx56954z1 & ((nx56954z2) # (!nx46527z3)))

	.dataa(nx56954z1),
	.datab(nx46527z3),
	.datac(nx56954z2),
	.datad(gnd),
	.cin(gnd),
	.combout(u_kirsch_i1_val[0]),
	.cout());
// synopsys translate_off
defparam ix56954z7095.lut_mask = 16'hA2A2;
defparam ix56954z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N12
fiftyfivenm_lcell_comb ix56954z7100(
// Equation(s):
// nx56954z4 = (b_1_ & ((u_kirsch_reg_r_a_0__aq))) # (!b_1_ & (u_kirsch_reg_r_e_0__aq))

	.dataa(u_kirsch_reg_r_e_0__aq),
	.datab(gnd),
	.datac(b_1_),
	.datad(u_kirsch_reg_r_a_0__aq),
	.cin(gnd),
	.combout(nx56954z4),
	.cout());
// synopsys translate_off
defparam ix56954z7100.lut_mask = 16'hFA0A;
defparam ix56954z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N2
fiftyfivenm_lcell_comb ix56954z7099(
// Equation(s):
// nx56954z3 = (nx46527z3) # ((b_1_ & (u_kirsch_reg_r_g_0__aq)) # (!b_1_ & ((u_kirsch_reg_r_c_0__aq))))

	.dataa(u_kirsch_reg_r_g_0__aq),
	.datab(u_kirsch_reg_r_c_0__aq),
	.datac(b_1_),
	.datad(nx46527z3),
	.cin(gnd),
	.combout(nx56954z3),
	.cout());
// synopsys translate_off
defparam ix56954z7099.lut_mask = 16'hFFAC;
defparam ix56954z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N2
fiftyfivenm_lcell_comb ix56954z7098(
// Equation(s):
// u_kirsch_i2_val[0] = (nx56954z3 & ((nx56954z4) # (!nx46527z3)))

	.dataa(nx56954z4),
	.datab(nx46527z3),
	.datac(gnd),
	.datad(nx56954z3),
	.cin(gnd),
	.combout(u_kirsch_i2_val[0]),
	.cout());
// synopsys translate_off
defparam ix56954z7098.lut_mask = 16'hBB00;
defparam ix56954z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N12
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix21_fadd(
// Equation(s):
// nx24156z5 = CARRY((u_kirsch_i1_val[0] & !u_kirsch_i2_val[0]))

	.dataa(u_kirsch_i1_val[0]),
	.datab(u_kirsch_i2_val[0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx24156z5));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix21_fadd.lut_mask = 16'h0022;
defparam u_kirsch_rtlc13_39_gt_67_ix21_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N14
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix23_fadd(
// Equation(s):
// nx39730z5 = CARRY((u_kirsch_i1_val[1] & (u_kirsch_i2_val[1] & !nx24156z5)) # (!u_kirsch_i1_val[1] & ((u_kirsch_i2_val[1]) # (!nx24156z5))))

	.dataa(u_kirsch_i1_val[1]),
	.datab(u_kirsch_i2_val[1]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx24156z5),
	.combout(),
	.cout(nx39730z5));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix23_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc13_39_gt_67_ix23_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N16
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix25_fadd(
// Equation(s):
// nx55304z5 = CARRY((u_kirsch_i1_val[2] & ((!nx39730z5) # (!u_kirsch_i2_val[2]))) # (!u_kirsch_i1_val[2] & (!u_kirsch_i2_val[2] & !nx39730z5)))

	.dataa(u_kirsch_i1_val[2]),
	.datab(u_kirsch_i2_val[2]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39730z5),
	.combout(),
	.cout(nx55304z5));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix25_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc13_39_gt_67_ix25_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N18
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix27_fadd(
// Equation(s):
// nx60194z5 = CARRY((u_kirsch_i2_val[3] & ((!nx55304z5) # (!u_kirsch_i1_val[3]))) # (!u_kirsch_i2_val[3] & (!u_kirsch_i1_val[3] & !nx55304z5)))

	.dataa(u_kirsch_i2_val[3]),
	.datab(u_kirsch_i1_val[3]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55304z5),
	.combout(),
	.cout(nx60194z5));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix27_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc13_39_gt_67_ix27_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N20
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix29_fadd(
// Equation(s):
// nx26563z5 = CARRY((u_kirsch_i2_val[4] & (u_kirsch_i1_val[4] & !nx60194z5)) # (!u_kirsch_i2_val[4] & ((u_kirsch_i1_val[4]) # (!nx60194z5))))

	.dataa(u_kirsch_i2_val[4]),
	.datab(u_kirsch_i1_val[4]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx60194z5),
	.combout(),
	.cout(nx26563z5));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix29_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc13_39_gt_67_ix29_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N22
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix31_fadd(
// Equation(s):
// nx10989z5 = CARRY((u_kirsch_i1_val[5] & (u_kirsch_i2_val[5] & !nx26563z5)) # (!u_kirsch_i1_val[5] & ((u_kirsch_i2_val[5]) # (!nx26563z5))))

	.dataa(u_kirsch_i1_val[5]),
	.datab(u_kirsch_i2_val[5]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx26563z5),
	.combout(),
	.cout(nx10989z5));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix31_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc13_39_gt_67_ix31_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N24
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix33_fadd(
// Equation(s):
// nx4585z1 = CARRY((u_kirsch_i2_val[6] & (u_kirsch_i1_val[6] & !nx10989z5)) # (!u_kirsch_i2_val[6] & ((u_kirsch_i1_val[6]) # (!nx10989z5))))

	.dataa(u_kirsch_i2_val[6]),
	.datab(u_kirsch_i1_val[6]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10989z5),
	.combout(),
	.cout(nx4585z1));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix33_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc13_39_gt_67_ix33_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N26
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix35_fadd(
// Equation(s):
// nx15243z1 = CARRY((u_kirsch_i2_val[7] & ((!nx4585z1) # (!u_kirsch_i1_val[7]))) # (!u_kirsch_i2_val[7] & (!u_kirsch_i1_val[7] & !nx4585z1)))

	.dataa(u_kirsch_i2_val[7]),
	.datab(u_kirsch_i1_val[7]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx4585z1),
	.combout(),
	.cout(nx15243z1));
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N28
fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf(
// Equation(s):
// nx46527z6 = !nx15243z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx15243z1),
	.combout(nx46527z6),
	.cout());
// synopsys translate_off
defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf.lut_mask = 16'h0F0F;
defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y19_N9
dffeas u_kirsch_reg_r1_val_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[7]),
	.asdata(u_kirsch_i1_val[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N15
dffeas u_kirsch_reg_r2_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y19_N11
dffeas u_kirsch_reg_r1_val_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[6]),
	.asdata(u_kirsch_i1_val[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N13
dffeas u_kirsch_reg_r2_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y19_N5
dffeas u_kirsch_reg_r1_val_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[5]),
	.asdata(u_kirsch_i1_val[5]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N11
dffeas u_kirsch_reg_r2_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y19_N7
dffeas u_kirsch_reg_r1_val_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[4]),
	.asdata(u_kirsch_i1_val[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N9
dffeas u_kirsch_reg_r2_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N7
dffeas u_kirsch_reg_r2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y22_N17
dffeas u_kirsch_reg_r1_val_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[3]),
	.asdata(u_kirsch_i1_val[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y19_N1
dffeas u_kirsch_reg_r1_val_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[2]),
	.asdata(u_kirsch_i1_val[2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N5
dffeas u_kirsch_reg_r2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N3
dffeas u_kirsch_reg_r2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N25
dffeas u_kirsch_reg_r1_val_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[1]),
	.asdata(u_kirsch_i1_val[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y19_N3
dffeas u_kirsch_reg_r1_val_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_i2_val[0]),
	.asdata(u_kirsch_i1_val[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx46527z6),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_val_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_val_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_val_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y18_N1
dffeas u_kirsch_reg_r2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r2_14n0r1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r2_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N4
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix37_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[0] = (u_kirsch_reg_r1_val_0__aq & (u_kirsch_reg_r2_0__aq $ (VCC))) # (!u_kirsch_reg_r1_val_0__aq & (u_kirsch_reg_r2_0__aq & VCC))
// nx33205z1 = CARRY((u_kirsch_reg_r1_val_0__aq & u_kirsch_reg_r2_0__aq))

	.dataa(u_kirsch_reg_r1_val_0__aq),
	.datab(u_kirsch_reg_r2_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_kirsch_r4_16n0r1[0]),
	.cout(nx33205z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix37_fadd.lut_mask = 16'h6688;
defparam u_kirsch_r4_add9_16i1_ix37_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N6
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix41_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[1] = (u_kirsch_reg_r2_1__aq & ((u_kirsch_reg_r1_val_1__aq & (nx33205z1 & VCC)) # (!u_kirsch_reg_r1_val_1__aq & (!nx33205z1)))) # (!u_kirsch_reg_r2_1__aq & ((u_kirsch_reg_r1_val_1__aq & (!nx33205z1)) # (!u_kirsch_reg_r1_val_1__aq & 
// ((nx33205z1) # (GND)))))
// nx2057z1 = CARRY((u_kirsch_reg_r2_1__aq & (!u_kirsch_reg_r1_val_1__aq & !nx33205z1)) # (!u_kirsch_reg_r2_1__aq & ((!nx33205z1) # (!u_kirsch_reg_r1_val_1__aq))))

	.dataa(u_kirsch_reg_r2_1__aq),
	.datab(u_kirsch_reg_r1_val_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33205z1),
	.combout(u_kirsch_r4_16n0r1[1]),
	.cout(nx2057z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix41_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r4_add9_16i1_ix41_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N8
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix45_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[2] = ((u_kirsch_reg_r1_val_2__aq $ (u_kirsch_reg_r2_2__aq $ (!nx2057z1)))) # (GND)
// nx29091z1 = CARRY((u_kirsch_reg_r1_val_2__aq & ((u_kirsch_reg_r2_2__aq) # (!nx2057z1))) # (!u_kirsch_reg_r1_val_2__aq & (u_kirsch_reg_r2_2__aq & !nx2057z1)))

	.dataa(u_kirsch_reg_r1_val_2__aq),
	.datab(u_kirsch_reg_r2_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx2057z1),
	.combout(u_kirsch_r4_16n0r1[2]),
	.cout(nx29091z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix45_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r4_add9_16i1_ix45_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N10
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix49_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[3] = (u_kirsch_reg_r2_3__aq & ((u_kirsch_reg_r1_val_3__aq & (nx29091z1 & VCC)) # (!u_kirsch_reg_r1_val_3__aq & (!nx29091z1)))) # (!u_kirsch_reg_r2_3__aq & ((u_kirsch_reg_r1_val_3__aq & (!nx29091z1)) # (!u_kirsch_reg_r1_val_3__aq & 
// ((nx29091z1) # (GND)))))
// nx52776z1 = CARRY((u_kirsch_reg_r2_3__aq & (!u_kirsch_reg_r1_val_3__aq & !nx29091z1)) # (!u_kirsch_reg_r2_3__aq & ((!nx29091z1) # (!u_kirsch_reg_r1_val_3__aq))))

	.dataa(u_kirsch_reg_r2_3__aq),
	.datab(u_kirsch_reg_r1_val_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx29091z1),
	.combout(u_kirsch_r4_16n0r1[3]),
	.cout(nx52776z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix49_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r4_add9_16i1_ix49_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N12
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix53_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[4] = ((u_kirsch_reg_r1_val_4__aq $ (u_kirsch_reg_r2_4__aq $ (!nx52776z1)))) # (GND)
// nx21628z1 = CARRY((u_kirsch_reg_r1_val_4__aq & ((u_kirsch_reg_r2_4__aq) # (!nx52776z1))) # (!u_kirsch_reg_r1_val_4__aq & (u_kirsch_reg_r2_4__aq & !nx52776z1)))

	.dataa(u_kirsch_reg_r1_val_4__aq),
	.datab(u_kirsch_reg_r2_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx52776z1),
	.combout(u_kirsch_r4_16n0r1[4]),
	.cout(nx21628z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix53_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r4_add9_16i1_ix53_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N14
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix57_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[5] = (u_kirsch_reg_r1_val_5__aq & ((u_kirsch_reg_r2_5__aq & (nx21628z1 & VCC)) # (!u_kirsch_reg_r2_5__aq & (!nx21628z1)))) # (!u_kirsch_reg_r1_val_5__aq & ((u_kirsch_reg_r2_5__aq & (!nx21628z1)) # (!u_kirsch_reg_r2_5__aq & ((nx21628z1) 
// # (GND)))))
// nx27577z1 = CARRY((u_kirsch_reg_r1_val_5__aq & (!u_kirsch_reg_r2_5__aq & !nx21628z1)) # (!u_kirsch_reg_r1_val_5__aq & ((!nx21628z1) # (!u_kirsch_reg_r2_5__aq))))

	.dataa(u_kirsch_reg_r1_val_5__aq),
	.datab(u_kirsch_reg_r2_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21628z1),
	.combout(u_kirsch_r4_16n0r1[5]),
	.cout(nx27577z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix57_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r4_add9_16i1_ix57_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N16
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix61_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[6] = ((u_kirsch_reg_r1_val_6__aq $ (u_kirsch_reg_r2_6__aq $ (!nx27577z1)))) # (GND)
// nx58725z1 = CARRY((u_kirsch_reg_r1_val_6__aq & ((u_kirsch_reg_r2_6__aq) # (!nx27577z1))) # (!u_kirsch_reg_r1_val_6__aq & (u_kirsch_reg_r2_6__aq & !nx27577z1)))

	.dataa(u_kirsch_reg_r1_val_6__aq),
	.datab(u_kirsch_reg_r2_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27577z1),
	.combout(u_kirsch_r4_16n0r1[6]),
	.cout(nx58725z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix61_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r4_add9_16i1_ix61_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N18
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix65_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[7] = (u_kirsch_reg_r1_val_7__aq & ((u_kirsch_reg_r2_7__aq & (nx58725z1 & VCC)) # (!u_kirsch_reg_r2_7__aq & (!nx58725z1)))) # (!u_kirsch_reg_r1_val_7__aq & ((u_kirsch_reg_r2_7__aq & (!nx58725z1)) # (!u_kirsch_reg_r2_7__aq & ((nx58725z1) 
// # (GND)))))
// nx41199z1 = CARRY((u_kirsch_reg_r1_val_7__aq & (!u_kirsch_reg_r2_7__aq & !nx58725z1)) # (!u_kirsch_reg_r1_val_7__aq & ((!nx58725z1) # (!u_kirsch_reg_r2_7__aq))))

	.dataa(u_kirsch_reg_r1_val_7__aq),
	.datab(u_kirsch_reg_r2_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58725z1),
	.combout(u_kirsch_r4_16n0r1[7]),
	.cout(nx41199z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix65_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r4_add9_16i1_ix65_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N20
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix69_fadd(
// Equation(s):
// u_kirsch_r4_16n0r1[8] = (u_kirsch_reg_r2_8__aq & (nx41199z1 $ (GND))) # (!u_kirsch_reg_r2_8__aq & (!nx41199z1 & VCC))
// nx7965z1 = CARRY((u_kirsch_reg_r2_8__aq & !nx41199z1))

	.dataa(gnd),
	.datab(u_kirsch_reg_r2_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx41199z1),
	.combout(u_kirsch_r4_16n0r1[8]),
	.cout(nx7965z1));
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix69_fadd.lut_mask = 16'hC30C;
defparam u_kirsch_r4_add9_16i1_ix69_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N22
fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix69_fadd_buf(
// Equation(s):
// u_kirsch_r4_16n0r1[9] = nx7965z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx7965z1),
	.combout(u_kirsch_r4_16n0r1[9]),
	.cout());
// synopsys translate_off
defparam u_kirsch_r4_add9_16i1_ix69_fadd_buf.lut_mask = 16'hF0F0;
defparam u_kirsch_r4_add9_16i1_ix69_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y19_N23
dffeas u_kirsch_reg_r4_val_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[9]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_9_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N21
dffeas u_kirsch_reg_r4_val_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N19
dffeas u_kirsch_reg_r5_val_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_8__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N19
dffeas u_kirsch_reg_r4_val_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N17
dffeas u_kirsch_reg_r5_val_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N17
dffeas u_kirsch_reg_r4_val_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N15
dffeas u_kirsch_reg_r5_val_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N15
dffeas u_kirsch_reg_r4_val_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N13
dffeas u_kirsch_reg_r5_val_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N13
dffeas u_kirsch_reg_r4_val_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N11
dffeas u_kirsch_reg_r5_val_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N11
dffeas u_kirsch_reg_r4_val_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N9
dffeas u_kirsch_reg_r5_val_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N9
dffeas u_kirsch_reg_r4_val_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N7
dffeas u_kirsch_reg_r5_val_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N7
dffeas u_kirsch_reg_r4_val_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N5
dffeas u_kirsch_reg_r5_val_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y19_N5
dffeas u_kirsch_reg_r4_val_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r4_16n0r1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_val_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_val_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_val_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N3
dffeas u_kirsch_reg_r5_val_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N2
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix25_fadd(
// Equation(s):
// nx6531z1 = CARRY((u_kirsch_reg_r4_val_0__aq & !u_kirsch_reg_r5_val_0__aq))

	.dataa(u_kirsch_reg_r4_val_0__aq),
	.datab(u_kirsch_reg_r5_val_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx6531z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix25_fadd.lut_mask = 16'h0022;
defparam u_kirsch_rtlc17_49_gt_69_ix25_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N4
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix27_fadd(
// Equation(s):
// nx56493z1 = CARRY((u_kirsch_reg_r4_val_1__aq & (u_kirsch_reg_r5_val_1__aq & !nx6531z1)) # (!u_kirsch_reg_r4_val_1__aq & ((u_kirsch_reg_r5_val_1__aq) # (!nx6531z1))))

	.dataa(u_kirsch_reg_r4_val_1__aq),
	.datab(u_kirsch_reg_r5_val_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx6531z1),
	.combout(),
	.cout(nx56493z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix27_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc17_49_gt_69_ix27_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N6
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix29_fadd(
// Equation(s):
// nx22862z1 = CARRY((u_kirsch_reg_r4_val_2__aq & ((!nx56493z1) # (!u_kirsch_reg_r5_val_2__aq))) # (!u_kirsch_reg_r4_val_2__aq & (!u_kirsch_reg_r5_val_2__aq & !nx56493z1)))

	.dataa(u_kirsch_reg_r4_val_2__aq),
	.datab(u_kirsch_reg_r5_val_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56493z1),
	.combout(),
	.cout(nx22862z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix29_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc17_49_gt_69_ix29_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N8
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix31_fadd(
// Equation(s):
// nx58248z1 = CARRY((u_kirsch_reg_r5_val_3__aq & ((!nx22862z1) # (!u_kirsch_reg_r4_val_3__aq))) # (!u_kirsch_reg_r5_val_3__aq & (!u_kirsch_reg_r4_val_3__aq & !nx22862z1)))

	.dataa(u_kirsch_reg_r5_val_3__aq),
	.datab(u_kirsch_reg_r4_val_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx22862z1),
	.combout(),
	.cout(nx58248z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix31_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc17_49_gt_69_ix31_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N10
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix33_fadd(
// Equation(s):
// nx8286z1 = CARRY((u_kirsch_reg_r4_val_4__aq & ((!nx58248z1) # (!u_kirsch_reg_r5_val_4__aq))) # (!u_kirsch_reg_r4_val_4__aq & (!u_kirsch_reg_r5_val_4__aq & !nx58248z1)))

	.dataa(u_kirsch_reg_r4_val_4__aq),
	.datab(u_kirsch_reg_r5_val_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58248z1),
	.combout(),
	.cout(nx8286z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix33_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc17_49_gt_69_ix33_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N12
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix35_fadd(
// Equation(s):
// nx23860z1 = CARRY((u_kirsch_reg_r4_val_5__aq & (u_kirsch_reg_r5_val_5__aq & !nx8286z1)) # (!u_kirsch_reg_r4_val_5__aq & ((u_kirsch_reg_r5_val_5__aq) # (!nx8286z1))))

	.dataa(u_kirsch_reg_r4_val_5__aq),
	.datab(u_kirsch_reg_r5_val_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx8286z1),
	.combout(),
	.cout(nx23860z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix35_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc17_49_gt_69_ix35_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N14
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix37_fadd(
// Equation(s):
// nx26102z1 = CARRY((u_kirsch_reg_r5_val_6__aq & (u_kirsch_reg_r4_val_6__aq & !nx23860z1)) # (!u_kirsch_reg_r5_val_6__aq & ((u_kirsch_reg_r4_val_6__aq) # (!nx23860z1))))

	.dataa(u_kirsch_reg_r5_val_6__aq),
	.datab(u_kirsch_reg_r4_val_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23860z1),
	.combout(),
	.cout(nx26102z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix37_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc17_49_gt_69_ix37_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N16
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix39_fadd(
// Equation(s):
// nx58007z1 = CARRY((u_kirsch_reg_r4_val_7__aq & (u_kirsch_reg_r5_val_7__aq & !nx26102z1)) # (!u_kirsch_reg_r4_val_7__aq & ((u_kirsch_reg_r5_val_7__aq) # (!nx26102z1))))

	.dataa(u_kirsch_reg_r4_val_7__aq),
	.datab(u_kirsch_reg_r5_val_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx26102z1),
	.combout(),
	.cout(nx58007z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix39_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc17_49_gt_69_ix39_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N18
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix41_fadd(
// Equation(s):
// nx42433z1 = CARRY((u_kirsch_reg_r4_val_8__aq & ((!nx58007z1) # (!u_kirsch_reg_r5_val_8__aq))) # (!u_kirsch_reg_r4_val_8__aq & (!u_kirsch_reg_r5_val_8__aq & !nx58007z1)))

	.dataa(u_kirsch_reg_r4_val_8__aq),
	.datab(u_kirsch_reg_r5_val_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58007z1),
	.combout(),
	.cout(nx42433z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix41_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc17_49_gt_69_ix41_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N20
fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix43_fadd(
// Equation(s):
// nx39326z1 = CARRY((u_kirsch_reg_r5_val_9__aq & ((!nx42433z1) # (!u_kirsch_reg_r4_val_9__aq))) # (!u_kirsch_reg_r5_val_9__aq & (!u_kirsch_reg_r4_val_9__aq & !nx42433z1)))

	.dataa(u_kirsch_reg_r5_val_9__aq),
	.datab(u_kirsch_reg_r4_val_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42433z1),
	.combout(),
	.cout(nx39326z1));
// synopsys translate_off
defparam u_kirsch_rtlc17_49_gt_69_ix43_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc17_49_gt_69_ix43_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N22
fiftyfivenm_lcell_comb ix1899_fadd(
// Equation(s):
// nx3238z1 = (u_kirsch_reg_v_2__aq) # (!nx39326z1)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_v_2__aq),
	.cin(nx39326z1),
	.combout(nx3238z1),
	.cout());
// synopsys translate_off
defparam ix1899_fadd.lut_mask = 16'hFF0F;
defparam ix1899_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y18_N21
dffeas u_kirsch_reg_r5_val_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r4_val_9__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_val_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_val_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_val_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N6
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix45_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[0] = (u_kirsch_reg_r3_0__aq & (u_kirsch_reg_r2_0__aq $ (VCC))) # (!u_kirsch_reg_r3_0__aq & (u_kirsch_reg_r2_0__aq & VCC))
// nx15489z1 = CARRY((u_kirsch_reg_r3_0__aq & u_kirsch_reg_r2_0__aq))

	.dataa(u_kirsch_reg_r3_0__aq),
	.datab(u_kirsch_reg_r2_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_kirsch_r3_15n1s1[0]),
	.cout(nx15489z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix45_fadd.lut_mask = 16'h6688;
defparam u_kirsch_r3_add12_15i1_ix45_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y20_N7
dffeas u_kirsch_reg_r3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[0]),
	.asdata(u_kirsch_reg_r2_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N8
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix49_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[1] = (u_kirsch_reg_r3_1__aq & ((u_kirsch_reg_r2_1__aq & (nx15489z1 & VCC)) # (!u_kirsch_reg_r2_1__aq & (!nx15489z1)))) # (!u_kirsch_reg_r3_1__aq & ((u_kirsch_reg_r2_1__aq & (!nx15489z1)) # (!u_kirsch_reg_r2_1__aq & ((nx15489z1) # 
// (GND)))))
// nx31820z1 = CARRY((u_kirsch_reg_r3_1__aq & (!u_kirsch_reg_r2_1__aq & !nx15489z1)) # (!u_kirsch_reg_r3_1__aq & ((!nx15489z1) # (!u_kirsch_reg_r2_1__aq))))

	.dataa(u_kirsch_reg_r3_1__aq),
	.datab(u_kirsch_reg_r2_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx15489z1),
	.combout(u_kirsch_r3_15n1s1[1]),
	.cout(nx31820z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix49_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r3_add12_15i1_ix49_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N9
dffeas u_kirsch_reg_r3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[1]),
	.asdata(u_kirsch_reg_r2_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N10
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix53_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[2] = ((u_kirsch_reg_r3_2__aq $ (u_kirsch_reg_r2_2__aq $ (!nx31820z1)))) # (GND)
// nx64864z1 = CARRY((u_kirsch_reg_r3_2__aq & ((u_kirsch_reg_r2_2__aq) # (!nx31820z1))) # (!u_kirsch_reg_r3_2__aq & (u_kirsch_reg_r2_2__aq & !nx31820z1)))

	.dataa(u_kirsch_reg_r3_2__aq),
	.datab(u_kirsch_reg_r2_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31820z1),
	.combout(u_kirsch_r3_15n1s1[2]),
	.cout(nx64864z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix53_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r3_add12_15i1_ix53_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N11
dffeas u_kirsch_reg_r3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[2]),
	.asdata(u_kirsch_reg_r2_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N12
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix57_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[3] = (u_kirsch_reg_r3_3__aq & ((u_kirsch_reg_r2_3__aq & (nx64864z1 & VCC)) # (!u_kirsch_reg_r2_3__aq & (!nx64864z1)))) # (!u_kirsch_reg_r3_3__aq & ((u_kirsch_reg_r2_3__aq & (!nx64864z1)) # (!u_kirsch_reg_r2_3__aq & ((nx64864z1) # 
// (GND)))))
// nx48533z1 = CARRY((u_kirsch_reg_r3_3__aq & (!u_kirsch_reg_r2_3__aq & !nx64864z1)) # (!u_kirsch_reg_r3_3__aq & ((!nx64864z1) # (!u_kirsch_reg_r2_3__aq))))

	.dataa(u_kirsch_reg_r3_3__aq),
	.datab(u_kirsch_reg_r2_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx64864z1),
	.combout(u_kirsch_r3_15n1s1[3]),
	.cout(nx48533z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix57_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r3_add12_15i1_ix57_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N13
dffeas u_kirsch_reg_r3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[3]),
	.asdata(u_kirsch_reg_r2_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N14
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix61_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[4] = ((u_kirsch_reg_r3_4__aq $ (u_kirsch_reg_r2_4__aq $ (!nx48533z1)))) # (GND)
// nx51391z1 = CARRY((u_kirsch_reg_r3_4__aq & ((u_kirsch_reg_r2_4__aq) # (!nx48533z1))) # (!u_kirsch_reg_r3_4__aq & (u_kirsch_reg_r2_4__aq & !nx48533z1)))

	.dataa(u_kirsch_reg_r3_4__aq),
	.datab(u_kirsch_reg_r2_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx48533z1),
	.combout(u_kirsch_r3_15n1s1[4]),
	.cout(nx51391z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix61_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r3_add12_15i1_ix61_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N15
dffeas u_kirsch_reg_r3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[4]),
	.asdata(u_kirsch_reg_r2_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N16
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix65_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[5] = (u_kirsch_reg_r3_5__aq & ((u_kirsch_reg_r2_5__aq & (nx51391z1 & VCC)) # (!u_kirsch_reg_r2_5__aq & (!nx51391z1)))) # (!u_kirsch_reg_r3_5__aq & ((u_kirsch_reg_r2_5__aq & (!nx51391z1)) # (!u_kirsch_reg_r2_5__aq & ((nx51391z1) # 
// (GND)))))
// nx45293z1 = CARRY((u_kirsch_reg_r3_5__aq & (!u_kirsch_reg_r2_5__aq & !nx51391z1)) # (!u_kirsch_reg_r3_5__aq & ((!nx51391z1) # (!u_kirsch_reg_r2_5__aq))))

	.dataa(u_kirsch_reg_r3_5__aq),
	.datab(u_kirsch_reg_r2_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx51391z1),
	.combout(u_kirsch_r3_15n1s1[5]),
	.cout(nx45293z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix65_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r3_add12_15i1_ix65_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N17
dffeas u_kirsch_reg_r3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[5]),
	.asdata(u_kirsch_reg_r2_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N18
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix69_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[6] = ((u_kirsch_reg_r2_6__aq $ (u_kirsch_reg_r3_6__aq $ (!nx45293z1)))) # (GND)
// nx28962z1 = CARRY((u_kirsch_reg_r2_6__aq & ((u_kirsch_reg_r3_6__aq) # (!nx45293z1))) # (!u_kirsch_reg_r2_6__aq & (u_kirsch_reg_r3_6__aq & !nx45293z1)))

	.dataa(u_kirsch_reg_r2_6__aq),
	.datab(u_kirsch_reg_r3_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx45293z1),
	.combout(u_kirsch_r3_15n1s1[6]),
	.cout(nx28962z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix69_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r3_add12_15i1_ix69_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N19
dffeas u_kirsch_reg_r3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[6]),
	.asdata(u_kirsch_reg_r2_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N20
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix73_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[7] = (u_kirsch_reg_r3_7__aq & ((u_kirsch_reg_r2_7__aq & (nx28962z1 & VCC)) # (!u_kirsch_reg_r2_7__aq & (!nx28962z1)))) # (!u_kirsch_reg_r3_7__aq & ((u_kirsch_reg_r2_7__aq & (!nx28962z1)) # (!u_kirsch_reg_r2_7__aq & ((nx28962z1) # 
// (GND)))))
// nx5426z1 = CARRY((u_kirsch_reg_r3_7__aq & (!u_kirsch_reg_r2_7__aq & !nx28962z1)) # (!u_kirsch_reg_r3_7__aq & ((!nx28962z1) # (!u_kirsch_reg_r2_7__aq))))

	.dataa(u_kirsch_reg_r3_7__aq),
	.datab(u_kirsch_reg_r2_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx28962z1),
	.combout(u_kirsch_r3_15n1s1[7]),
	.cout(nx5426z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix73_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r3_add12_15i1_ix73_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N21
dffeas u_kirsch_reg_r3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[7]),
	.asdata(u_kirsch_reg_r2_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N22
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix77_fadd(
// Equation(s):
// u_kirsch_r3_15n1s1[8] = ((u_kirsch_reg_r2_8__aq $ (u_kirsch_reg_r3_8__aq $ (!nx5426z1)))) # (GND)
// nx43779z1 = CARRY((u_kirsch_reg_r2_8__aq & ((u_kirsch_reg_r3_8__aq) # (!nx5426z1))) # (!u_kirsch_reg_r2_8__aq & (u_kirsch_reg_r3_8__aq & !nx5426z1)))

	.dataa(u_kirsch_reg_r2_8__aq),
	.datab(u_kirsch_reg_r3_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx5426z1),
	.combout(u_kirsch_r3_15n1s1[8]),
	.cout(nx43779z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix77_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r3_add12_15i1_ix77_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N23
dffeas u_kirsch_reg_r3_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r3_15n1s1[8]),
	.asdata(u_kirsch_reg_r2_8__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_kirsch_reg_v_1__aq),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N24
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix81_fadd(
// Equation(s):
// nx16733z1 = ((!u_kirsch_reg_v_1__aq & (u_kirsch_reg_r3_9__aq $ (nx43779z1)))) # (GND)
// nx9391z1 = CARRY((!nx43779z1) # (!u_kirsch_reg_r3_9__aq))

	.dataa(u_kirsch_reg_v_1__aq),
	.datab(u_kirsch_reg_r3_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx43779z1),
	.combout(nx16733z1),
	.cout(nx9391z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix81_fadd.lut_mask = 16'h143F;
defparam u_kirsch_r3_add12_15i1_ix81_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N25
dffeas u_kirsch_reg_r3_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx16733z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N26
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix85_fadd(
// Equation(s):
// nx51853z1 = ((!u_kirsch_reg_v_1__aq & (u_kirsch_reg_r3_10__aq $ (!nx9391z1)))) # (GND)
// nx24965z1 = CARRY((u_kirsch_reg_r3_10__aq & !nx9391z1))

	.dataa(u_kirsch_reg_v_1__aq),
	.datab(u_kirsch_reg_r3_10__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9391z1),
	.combout(nx51853z1),
	.cout(nx24965z1));
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix85_fadd.lut_mask = 16'h410C;
defparam u_kirsch_r3_add12_15i1_ix85_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N27
dffeas u_kirsch_reg_r3_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51853z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_10_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N28
fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix87_fadd(
// Equation(s):
// nx50856z1 = (!u_kirsch_reg_v_1__aq & (u_kirsch_reg_r3_11__aq $ (nx24965z1)))

	.dataa(u_kirsch_reg_v_1__aq),
	.datab(u_kirsch_reg_r3_11__aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx24965z1),
	.combout(nx50856z1),
	.cout());
// synopsys translate_off
defparam u_kirsch_r3_add12_15i1_ix87_fadd.lut_mask = 16'h1414;
defparam u_kirsch_r3_add12_15i1_ix87_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y20_N29
dffeas u_kirsch_reg_r3_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx50856z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r3_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r3_11_.is_wysiwyg = "true";
defparam u_kirsch_reg_r3_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N6
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix34_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[1] = (u_kirsch_reg_r3_0__aq & (u_kirsch_reg_r3_1__aq $ (VCC))) # (!u_kirsch_reg_r3_0__aq & (u_kirsch_reg_r3_1__aq & VCC))
// nx45160z1 = CARRY((u_kirsch_reg_r3_0__aq & u_kirsch_reg_r3_1__aq))

	.dataa(u_kirsch_reg_r3_0__aq),
	.datab(u_kirsch_reg_r3_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_kirsch_r6_18n0r1[1]),
	.cout(nx45160z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix34_fadd.lut_mask = 16'h6688;
defparam u_kirsch_r6_add11_18i1_ix34_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N8
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix38_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[2] = (u_kirsch_reg_r3_2__aq & ((u_kirsch_reg_r3_1__aq & (nx45160z1 & VCC)) # (!u_kirsch_reg_r3_1__aq & (!nx45160z1)))) # (!u_kirsch_reg_r3_2__aq & ((u_kirsch_reg_r3_1__aq & (!nx45160z1)) # (!u_kirsch_reg_r3_1__aq & ((nx45160z1) # 
// (GND)))))
// nx4045z1 = CARRY((u_kirsch_reg_r3_2__aq & (!u_kirsch_reg_r3_1__aq & !nx45160z1)) # (!u_kirsch_reg_r3_2__aq & ((!nx45160z1) # (!u_kirsch_reg_r3_1__aq))))

	.dataa(u_kirsch_reg_r3_2__aq),
	.datab(u_kirsch_reg_r3_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx45160z1),
	.combout(u_kirsch_r6_18n0r1[2]),
	.cout(nx4045z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix38_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r6_add11_18i1_ix38_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N10
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix42_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[3] = ((u_kirsch_reg_r3_2__aq $ (u_kirsch_reg_r3_3__aq $ (!nx4045z1)))) # (GND)
// nx35193z1 = CARRY((u_kirsch_reg_r3_2__aq & ((u_kirsch_reg_r3_3__aq) # (!nx4045z1))) # (!u_kirsch_reg_r3_2__aq & (u_kirsch_reg_r3_3__aq & !nx4045z1)))

	.dataa(u_kirsch_reg_r3_2__aq),
	.datab(u_kirsch_reg_r3_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx4045z1),
	.combout(u_kirsch_r6_18n0r1[3]),
	.cout(nx35193z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix42_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r6_add11_18i1_ix42_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N12
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix46_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[4] = (u_kirsch_reg_r3_4__aq & ((u_kirsch_reg_r3_3__aq & (nx35193z1 & VCC)) # (!u_kirsch_reg_r3_3__aq & (!nx35193z1)))) # (!u_kirsch_reg_r3_4__aq & ((u_kirsch_reg_r3_3__aq & (!nx35193z1)) # (!u_kirsch_reg_r3_3__aq & ((nx35193z1) # 
// (GND)))))
// nx46674z1 = CARRY((u_kirsch_reg_r3_4__aq & (!u_kirsch_reg_r3_3__aq & !nx35193z1)) # (!u_kirsch_reg_r3_4__aq & ((!nx35193z1) # (!u_kirsch_reg_r3_3__aq))))

	.dataa(u_kirsch_reg_r3_4__aq),
	.datab(u_kirsch_reg_r3_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx35193z1),
	.combout(u_kirsch_r6_18n0r1[4]),
	.cout(nx46674z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix46_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r6_add11_18i1_ix46_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N14
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix50_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[5] = ((u_kirsch_reg_r3_4__aq $ (u_kirsch_reg_r3_5__aq $ (!nx46674z1)))) # (GND)
// nx50010z1 = CARRY((u_kirsch_reg_r3_4__aq & ((u_kirsch_reg_r3_5__aq) # (!nx46674z1))) # (!u_kirsch_reg_r3_4__aq & (u_kirsch_reg_r3_5__aq & !nx46674z1)))

	.dataa(u_kirsch_reg_r3_4__aq),
	.datab(u_kirsch_reg_r3_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46674z1),
	.combout(u_kirsch_r6_18n0r1[5]),
	.cout(nx50010z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix50_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r6_add11_18i1_ix50_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N16
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix54_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[6] = (u_kirsch_reg_r3_6__aq & ((u_kirsch_reg_r3_5__aq & (nx50010z1 & VCC)) # (!u_kirsch_reg_r3_5__aq & (!nx50010z1)))) # (!u_kirsch_reg_r3_6__aq & ((u_kirsch_reg_r3_5__aq & (!nx50010z1)) # (!u_kirsch_reg_r3_5__aq & ((nx50010z1) # 
// (GND)))))
// nx15622z1 = CARRY((u_kirsch_reg_r3_6__aq & (!u_kirsch_reg_r3_5__aq & !nx50010z1)) # (!u_kirsch_reg_r3_6__aq & ((!nx50010z1) # (!u_kirsch_reg_r3_5__aq))))

	.dataa(u_kirsch_reg_r3_6__aq),
	.datab(u_kirsch_reg_r3_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50010z1),
	.combout(u_kirsch_r6_18n0r1[6]),
	.cout(nx15622z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix54_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r6_add11_18i1_ix54_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N18
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix58_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[7] = ((u_kirsch_reg_r3_6__aq $ (u_kirsch_reg_r3_7__aq $ (!nx15622z1)))) # (GND)
// nx709z1 = CARRY((u_kirsch_reg_r3_6__aq & ((u_kirsch_reg_r3_7__aq) # (!nx15622z1))) # (!u_kirsch_reg_r3_6__aq & (u_kirsch_reg_r3_7__aq & !nx15622z1)))

	.dataa(u_kirsch_reg_r3_6__aq),
	.datab(u_kirsch_reg_r3_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx15622z1),
	.combout(u_kirsch_r6_18n0r1[7]),
	.cout(nx709z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix58_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r6_add11_18i1_ix58_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N20
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix62_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[8] = (u_kirsch_reg_r3_7__aq & ((u_kirsch_reg_r3_8__aq & (nx709z1 & VCC)) # (!u_kirsch_reg_r3_8__aq & (!nx709z1)))) # (!u_kirsch_reg_r3_7__aq & ((u_kirsch_reg_r3_8__aq & (!nx709z1)) # (!u_kirsch_reg_r3_8__aq & ((nx709z1) # (GND)))))
// nx30439z1 = CARRY((u_kirsch_reg_r3_7__aq & (!u_kirsch_reg_r3_8__aq & !nx709z1)) # (!u_kirsch_reg_r3_7__aq & ((!nx709z1) # (!u_kirsch_reg_r3_8__aq))))

	.dataa(u_kirsch_reg_r3_7__aq),
	.datab(u_kirsch_reg_r3_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx709z1),
	.combout(u_kirsch_r6_18n0r1[8]),
	.cout(nx30439z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix62_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r6_add11_18i1_ix62_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N22
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix66_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[9] = ((u_kirsch_reg_r3_9__aq $ (u_kirsch_reg_r3_8__aq $ (!nx30439z1)))) # (GND)
// nx14108z1 = CARRY((u_kirsch_reg_r3_9__aq & ((u_kirsch_reg_r3_8__aq) # (!nx30439z1))) # (!u_kirsch_reg_r3_9__aq & (u_kirsch_reg_r3_8__aq & !nx30439z1)))

	.dataa(u_kirsch_reg_r3_9__aq),
	.datab(u_kirsch_reg_r3_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx30439z1),
	.combout(u_kirsch_r6_18n0r1[9]),
	.cout(nx14108z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix66_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r6_add11_18i1_ix66_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N24
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix70_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[10] = (u_kirsch_reg_r3_9__aq & ((u_kirsch_reg_r3_10__aq & (nx14108z1 & VCC)) # (!u_kirsch_reg_r3_10__aq & (!nx14108z1)))) # (!u_kirsch_reg_r3_9__aq & ((u_kirsch_reg_r3_10__aq & (!nx14108z1)) # (!u_kirsch_reg_r3_10__aq & ((nx14108z1) # 
// (GND)))))
// nx20280z1 = CARRY((u_kirsch_reg_r3_9__aq & (!u_kirsch_reg_r3_10__aq & !nx14108z1)) # (!u_kirsch_reg_r3_9__aq & ((!nx14108z1) # (!u_kirsch_reg_r3_10__aq))))

	.dataa(u_kirsch_reg_r3_9__aq),
	.datab(u_kirsch_reg_r3_10__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx14108z1),
	.combout(u_kirsch_r6_18n0r1[10]),
	.cout(nx20280z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix70_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r6_add11_18i1_ix70_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N26
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix74_fadd(
// Equation(s):
// u_kirsch_r6_18n0r1[11] = ((u_kirsch_reg_r3_10__aq $ (u_kirsch_reg_r3_11__aq $ (!nx20280z1)))) # (GND)
// nx63132z1 = CARRY((u_kirsch_reg_r3_10__aq & ((u_kirsch_reg_r3_11__aq) # (!nx20280z1))) # (!u_kirsch_reg_r3_10__aq & (u_kirsch_reg_r3_11__aq & !nx20280z1)))

	.dataa(u_kirsch_reg_r3_10__aq),
	.datab(u_kirsch_reg_r3_11__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx20280z1),
	.combout(u_kirsch_r6_18n0r1[11]),
	.cout(nx63132z1));
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix74_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r6_add11_18i1_ix74_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N28
fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix74_fadd_buf(
// Equation(s):
// u_kirsch_r6_18n0r1[12] = nx63132z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx63132z1),
	.combout(u_kirsch_r6_18n0r1[12]),
	.cout());
// synopsys translate_off
defparam u_kirsch_r6_add11_18i1_ix74_fadd_buf.lut_mask = 16'hF0F0;
defparam u_kirsch_r6_add11_18i1_ix74_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y20_N29
dffeas u_kirsch_reg_r6_12_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[12]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_12__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_12_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_12_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N27
dffeas u_kirsch_reg_r6_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[11]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_11_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_11_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N25
dffeas u_kirsch_reg_r6_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[10]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_10_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_10_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N23
dffeas u_kirsch_reg_r6_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[9]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_9_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N21
dffeas u_kirsch_reg_r6_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N19
dffeas u_kirsch_reg_r6_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N17
dffeas u_kirsch_reg_r6_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N15
dffeas u_kirsch_reg_r6_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N13
dffeas u_kirsch_reg_r6_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N11
dffeas u_kirsch_reg_r6_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N9
dffeas u_kirsch_reg_r6_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y20_N7
dffeas u_kirsch_reg_r6_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r6_18n0r1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N1
dffeas u_kirsch_reg_r6_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r3_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r6_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r6_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r6_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N0
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix22_fadd(
// Equation(s):
// nx14412z1 = CARRY((!u_kirsch_reg_r6_1__aq & !u_kirsch_reg_r6_0__aq))

	.dataa(u_kirsch_reg_r6_1__aq),
	.datab(u_kirsch_reg_r6_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx14412z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix22_fadd.lut_mask = 16'h0011;
defparam u_kirsch_r7_sub13_19i1_ix22_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N2
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix24_fadd(
// Equation(s):
// nx35550z1 = CARRY((u_kirsch_reg_r6_2__aq) # (!nx14412z1))

	.dataa(gnd),
	.datab(u_kirsch_reg_r6_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx14412z1),
	.combout(),
	.cout(nx35550z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix24_fadd.lut_mask = 16'h00CF;
defparam u_kirsch_r7_sub13_19i1_ix24_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N4
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix26_fadd(
// Equation(s):
// nx19976z1 = CARRY((u_kirsch_reg_r6_3__aq & (u_kirsch_reg_r5_val_0__aq & !nx35550z1)) # (!u_kirsch_reg_r6_3__aq & ((u_kirsch_reg_r5_val_0__aq) # (!nx35550z1))))

	.dataa(u_kirsch_reg_r6_3__aq),
	.datab(u_kirsch_reg_r5_val_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx35550z1),
	.combout(),
	.cout(nx19976z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix26_fadd.lut_mask = 16'h004D;
defparam u_kirsch_r7_sub13_19i1_ix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N6
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix28_fadd(
// Equation(s):
// nx51881z1 = CARRY((u_kirsch_reg_r5_val_1__aq & (u_kirsch_reg_r6_4__aq & !nx19976z1)) # (!u_kirsch_reg_r5_val_1__aq & ((u_kirsch_reg_r6_4__aq) # (!nx19976z1))))

	.dataa(u_kirsch_reg_r5_val_1__aq),
	.datab(u_kirsch_reg_r6_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx19976z1),
	.combout(),
	.cout(nx51881z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix28_fadd.lut_mask = 16'h004D;
defparam u_kirsch_r7_sub13_19i1_ix28_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N8
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix30_fadd(
// Equation(s):
// nx29229z1 = CARRY((u_kirsch_reg_r6_5__aq & (u_kirsch_reg_r5_val_2__aq & !nx51881z1)) # (!u_kirsch_reg_r6_5__aq & ((u_kirsch_reg_r5_val_2__aq) # (!nx51881z1))))

	.dataa(u_kirsch_reg_r6_5__aq),
	.datab(u_kirsch_reg_r5_val_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx51881z1),
	.combout(),
	.cout(nx29229z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix30_fadd.lut_mask = 16'h004D;
defparam u_kirsch_r7_sub13_19i1_ix30_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N10
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix32_fadd(
// Equation(s):
// nx60377z1 = CARRY((u_kirsch_reg_r5_val_3__aq & (u_kirsch_reg_r6_6__aq & !nx29229z1)) # (!u_kirsch_reg_r5_val_3__aq & ((u_kirsch_reg_r6_6__aq) # (!nx29229z1))))

	.dataa(u_kirsch_reg_r5_val_3__aq),
	.datab(u_kirsch_reg_r6_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx29229z1),
	.combout(),
	.cout(nx60377z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix32_fadd.lut_mask = 16'h004D;
defparam u_kirsch_r7_sub13_19i1_ix32_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N12
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix36_fadd(
// Equation(s):
// u_kirsch_r7_19n0r1_7_ = ((u_kirsch_reg_r5_val_4__aq $ (u_kirsch_reg_r6_7__aq $ (nx60377z1)))) # (GND)
// nx21490z1 = CARRY((u_kirsch_reg_r5_val_4__aq & ((!nx60377z1) # (!u_kirsch_reg_r6_7__aq))) # (!u_kirsch_reg_r5_val_4__aq & (!u_kirsch_reg_r6_7__aq & !nx60377z1)))

	.dataa(u_kirsch_reg_r5_val_4__aq),
	.datab(u_kirsch_reg_r6_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx60377z1),
	.combout(u_kirsch_r7_19n0r1_7_),
	.cout(nx21490z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix36_fadd.lut_mask = 16'h962B;
defparam u_kirsch_r7_sub13_19i1_ix36_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N14
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix40_fadd(
// Equation(s):
// u_kirsch_r7_19n0r1_8_ = (u_kirsch_reg_r6_8__aq & ((u_kirsch_reg_r5_val_5__aq & (!nx21490z1)) # (!u_kirsch_reg_r5_val_5__aq & ((nx21490z1) # (GND))))) # (!u_kirsch_reg_r6_8__aq & ((u_kirsch_reg_r5_val_5__aq & (nx21490z1 & VCC)) # 
// (!u_kirsch_reg_r5_val_5__aq & (!nx21490z1))))
// nx55878z1 = CARRY((u_kirsch_reg_r6_8__aq & ((!nx21490z1) # (!u_kirsch_reg_r5_val_5__aq))) # (!u_kirsch_reg_r6_8__aq & (!u_kirsch_reg_r5_val_5__aq & !nx21490z1)))

	.dataa(u_kirsch_reg_r6_8__aq),
	.datab(u_kirsch_reg_r5_val_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21490z1),
	.combout(u_kirsch_r7_19n0r1_8_),
	.cout(nx55878z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix40_fadd.lut_mask = 16'h692B;
defparam u_kirsch_r7_sub13_19i1_ix40_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N16
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix44_fadd(
// Equation(s):
// u_kirsch_r7_19n0r1_9_ = ((u_kirsch_reg_r5_val_6__aq $ (u_kirsch_reg_r6_9__aq $ (nx55878z1)))) # (GND)
// nx40806z1 = CARRY((u_kirsch_reg_r5_val_6__aq & ((!nx55878z1) # (!u_kirsch_reg_r6_9__aq))) # (!u_kirsch_reg_r5_val_6__aq & (!u_kirsch_reg_r6_9__aq & !nx55878z1)))

	.dataa(u_kirsch_reg_r5_val_6__aq),
	.datab(u_kirsch_reg_r6_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55878z1),
	.combout(u_kirsch_r7_19n0r1_9_),
	.cout(nx40806z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix44_fadd.lut_mask = 16'h962B;
defparam u_kirsch_r7_sub13_19i1_ix44_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N18
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix48_fadd(
// Equation(s):
// u_kirsch_r7_19n0r1_10_ = (u_kirsch_reg_r6_10__aq & ((u_kirsch_reg_r5_val_7__aq & (!nx40806z1)) # (!u_kirsch_reg_r5_val_7__aq & ((nx40806z1) # (GND))))) # (!u_kirsch_reg_r6_10__aq & ((u_kirsch_reg_r5_val_7__aq & (nx40806z1 & VCC)) # 
// (!u_kirsch_reg_r5_val_7__aq & (!nx40806z1))))
// nx41061z1 = CARRY((u_kirsch_reg_r6_10__aq & ((!nx40806z1) # (!u_kirsch_reg_r5_val_7__aq))) # (!u_kirsch_reg_r6_10__aq & (!u_kirsch_reg_r5_val_7__aq & !nx40806z1)))

	.dataa(u_kirsch_reg_r6_10__aq),
	.datab(u_kirsch_reg_r5_val_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx40806z1),
	.combout(u_kirsch_r7_19n0r1_10_),
	.cout(nx41061z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix48_fadd.lut_mask = 16'h692B;
defparam u_kirsch_r7_sub13_19i1_ix48_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N20
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix52_fadd(
// Equation(s):
// u_kirsch_r7_19n0r1_11_ = ((u_kirsch_reg_r5_val_8__aq $ (u_kirsch_reg_r6_11__aq $ (nx41061z1)))) # (GND)
// nx9913z1 = CARRY((u_kirsch_reg_r5_val_8__aq & ((!nx41061z1) # (!u_kirsch_reg_r6_11__aq))) # (!u_kirsch_reg_r5_val_8__aq & (!u_kirsch_reg_r6_11__aq & !nx41061z1)))

	.dataa(u_kirsch_reg_r5_val_8__aq),
	.datab(u_kirsch_reg_r6_11__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx41061z1),
	.combout(u_kirsch_r7_19n0r1_11_),
	.cout(nx9913z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix52_fadd.lut_mask = 16'h962B;
defparam u_kirsch_r7_sub13_19i1_ix52_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N22
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix56_fadd(
// Equation(s):
// u_kirsch_r7_19n0r1_12_ = (u_kirsch_reg_r5_val_9__aq & ((u_kirsch_reg_r6_12__aq & (!nx9913z1)) # (!u_kirsch_reg_r6_12__aq & (nx9913z1 & VCC)))) # (!u_kirsch_reg_r5_val_9__aq & ((u_kirsch_reg_r6_12__aq & ((nx9913z1) # (GND))) # (!u_kirsch_reg_r6_12__aq & 
// (!nx9913z1))))
// nx48627z1 = CARRY((u_kirsch_reg_r5_val_9__aq & (u_kirsch_reg_r6_12__aq & !nx9913z1)) # (!u_kirsch_reg_r5_val_9__aq & ((u_kirsch_reg_r6_12__aq) # (!nx9913z1))))

	.dataa(u_kirsch_reg_r5_val_9__aq),
	.datab(u_kirsch_reg_r6_12__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9913z1),
	.combout(u_kirsch_r7_19n0r1_12_),
	.cout(nx48627z1));
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix56_fadd.lut_mask = 16'h694D;
defparam u_kirsch_r7_sub13_19i1_ix56_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N24
fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix56_fadd_buf(
// Equation(s):
// u_kirsch_r7_19n0r1_13_ = nx48627z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx48627z1),
	.combout(u_kirsch_r7_19n0r1_13_),
	.cout());
// synopsys translate_off
defparam u_kirsch_r7_sub13_19i1_ix56_fadd_buf.lut_mask = 16'hF0F0;
defparam u_kirsch_r7_sub13_19i1_ix56_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y18_N25
dffeas u_kirsch_reg_r7_val_13_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_13_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_13__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_13_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_13_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N21
dffeas u_kirsch_reg_r7_val_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_11_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_11_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_11_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N23
dffeas u_kirsch_reg_r7_val_12_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_12_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_12__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_12_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_12_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N19
dffeas u_kirsch_reg_r7_val_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_10_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_10_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N26
fiftyfivenm_lcell_comb ix24163z7096(
// Equation(s):
// nx24163z2 = (u_kirsch_reg_r7_val_11__aq) # ((u_kirsch_reg_r7_val_12__aq) # (u_kirsch_reg_r7_val_10__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r7_val_11__aq),
	.datac(u_kirsch_reg_r7_val_12__aq),
	.datad(u_kirsch_reg_r7_val_10__aq),
	.cin(gnd),
	.combout(nx24163z2),
	.cout());
// synopsys translate_off
defparam ix24163z7096.lut_mask = 16'hFFFC;
defparam ix24163z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y18_N13
dffeas u_kirsch_reg_r7_val_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N17
dffeas u_kirsch_reg_r7_val_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_9_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_9_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N15
dffeas u_kirsch_reg_r7_val_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r7_19n0r1_8_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_val_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_val_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_val_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N28
fiftyfivenm_lcell_comb ix22605z7097(
// Equation(s):
// nx22605z3 = (!u_kirsch_reg_r7_val_13__aq & ((u_kirsch_reg_r7_val_9__aq) # ((u_kirsch_reg_r7_val_7__aq & u_kirsch_reg_r7_val_8__aq))))

	.dataa(u_kirsch_reg_r7_val_7__aq),
	.datab(u_kirsch_reg_r7_val_9__aq),
	.datac(u_kirsch_reg_r7_val_8__aq),
	.datad(u_kirsch_reg_r7_val_13__aq),
	.cin(gnd),
	.combout(nx22605z3),
	.cout());
// synopsys translate_off
defparam ix22605z7097.lut_mask = 16'h00EC;
defparam ix22605z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N8
fiftyfivenm_lcell_comb ix32900z7095(
// Equation(s):
// nx32900z1 = (nx37156z7 & (((!nx46527z6)))) # (!nx37156z7 & (!u_kirsch_reg_v_1__aq & ((nx46527z6) # (!u_kirsch_reg_v_2__aq))))

	.dataa(nx37156z7),
	.datab(u_kirsch_reg_v_1__aq),
	.datac(u_kirsch_reg_v_2__aq),
	.datad(nx46527z6),
	.cin(gnd),
	.combout(nx32900z1),
	.cout());
// synopsys translate_off
defparam ix32900z7095.lut_mask = 16'h11AB;
defparam ix32900z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N9
dffeas u_kirsch_reg_r1_ty_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx32900z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_ty_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_ty_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_ty_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N28
fiftyfivenm_lcell_comb u_kirsch_reg_r4_ty_0__afeeder(
// Equation(s):
// u_kirsch_reg_r4_ty_0__afeeder_combout = u_kirsch_reg_r1_ty_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r1_ty_0__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r4_ty_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r4_ty_0__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r4_ty_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N29
dffeas u_kirsch_reg_r4_ty_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r4_ty_0__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_ty_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_ty_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_ty_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N26
fiftyfivenm_lcell_comb u_kirsch_reg_r5_ty_0__afeeder(
// Equation(s):
// u_kirsch_reg_r5_ty_0__afeeder_combout = u_kirsch_reg_r4_ty_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r4_ty_0__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r5_ty_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r5_ty_0__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r5_ty_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N27
dffeas u_kirsch_reg_r5_ty_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r5_ty_0__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_ty_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_ty_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_ty_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N23
dffeas u_kirsch_reg_r7_ty_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r5_ty_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_ty_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_ty_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_ty_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N22
fiftyfivenm_lcell_comb ix23166z7095(
// Equation(s):
// nx23166z1 = (u_kirsch_reg_r7_ty_0__aq & ((nx22605z3) # ((!u_kirsch_reg_r7_val_13__aq & nx24163z2))))

	.dataa(u_kirsch_reg_r7_val_13__aq),
	.datab(nx24163z2),
	.datac(nx22605z3),
	.datad(u_kirsch_reg_r7_ty_0__aq),
	.cin(gnd),
	.combout(nx23166z1),
	.cout());
// synopsys translate_off
defparam ix23166z7095.lut_mask = 16'hF400;
defparam ix23166z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N23
dffeas u_kirsch_reg_o_dir_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx23166z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_dir_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_dir_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_dir_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N2
fiftyfivenm_lcell_comb ix59319z7106(
// Equation(s):
// rb_i_data[0] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_dir_0__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[0])))

	.dataa(u_kirsch_reg_o_dir_0__aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(k_i_pixel[0]),
	.cin(gnd),
	.combout(rb_i_data[0]),
	.cout());
// synopsys translate_off
defparam ix59319z7106.lut_mask = 16'hAFA0;
defparam ix59319z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N4
fiftyfivenm_lcell_comb ix976_fadd(
// Equation(s):
// inc_d_0__dup_995 = reg_q_0__dup_40_aq $ (VCC)
// nx46785z1 = CARRY(reg_q_0__dup_40_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_40_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_995),
	.cout(nx46785z1));
// synopsys translate_off
defparam ix976_fadd.lut_mask = 16'h33CC;
defparam ix976_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N22
fiftyfivenm_lcell_comb ix24859z7095(
// Equation(s):
// nx24859z1 = ((!nx11963z1 & (!reg_wait_for_tx_valid_delayed_aq & reg_rb_rd_en_aq))) # (!reset_n_ainput_o)

	.dataa(nx11963z1),
	.datab(reg_wait_for_tx_valid_delayed_aq),
	.datac(reset_n_ainput_o),
	.datad(reg_rb_rd_en_aq),
	.cin(gnd),
	.combout(nx24859z1),
	.cout());
// synopsys translate_off
defparam ix24859z7095.lut_mask = 16'h1F0F;
defparam ix24859z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y10_N5
dffeas reg_q_0__dup_40(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_995),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_40_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_40.is_wysiwyg = "true";
defparam reg_q_0__dup_40.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N0
fiftyfivenm_lcell_comb ix940_fadd(
// Equation(s):
// inc_d_0__dup_959 = reg_q_0__dup_32_aq $ (VCC)
// nx25574z1 = CARRY(reg_q_0__dup_32_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_32_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_959),
	.cout(nx25574z1));
// synopsys translate_off
defparam ix940_fadd.lut_mask = 16'h33CC;
defparam ix940_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N18
fiftyfivenm_lcell_comb ix23864z7095(
// Equation(s):
// nx23864z1 = ((pb_a0_a_ainput_o & ((u_kirsch_reg_o_valid_aq))) # (!pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq))) # (!reset_n_ainput_o)

	.dataa(pb_a0_a_ainput_o),
	.datab(reset_n_ainput_o),
	.datac(write_fifo_reg_rd_en_delayed_aq),
	.datad(u_kirsch_reg_o_valid_aq),
	.cin(gnd),
	.combout(nx23864z1),
	.cout());
// synopsys translate_off
defparam ix23864z7095.lut_mask = 16'hFB73;
defparam ix23864z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y10_N1
dffeas reg_q_0__dup_32(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_959),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_32_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_32.is_wysiwyg = "true";
defparam reg_q_0__dup_32.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N16
fiftyfivenm_lcell_comb ix59319z7114(
// Equation(s):
// read_fifo_pointer[0] = (nx11963z1 & ((reg_q_0__dup_32_aq))) # (!nx11963z1 & (reg_q_0__dup_40_aq))

	.dataa(reg_q_0__dup_40_aq),
	.datab(gnd),
	.datac(nx11963z1),
	.datad(reg_q_0__dup_32_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[0]),
	.cout());
// synopsys translate_off
defparam ix59319z7114.lut_mask = 16'hFA0A;
defparam ix59319z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N6
fiftyfivenm_lcell_comb ix978_fadd(
// Equation(s):
// inc_d_1__dup_997 = (reg_q_1__dup_39_aq & (!nx46785z1)) # (!reg_q_1__dup_39_aq & ((nx46785z1) # (GND)))
// nx50656z1 = CARRY((!nx46785z1) # (!reg_q_1__dup_39_aq))

	.dataa(reg_q_1__dup_39_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46785z1),
	.combout(inc_d_1__dup_997),
	.cout(nx50656z1));
// synopsys translate_off
defparam ix978_fadd.lut_mask = 16'h5A5F;
defparam ix978_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N7
dffeas reg_q_1__dup_39(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_997),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_39_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_39.is_wysiwyg = "true";
defparam reg_q_1__dup_39.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N2
fiftyfivenm_lcell_comb ix942_fadd(
// Equation(s):
// inc_d_1__dup_961 = (reg_q_1__dup_31_aq & (!nx25574z1)) # (!reg_q_1__dup_31_aq & ((nx25574z1) # (GND)))
// nx10000z1 = CARRY((!nx25574z1) # (!reg_q_1__dup_31_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_31_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx25574z1),
	.combout(inc_d_1__dup_961),
	.cout(nx10000z1));
// synopsys translate_off
defparam ix942_fadd.lut_mask = 16'h3C3F;
defparam ix942_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N3
dffeas reg_q_1__dup_31(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_961),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_31_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_31.is_wysiwyg = "true";
defparam reg_q_1__dup_31.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N26
fiftyfivenm_lcell_comb ix59319z7113(
// Equation(s):
// read_fifo_pointer[1] = (nx11963z1 & ((reg_q_1__dup_31_aq))) # (!nx11963z1 & (reg_q_1__dup_39_aq))

	.dataa(reg_q_1__dup_39_aq),
	.datab(gnd),
	.datac(nx11963z1),
	.datad(reg_q_1__dup_31_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[1]),
	.cout());
// synopsys translate_off
defparam ix59319z7113.lut_mask = 16'hFA0A;
defparam ix59319z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N4
fiftyfivenm_lcell_comb ix944_fadd(
// Equation(s):
// inc_d_2__dup_963 = (reg_q_2__dup_30_aq & (nx10000z1 $ (GND))) # (!reg_q_2__dup_30_aq & (!nx10000z1 & VCC))
// nx5574z1 = CARRY((reg_q_2__dup_30_aq & !nx10000z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_30_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10000z1),
	.combout(inc_d_2__dup_963),
	.cout(nx5574z1));
// synopsys translate_off
defparam ix944_fadd.lut_mask = 16'hC30C;
defparam ix944_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N5
dffeas reg_q_2__dup_30(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_963),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_30_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_30.is_wysiwyg = "true";
defparam reg_q_2__dup_30.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N8
fiftyfivenm_lcell_comb ix980_fadd(
// Equation(s):
// inc_d_2__dup_999 = (reg_q_2__dup_38_aq & (nx50656z1 $ (GND))) # (!reg_q_2__dup_38_aq & (!nx50656z1 & VCC))
// nx35082z1 = CARRY((reg_q_2__dup_38_aq & !nx50656z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_38_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50656z1),
	.combout(inc_d_2__dup_999),
	.cout(nx35082z1));
// synopsys translate_off
defparam ix980_fadd.lut_mask = 16'hC30C;
defparam ix980_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N9
dffeas reg_q_2__dup_38(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_999),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_38_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_38.is_wysiwyg = "true";
defparam reg_q_2__dup_38.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N28
fiftyfivenm_lcell_comb ix59319z7112(
// Equation(s):
// read_fifo_pointer[2] = (nx11963z1 & (reg_q_2__dup_30_aq)) # (!nx11963z1 & ((reg_q_2__dup_38_aq)))

	.dataa(gnd),
	.datab(nx11963z1),
	.datac(reg_q_2__dup_30_aq),
	.datad(reg_q_2__dup_38_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[2]),
	.cout());
// synopsys translate_off
defparam ix59319z7112.lut_mask = 16'hF3C0;
defparam ix59319z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N10
fiftyfivenm_lcell_comb ix982_fadd(
// Equation(s):
// inc_d_3__dup_1001 = (reg_q_3__dup_37_aq & (!nx35082z1)) # (!reg_q_3__dup_37_aq & ((nx35082z1) # (GND)))
// nx19508z1 = CARRY((!nx35082z1) # (!reg_q_3__dup_37_aq))

	.dataa(reg_q_3__dup_37_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx35082z1),
	.combout(inc_d_3__dup_1001),
	.cout(nx19508z1));
// synopsys translate_off
defparam ix982_fadd.lut_mask = 16'h5A5F;
defparam ix982_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N11
dffeas reg_q_3__dup_37(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1001),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_37_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_37.is_wysiwyg = "true";
defparam reg_q_3__dup_37.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N6
fiftyfivenm_lcell_comb ix946_fadd(
// Equation(s):
// inc_d_3__dup_965 = (reg_q_3__dup_29_aq & (!nx5574z1)) # (!reg_q_3__dup_29_aq & ((nx5574z1) # (GND)))
// nx21148z1 = CARRY((!nx5574z1) # (!reg_q_3__dup_29_aq))

	.dataa(reg_q_3__dup_29_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx5574z1),
	.combout(inc_d_3__dup_965),
	.cout(nx21148z1));
// synopsys translate_off
defparam ix946_fadd.lut_mask = 16'h5A5F;
defparam ix946_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N7
dffeas reg_q_3__dup_29(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_965),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_29_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_29.is_wysiwyg = "true";
defparam reg_q_3__dup_29.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N0
fiftyfivenm_lcell_comb ix59319z7111(
// Equation(s):
// read_fifo_pointer[3] = (nx11963z1 & ((reg_q_3__dup_29_aq))) # (!nx11963z1 & (reg_q_3__dup_37_aq))

	.dataa(reg_q_3__dup_37_aq),
	.datab(gnd),
	.datac(nx11963z1),
	.datad(reg_q_3__dup_29_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[3]),
	.cout());
// synopsys translate_off
defparam ix59319z7111.lut_mask = 16'hFA0A;
defparam ix59319z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N12
fiftyfivenm_lcell_comb ix984_fadd(
// Equation(s):
// inc_d_4__dup_1003 = (reg_q_4__dup_36_aq & (nx19508z1 $ (GND))) # (!reg_q_4__dup_36_aq & (!nx19508z1 & VCC))
// nx61602z1 = CARRY((reg_q_4__dup_36_aq & !nx19508z1))

	.dataa(reg_q_4__dup_36_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx19508z1),
	.combout(inc_d_4__dup_1003),
	.cout(nx61602z1));
// synopsys translate_off
defparam ix984_fadd.lut_mask = 16'hA50A;
defparam ix984_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N13
dffeas reg_q_4__dup_36(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1003),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_36_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_36.is_wysiwyg = "true";
defparam reg_q_4__dup_36.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N8
fiftyfivenm_lcell_comb ix948_fadd(
// Equation(s):
// inc_d_4__dup_967 = (reg_q_4__dup_28_aq & (nx21148z1 $ (GND))) # (!reg_q_4__dup_28_aq & (!nx21148z1 & VCC))
// nx54779z1 = CARRY((reg_q_4__dup_28_aq & !nx21148z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_28_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21148z1),
	.combout(inc_d_4__dup_967),
	.cout(nx54779z1));
// synopsys translate_off
defparam ix948_fadd.lut_mask = 16'hC30C;
defparam ix948_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N9
dffeas reg_q_4__dup_28(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_967),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_28_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_28.is_wysiwyg = "true";
defparam reg_q_4__dup_28.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N2
fiftyfivenm_lcell_comb ix59319z7110(
// Equation(s):
// read_fifo_pointer[4] = (nx11963z1 & ((reg_q_4__dup_28_aq))) # (!nx11963z1 & (reg_q_4__dup_36_aq))

	.dataa(reg_q_4__dup_36_aq),
	.datab(gnd),
	.datac(nx11963z1),
	.datad(reg_q_4__dup_28_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[4]),
	.cout());
// synopsys translate_off
defparam ix59319z7110.lut_mask = 16'hFA0A;
defparam ix59319z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N14
fiftyfivenm_lcell_comb ix986_fadd(
// Equation(s):
// inc_d_5__dup_1005 = (reg_q_5__dup_35_aq & (!nx61602z1)) # (!reg_q_5__dup_35_aq & ((nx61602z1) # (GND)))
// nx11640z1 = CARRY((!nx61602z1) # (!reg_q_5__dup_35_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_35_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx61602z1),
	.combout(inc_d_5__dup_1005),
	.cout(nx11640z1));
// synopsys translate_off
defparam ix986_fadd.lut_mask = 16'h3C3F;
defparam ix986_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N15
dffeas reg_q_5__dup_35(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1005),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_35_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_35.is_wysiwyg = "true";
defparam reg_q_5__dup_35.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N10
fiftyfivenm_lcell_comb ix950_fadd(
// Equation(s):
// inc_d_5__dup_969 = (reg_q_5__dup_27_aq & (!nx54779z1)) # (!reg_q_5__dup_27_aq & ((nx54779z1) # (GND)))
// nx60719z1 = CARRY((!nx54779z1) # (!reg_q_5__dup_27_aq))

	.dataa(reg_q_5__dup_27_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx54779z1),
	.combout(inc_d_5__dup_969),
	.cout(nx60719z1));
// synopsys translate_off
defparam ix950_fadd.lut_mask = 16'h5A5F;
defparam ix950_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N11
dffeas reg_q_5__dup_27(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_969),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_27_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_27.is_wysiwyg = "true";
defparam reg_q_5__dup_27.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N28
fiftyfivenm_lcell_comb ix59319z7109(
// Equation(s):
// read_fifo_pointer[5] = (nx11963z1 & ((reg_q_5__dup_27_aq))) # (!nx11963z1 & (reg_q_5__dup_35_aq))

	.dataa(nx11963z1),
	.datab(gnd),
	.datac(reg_q_5__dup_35_aq),
	.datad(reg_q_5__dup_27_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[5]),
	.cout());
// synopsys translate_off
defparam ix59319z7109.lut_mask = 16'hFA50;
defparam ix59319z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N16
fiftyfivenm_lcell_comb ix988_fadd(
// Equation(s):
// inc_d_6__dup_1007 = (reg_q_6__dup_34_aq & (nx11640z1 $ (GND))) # (!reg_q_6__dup_34_aq & (!nx11640z1 & VCC))
// nx19427z1 = CARRY((reg_q_6__dup_34_aq & !nx11640z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_34_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx11640z1),
	.combout(inc_d_6__dup_1007),
	.cout(nx19427z1));
// synopsys translate_off
defparam ix988_fadd.lut_mask = 16'hC30C;
defparam ix988_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N17
dffeas reg_q_6__dup_34(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1007),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_34_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_34.is_wysiwyg = "true";
defparam reg_q_6__dup_34.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N12
fiftyfivenm_lcell_comb ix952_fadd(
// Equation(s):
// inc_d_6__dup_971 = (reg_q_6__dup_26_aq & (nx60719z1 $ (GND))) # (!reg_q_6__dup_26_aq & (!nx60719z1 & VCC))
// nx52932z1 = CARRY((reg_q_6__dup_26_aq & !nx60719z1))

	.dataa(reg_q_6__dup_26_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx60719z1),
	.combout(inc_d_6__dup_971),
	.cout(nx52932z1));
// synopsys translate_off
defparam ix952_fadd.lut_mask = 16'hA50A;
defparam ix952_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N13
dffeas reg_q_6__dup_26(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_971),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_26_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_26.is_wysiwyg = "true";
defparam reg_q_6__dup_26.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N30
fiftyfivenm_lcell_comb ix59319z7108(
// Equation(s):
// read_fifo_pointer[6] = (nx11963z1 & ((reg_q_6__dup_26_aq))) # (!nx11963z1 & (reg_q_6__dup_34_aq))

	.dataa(reg_q_6__dup_34_aq),
	.datab(gnd),
	.datac(nx11963z1),
	.datad(reg_q_6__dup_26_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[6]),
	.cout());
// synopsys translate_off
defparam ix59319z7108.lut_mask = 16'hFA0A;
defparam ix59319z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N14
fiftyfivenm_lcell_comb ix953_fadd(
// Equation(s):
// inc_d_7__dup_973 = reg_q_7__dup_25_aq $ (nx52932z1)

	.dataa(gnd),
	.datab(reg_q_7__dup_25_aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx52932z1),
	.combout(inc_d_7__dup_973),
	.cout());
// synopsys translate_off
defparam ix953_fadd.lut_mask = 16'h3C3C;
defparam ix953_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y10_N15
dffeas reg_q_7__dup_25(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_973),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_25_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_25.is_wysiwyg = "true";
defparam reg_q_7__dup_25.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y10_N18
fiftyfivenm_lcell_comb ix989_fadd(
// Equation(s):
// inc_d_7__dup_1009 = reg_q_7__dup_33_aq $ (nx19427z1)

	.dataa(gnd),
	.datab(reg_q_7__dup_33_aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx19427z1),
	.combout(inc_d_7__dup_1009),
	.cout());
// synopsys translate_off
defparam ix989_fadd.lut_mask = 16'h3C3C;
defparam ix989_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X22_Y10_N19
dffeas reg_q_7__dup_33(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1009),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_33_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_33.is_wysiwyg = "true";
defparam reg_q_7__dup_33.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y10_N24
fiftyfivenm_lcell_comb ix59319z7107(
// Equation(s):
// read_fifo_pointer[7] = (nx11963z1 & (reg_q_7__dup_25_aq)) # (!nx11963z1 & ((reg_q_7__dup_33_aq)))

	.dataa(gnd),
	.datab(nx11963z1),
	.datac(reg_q_7__dup_25_aq),
	.datad(reg_q_7__dup_33_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[7]),
	.cout());
// synopsys translate_off
defparam ix59319z7107.lut_mask = 16'hF3C0;
defparam ix59319z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y22_N30
fiftyfivenm_lcell_comb u_kirsch_reg_r1_ty_1__afeeder(
// Equation(s):
// u_kirsch_reg_r1_ty_1__afeeder_combout = nx46527z3

	.dataa(gnd),
	.datab(gnd),
	.datac(nx46527z3),
	.datad(gnd),
	.cin(gnd),
	.combout(u_kirsch_reg_r1_ty_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r1_ty_1__afeeder.lut_mask = 16'hF0F0;
defparam u_kirsch_reg_r1_ty_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y22_N31
dffeas u_kirsch_reg_r1_ty_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r1_ty_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_ty_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_ty_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_ty_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y22_N20
fiftyfivenm_lcell_comb u_kirsch_reg_r4_ty_1__afeeder(
// Equation(s):
// u_kirsch_reg_r4_ty_1__afeeder_combout = u_kirsch_reg_r1_ty_1__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(u_kirsch_reg_r1_ty_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_kirsch_reg_r4_ty_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r4_ty_1__afeeder.lut_mask = 16'hF0F0;
defparam u_kirsch_reg_r4_ty_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y22_N21
dffeas u_kirsch_reg_r4_ty_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r4_ty_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_ty_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_ty_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_ty_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N30
fiftyfivenm_lcell_comb u_kirsch_reg_r5_ty_1__afeeder(
// Equation(s):
// u_kirsch_reg_r5_ty_1__afeeder_combout = u_kirsch_reg_r4_ty_1__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r4_ty_1__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r5_ty_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r5_ty_1__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r5_ty_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N31
dffeas u_kirsch_reg_r5_ty_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r5_ty_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_ty_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_ty_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_ty_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y18_N3
dffeas u_kirsch_reg_r7_ty_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r5_ty_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_ty_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_ty_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_ty_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N0
fiftyfivenm_lcell_comb ix24163z7095(
// Equation(s):
// nx24163z1 = (u_kirsch_reg_r7_ty_1__aq & ((nx22605z3) # ((!u_kirsch_reg_r7_val_13__aq & nx24163z2))))

	.dataa(nx22605z3),
	.datab(u_kirsch_reg_r7_ty_1__aq),
	.datac(u_kirsch_reg_r7_val_13__aq),
	.datad(nx24163z2),
	.cin(gnd),
	.combout(nx24163z1),
	.cout());
// synopsys translate_off
defparam ix24163z7095.lut_mask = 16'h8C88;
defparam ix24163z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N1
dffeas u_kirsch_reg_o_dir_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx24163z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_dir_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_dir_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_dir_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N2
fiftyfivenm_lcell_comb ix59319z7105(
// Equation(s):
// rb_i_data[1] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_dir_1__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[1])))

	.dataa(u_kirsch_reg_o_dir_1__aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(k_i_pixel[1]),
	.cin(gnd),
	.combout(rb_i_data[1]),
	.cout());
// synopsys translate_off
defparam ix59319z7105.lut_mask = 16'hAFA0;
defparam ix59319z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y19_N29
dffeas u_kirsch_reg_r1_ty_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46527z6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r1_ty_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r1_ty_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r1_ty_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N24
fiftyfivenm_lcell_comb u_kirsch_reg_r4_ty_2__afeeder(
// Equation(s):
// u_kirsch_reg_r4_ty_2__afeeder_combout = u_kirsch_reg_r1_ty_2__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r1_ty_2__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r4_ty_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r4_ty_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r4_ty_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N25
dffeas u_kirsch_reg_r4_ty_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r4_ty_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r4_ty_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r4_ty_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r4_ty_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N0
fiftyfivenm_lcell_comb u_kirsch_reg_r5_ty_2__afeeder(
// Equation(s):
// u_kirsch_reg_r5_ty_2__afeeder_combout = u_kirsch_reg_r4_ty_2__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r4_ty_2__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r5_ty_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r5_ty_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r5_ty_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N1
dffeas u_kirsch_reg_r5_ty_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r5_ty_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx3238z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r5_ty_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r5_ty_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r5_ty_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N18
fiftyfivenm_lcell_comb u_kirsch_reg_r7_ty_2__afeeder(
// Equation(s):
// u_kirsch_reg_r7_ty_2__afeeder_combout = u_kirsch_reg_r5_ty_2__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r5_ty_2__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r7_ty_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r7_ty_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r7_ty_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N19
dffeas u_kirsch_reg_r7_ty_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r7_ty_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r7_ty_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r7_ty_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r7_ty_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N30
fiftyfivenm_lcell_comb ix22605z7096(
// Equation(s):
// nx22605z2 = (u_kirsch_reg_r7_val_12__aq) # (u_kirsch_reg_r7_val_11__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_kirsch_reg_r7_val_12__aq),
	.datad(u_kirsch_reg_r7_val_11__aq),
	.cin(gnd),
	.combout(nx22605z2),
	.cout());
// synopsys translate_off
defparam ix22605z7096.lut_mask = 16'hFFF0;
defparam ix22605z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N26
fiftyfivenm_lcell_comb ix22605z7095(
// Equation(s):
// nx22605z1 = (nx22605z3) # ((!u_kirsch_reg_r7_val_13__aq & ((nx22605z2) # (u_kirsch_reg_r7_val_10__aq))))

	.dataa(u_kirsch_reg_r7_val_13__aq),
	.datab(nx22605z2),
	.datac(nx22605z3),
	.datad(u_kirsch_reg_r7_val_10__aq),
	.cin(gnd),
	.combout(nx22605z1),
	.cout());
// synopsys translate_off
defparam ix22605z7095.lut_mask = 16'hF5F4;
defparam ix22605z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N20
fiftyfivenm_lcell_comb ix25160z7095(
// Equation(s):
// nx25160z1 = (u_kirsch_reg_r7_ty_2__aq & nx22605z1)

	.dataa(u_kirsch_reg_r7_ty_2__aq),
	.datab(gnd),
	.datac(nx22605z1),
	.datad(gnd),
	.cin(gnd),
	.combout(nx25160z1),
	.cout());
// synopsys translate_off
defparam ix25160z7095.lut_mask = 16'hA0A0;
defparam ix25160z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N21
dffeas u_kirsch_reg_o_dir_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx25160z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_dir_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_dir_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_dir_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N0
fiftyfivenm_lcell_comb ix59319z7104(
// Equation(s):
// rb_i_data[2] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_dir_2__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[2])))

	.dataa(gnd),
	.datab(pb_a0_a_ainput_o),
	.datac(u_kirsch_reg_o_dir_2__aq),
	.datad(k_i_pixel[2]),
	.cin(gnd),
	.combout(rb_i_data[2]),
	.cout());
// synopsys translate_off
defparam ix59319z7104.lut_mask = 16'hF3C0;
defparam ix59319z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N27
dffeas u_kirsch_reg_o_edge(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx22605z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_edge_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_edge.is_wysiwyg = "true";
defparam u_kirsch_reg_o_edge.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N16
fiftyfivenm_lcell_comb ix59319z7103(
// Equation(s):
// rb_i_data[3] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_edge_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[3])))

	.dataa(u_kirsch_reg_o_edge_aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(k_i_pixel[3]),
	.cin(gnd),
	.combout(rb_i_data[3]),
	.cout());
// synopsys translate_off
defparam ix59319z7103.lut_mask = 16'hAFA0;
defparam ix59319z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N8
fiftyfivenm_lcell_comb ix59319z7101(
// Equation(s):
// rb_i_data[4] = (pb_a0_a_ainput_o & (!u_kirsch_reg_o_mode_0__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[4])))

	.dataa(u_kirsch_reg_o_mode_0__aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(k_i_pixel[4]),
	.cin(gnd),
	.combout(rb_i_data[4]),
	.cout());
// synopsys translate_off
defparam ix59319z7101.lut_mask = 16'h5F50;
defparam ix59319z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N0
fiftyfivenm_lcell_comb ix59319z7099(
// Equation(s):
// rb_i_data[5] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_mode_1__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[5])))

	.dataa(gnd),
	.datab(pb_a0_a_ainput_o),
	.datac(u_kirsch_reg_o_mode_1__aq),
	.datad(k_i_pixel[5]),
	.cin(gnd),
	.combout(rb_i_data[5]),
	.cout());
// synopsys translate_off
defparam ix59319z7099.lut_mask = 16'hF3C0;
defparam ix59319z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N26
fiftyfivenm_lcell_comb ix40325z7095(
// Equation(s):
// nx40325z1 = (u_uart_reg_RxFSM_5__aq) # ((!u_uart_reg_RxRDYi_aq & u_uart_reg_RxErr_aq))

	.dataa(u_uart_reg_RxFSM_5__aq),
	.datab(u_uart_reg_RxRDYi_aq),
	.datac(u_uart_reg_RxErr_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx40325z1),
	.cout());
// synopsys translate_off
defparam ix40325z7095.lut_mask = 16'hBABA;
defparam ix40325z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N27
dffeas u_uart_reg_RxErr(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx40325z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxErr_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxErr.is_wysiwyg = "true";
defparam u_uart_reg_RxErr.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N26
fiftyfivenm_lcell_comb ix59319z7097(
// Equation(s):
// rb_i_data[6] = (pb_a0_a_ainput_o & (u_uart_reg_RxErr_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[6])))

	.dataa(u_uart_reg_RxErr_aq),
	.datab(pb_a0_a_ainput_o),
	.datac(gnd),
	.datad(k_i_pixel[6]),
	.cin(gnd),
	.combout(rb_i_data[6]),
	.cout());
// synopsys translate_off
defparam ix59319z7097.lut_mask = 16'hBB88;
defparam ix59319z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N0
fiftyfivenm_lcell_comb ix59319z7095(
// Equation(s):
// rb_i_data[7] = (pb_a0_a_ainput_o & (!reset_n_ainput_o)) # (!pb_a0_a_ainput_o & ((k_i_pixel[7])))

	.dataa(reset_n_ainput_o),
	.datab(pb_a0_a_ainput_o),
	.datac(gnd),
	.datad(k_i_pixel[7]),
	.cin(gnd),
	.combout(rb_i_data[7]),
	.cout());
// synopsys translate_off
defparam ix59319z7095.lut_mask = 16'h7744;
defparam ix59319z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y13_N0
fiftyfivenm_ram_block read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(nx11963z1),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,rb_i_data[7],rb_i_data[6],rb_i_data[5],rb_i_data[4],rb_i_data[3],rb_i_data[2],rb_i_data[1],rb_i_data[0]}),
	.portaaddr({read_fifo_pointer[7],read_fifo_pointer[6],read_fifo_pointer[5],read_fifo_pointer[4],read_fifo_pointer[3],read_fifo_pointer[2],read_fifo_pointer[1],read_fifo_pointer[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:read_fifo_mem_mem|altsyncram:ix64056z29482|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N18
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_0__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_0__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_0__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N19
dffeas read_fifo_reg_q_saved_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_0__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_0_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N28
fiftyfivenm_lcell_comb ix18859z7095(
// Equation(s):
// NOT_rb_o_data_0_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_0__aq))

	.dataa(read_fifo_reg_q_saved_0__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(NOT_rb_o_data_0_),
	.cout());
// synopsys translate_off
defparam ix18859z7095.lut_mask = 16'h11DD;
defparam ix18859z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N16
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_1__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_1__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_1__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N17
dffeas read_fifo_reg_q_saved_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_1_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N22
fiftyfivenm_lcell_comb ix19856z7095(
// Equation(s):
// NOT_rb_o_data_1_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_1__aq))

	.dataa(read_fifo_reg_q_saved_1__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(NOT_rb_o_data_1_),
	.cout());
// synopsys translate_off
defparam ix19856z7095.lut_mask = 16'h11DD;
defparam ix19856z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N12
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_2__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_2__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]

	.dataa(gnd),
	.datab(gnd),
	.datac(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.datad(gnd),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_2__afeeder.lut_mask = 16'hF0F0;
defparam read_fifo_reg_q_saved_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N13
dffeas read_fifo_reg_q_saved_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_2_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N20
fiftyfivenm_lcell_comb ix20853z7095(
// Equation(s):
// NOT_rb_o_data_2_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_2__aq))

	.dataa(read_fifo_reg_q_saved_2__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(NOT_rb_o_data_2_),
	.cout());
// synopsys translate_off
defparam ix20853z7095.lut_mask = 16'h11DD;
defparam ix20853z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N2
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_3__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_3__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_3__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N3
dffeas read_fifo_reg_q_saved_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_3__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_3_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N26
fiftyfivenm_lcell_comb ix21850z7095(
// Equation(s):
// NOT_rb_o_data_3_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_3__aq))

	.dataa(read_fifo_reg_q_saved_3__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(NOT_rb_o_data_3_),
	.cout());
// synopsys translate_off
defparam ix21850z7095.lut_mask = 16'h11DD;
defparam ix21850z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N0
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_4__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_4__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]

	.dataa(gnd),
	.datab(gnd),
	.datac(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.datad(gnd),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_4__afeeder.lut_mask = 16'hF0F0;
defparam read_fifo_reg_q_saved_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N1
dffeas read_fifo_reg_q_saved_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_4__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_4_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N30
fiftyfivenm_lcell_comb ix22847z7095(
// Equation(s):
// NOT_rb_o_data_4_ = (reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4])) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_4__aq)))

	.dataa(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_reg_q_saved_4__aq),
	.cin(gnd),
	.combout(NOT_rb_o_data_4_),
	.cout());
// synopsys translate_off
defparam ix22847z7095.lut_mask = 16'h4477;
defparam ix22847z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N24
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_5__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_5__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_5__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N25
dffeas read_fifo_reg_q_saved_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_5__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_5_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N8
fiftyfivenm_lcell_comb ix23844z7095(
// Equation(s):
// NOT_rb_o_data_5_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_5__aq))

	.dataa(read_fifo_reg_q_saved_5__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(NOT_rb_o_data_5_),
	.cout());
// synopsys translate_off
defparam ix23844z7095.lut_mask = 16'h11DD;
defparam ix23844z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N10
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_6__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_6__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_6__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N11
dffeas read_fifo_reg_q_saved_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_6__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_6_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N14
fiftyfivenm_lcell_comb ix24841z7095(
// Equation(s):
// NOT_rb_o_data_6_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_6__aq))

	.dataa(read_fifo_reg_q_saved_6__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(NOT_rb_o_data_6_),
	.cout());
// synopsys translate_off
defparam ix24841z7095.lut_mask = 16'h11DD;
defparam ix24841z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N6
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_7__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_7__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_7__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N7
dffeas read_fifo_reg_q_saved_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_7__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_7_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N4
fiftyfivenm_lcell_comb ix25838z7095(
// Equation(s):
// NOT_u_uart_Tx_Reg_14n6ss1_8_ = (!u_uart_reg_TxFSM_1__aq & ((reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_7__aq))))

	.dataa(read_fifo_reg_q_saved_7__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(reg_rb_rd_en_delayed_aq),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(NOT_u_uart_Tx_Reg_14n6ss1_8_),
	.cout());
// synopsys translate_off
defparam ix25838z7095.lut_mask = 16'h0131;
defparam ix25838z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N6
fiftyfivenm_lcell_comb ix18859z7096(
// Equation(s):
// nx18859z1 = (!u_uart_reg_TxFSM_0__aq & ((u_uart_reg_TxFSM_1__aq & ((u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_1__aq & (!reg_tx_valid_aq))))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(reg_tx_valid_aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx18859z1),
	.cout());
// synopsys translate_off
defparam ix18859z7096.lut_mask = 16'h4501;
defparam ix18859z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N5
dffeas u_uart_reg_Tx_Reg_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_u_uart_Tx_Reg_14n6ss1_8_),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_8_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N15
dffeas u_uart_reg_Tx_Reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_6_),
	.asdata(u_uart_reg_Tx_Reg_8__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_7_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N9
dffeas u_uart_reg_Tx_Reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_5_),
	.asdata(u_uart_reg_Tx_Reg_7__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_6_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N31
dffeas u_uart_reg_Tx_Reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_4_),
	.asdata(u_uart_reg_Tx_Reg_6__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_5_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N27
dffeas u_uart_reg_Tx_Reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_3_),
	.asdata(u_uart_reg_Tx_Reg_5__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_4_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N21
dffeas u_uart_reg_Tx_Reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_2_),
	.asdata(u_uart_reg_Tx_Reg_4__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_3_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N23
dffeas u_uart_reg_Tx_Reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_1_),
	.asdata(u_uart_reg_Tx_Reg_3__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_2_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y13_N29
dffeas u_uart_reg_Tx_Reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_0_),
	.asdata(u_uart_reg_Tx_Reg_2__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_1_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N16
fiftyfivenm_lcell_comb ix17862z7096(
// Equation(s):
// nx17862z2 = (u_uart_reg_TxFSM_1__aq & ((!u_uart_reg_Tx_Reg_1__aq))) # (!u_uart_reg_TxFSM_1__aq & (!u_uart_reg_TxFSM_0__aq))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(gnd),
	.datad(u_uart_reg_Tx_Reg_1__aq),
	.cin(gnd),
	.combout(nx17862z2),
	.cout());
// synopsys translate_off
defparam ix17862z7096.lut_mask = 16'h11DD;
defparam ix17862z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N12
fiftyfivenm_lcell_comb ix17862z7095(
// Equation(s):
// nx17862z1 = (nx17862z4 & (u_uart_reg_Tx_Reg_0__aq)) # (!nx17862z4 & ((!nx17862z2)))

	.dataa(gnd),
	.datab(nx17862z4),
	.datac(u_uart_reg_Tx_Reg_0__aq),
	.datad(nx17862z2),
	.cin(gnd),
	.combout(nx17862z1),
	.cout());
// synopsys translate_off
defparam ix17862z7095.lut_mask = 16'hC0F3;
defparam ix17862z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N13
dffeas u_uart_reg_Tx_Reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx17862z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_0_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N24
fiftyfivenm_lcell_comb ix3377z7096(
// Equation(s):
// nx3377z1 = (reg_q_2__dup_96_aq & ((reg_q_1__dup_97_aq) # (reg_q_0__dup_98_aq $ (reg_q_3__dup_95_aq)))) # (!reg_q_2__dup_96_aq & ((reg_q_1__dup_97_aq $ (reg_q_3__dup_95_aq)) # (!reg_q_0__dup_98_aq)))

	.dataa(reg_q_1__dup_97_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_3__dup_95_aq),
	.cin(gnd),
	.combout(nx3377z1),
	.cout());
// synopsys translate_off
defparam ix3377z7096.lut_mask = 16'h9FEB;
defparam ix3377z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N0
fiftyfivenm_lcell_comb ix3377z7097(
// Equation(s):
// nx3377z2 = (reg_q_7__dup_91_aq & ((reg_q_5__dup_93_aq $ (!reg_q_6__dup_92_aq)) # (!reg_q_4__dup_94_aq))) # (!reg_q_7__dup_91_aq & ((reg_q_5__dup_93_aq) # (reg_q_4__dup_94_aq $ (!reg_q_6__dup_92_aq))))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx3377z2),
	.cout());
// synopsys translate_off
defparam ix3377z7097.lut_mask = 16'hF67D;
defparam ix3377z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N2
fiftyfivenm_lcell_comb ix3377z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_0_ = (reg_q_10__dup_50_aq & ((nx3377z2))) # (!reg_q_10__dup_50_aq & (nx3377z1))

	.dataa(gnd),
	.datab(nx3377z1),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx3377z2),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_0_),
	.cout());
// synopsys translate_off
defparam ix3377z7095.lut_mask = 16'hFC0C;
defparam ix3377z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N3
dffeas u_seg7_u_dual_seg7_reg_o_char_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_0_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N30
fiftyfivenm_lcell_comb ix5371z7096(
// Equation(s):
// nx5371z1 = (reg_q_2__dup_96_aq & (((!reg_q_1__dup_97_aq & reg_q_0__dup_98_aq)) # (!reg_q_3__dup_95_aq))) # (!reg_q_2__dup_96_aq & (((reg_q_0__dup_98_aq) # (reg_q_3__dup_95_aq)) # (!reg_q_1__dup_97_aq)))

	.dataa(reg_q_1__dup_97_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_3__dup_95_aq),
	.cin(gnd),
	.combout(nx5371z1),
	.cout());
// synopsys translate_off
defparam ix5371z7096.lut_mask = 16'h73FD;
defparam ix5371z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N26
fiftyfivenm_lcell_comb ix5371z7097(
// Equation(s):
// nx5371z2 = (reg_q_7__dup_91_aq & (((reg_q_4__dup_94_aq & !reg_q_5__dup_93_aq)) # (!reg_q_6__dup_92_aq))) # (!reg_q_7__dup_91_aq & ((reg_q_4__dup_94_aq) # ((reg_q_6__dup_92_aq) # (!reg_q_5__dup_93_aq))))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx5371z2),
	.cout());
// synopsys translate_off
defparam ix5371z7097.lut_mask = 16'h3BEF;
defparam ix5371z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N8
fiftyfivenm_lcell_comb ix5371z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_2_ = (reg_q_10__dup_50_aq & ((nx5371z2))) # (!reg_q_10__dup_50_aq & (nx5371z1))

	.dataa(gnd),
	.datab(reg_q_10__dup_50_aq),
	.datac(nx5371z1),
	.datad(nx5371z2),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_2_),
	.cout());
// synopsys translate_off
defparam ix5371z7095.lut_mask = 16'hFC30;
defparam ix5371z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N9
dffeas u_seg7_u_dual_seg7_reg_o_char_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_2_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N10
fiftyfivenm_lcell_comb ix6368z7096(
// Equation(s):
// nx6368z1 = (reg_q_1__dup_97_aq & ((reg_q_2__dup_96_aq & (!reg_q_0__dup_98_aq)) # (!reg_q_2__dup_96_aq & ((reg_q_0__dup_98_aq) # (!reg_q_3__dup_95_aq))))) # (!reg_q_1__dup_97_aq & ((reg_q_3__dup_95_aq) # (reg_q_2__dup_96_aq $ (!reg_q_0__dup_98_aq))))

	.dataa(reg_q_1__dup_97_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_3__dup_95_aq),
	.cin(gnd),
	.combout(nx6368z1),
	.cout());
// synopsys translate_off
defparam ix6368z7096.lut_mask = 16'h7D6B;
defparam ix6368z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N28
fiftyfivenm_lcell_comb ix6368z7097(
// Equation(s):
// nx6368z2 = (reg_q_5__dup_93_aq & ((reg_q_4__dup_94_aq & ((!reg_q_6__dup_92_aq))) # (!reg_q_4__dup_94_aq & ((reg_q_6__dup_92_aq) # (!reg_q_7__dup_91_aq))))) # (!reg_q_5__dup_93_aq & ((reg_q_7__dup_91_aq) # (reg_q_4__dup_94_aq $ (!reg_q_6__dup_92_aq))))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx6368z2),
	.cout());
// synopsys translate_off
defparam ix6368z7097.lut_mask = 16'h5EBD;
defparam ix6368z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N12
fiftyfivenm_lcell_comb ix6368z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_3_ = (reg_q_10__dup_50_aq & ((nx6368z2))) # (!reg_q_10__dup_50_aq & (nx6368z1))

	.dataa(nx6368z1),
	.datab(nx6368z2),
	.datac(reg_q_10__dup_50_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_3_),
	.cout());
// synopsys translate_off
defparam ix6368z7095.lut_mask = 16'hCACA;
defparam ix6368z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N13
dffeas u_seg7_u_dual_seg7_reg_o_char_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_3_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N22
fiftyfivenm_lcell_comb ix7365z7096(
// Equation(s):
// nx7365z1 = (reg_q_1__dup_97_aq & (((reg_q_3__dup_95_aq) # (!reg_q_0__dup_98_aq)))) # (!reg_q_1__dup_97_aq & ((reg_q_2__dup_96_aq & ((reg_q_3__dup_95_aq))) # (!reg_q_2__dup_96_aq & (!reg_q_0__dup_98_aq))))

	.dataa(reg_q_1__dup_97_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(reg_q_0__dup_98_aq),
	.datad(reg_q_3__dup_95_aq),
	.cin(gnd),
	.combout(nx7365z1),
	.cout());
// synopsys translate_off
defparam ix7365z7096.lut_mask = 16'hEF0B;
defparam ix7365z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N24
fiftyfivenm_lcell_comb ix7365z7097(
// Equation(s):
// nx7365z2 = (reg_q_5__dup_93_aq & (((reg_q_7__dup_91_aq) # (!reg_q_4__dup_94_aq)))) # (!reg_q_5__dup_93_aq & ((reg_q_6__dup_92_aq & (reg_q_7__dup_91_aq)) # (!reg_q_6__dup_92_aq & ((!reg_q_4__dup_94_aq)))))

	.dataa(reg_q_6__dup_92_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_4__dup_94_aq),
	.datad(reg_q_5__dup_93_aq),
	.cin(gnd),
	.combout(nx7365z2),
	.cout());
// synopsys translate_off
defparam ix7365z7097.lut_mask = 16'hCF8D;
defparam ix7365z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N0
fiftyfivenm_lcell_comb ix7365z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_4_ = (reg_q_10__dup_50_aq & ((nx7365z2))) # (!reg_q_10__dup_50_aq & (nx7365z1))

	.dataa(gnd),
	.datab(reg_q_10__dup_50_aq),
	.datac(nx7365z1),
	.datad(nx7365z2),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_4_),
	.cout());
// synopsys translate_off
defparam ix7365z7095.lut_mask = 16'hFC30;
defparam ix7365z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N1
dffeas u_seg7_u_dual_seg7_reg_o_char_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_4_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y15_N26
fiftyfivenm_lcell_comb ix10356z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_7_ = (reg_q_10__dup_50_aq & (u_kirsch_reg_o_mode_1__aq)) # (!reg_q_10__dup_50_aq & ((!u_kirsch_reg_o_mode_0__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_o_mode_1__aq),
	.datac(reg_q_10__dup_50_aq),
	.datad(u_kirsch_reg_o_mode_0__aq),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_7_),
	.cout());
// synopsys translate_off
defparam ix10356z7095.lut_mask = 16'hC0CF;
defparam ix10356z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y15_N27
dffeas u_seg7_u_dual_seg7_reg_o_char_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_7_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_7_.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X0_Y5_N1
fiftyfivenm_io_ibuf sw_a0_a_ainput(
	.i(sw[0]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a0_a_ainput_o));
// synopsys translate_off
defparam sw_a0_a_ainput.bus_hold = "false";
defparam sw_a0_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a0_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y19_N15
fiftyfivenm_io_ibuf sw_a1_a_ainput(
	.i(sw[1]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a1_a_ainput_o));
// synopsys translate_off
defparam sw_a1_a_ainput.bus_hold = "false";
defparam sw_a1_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a1_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y19_N22
fiftyfivenm_io_ibuf sw_a2_a_ainput(
	.i(sw[2]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a2_a_ainput_o));
// synopsys translate_off
defparam sw_a2_a_ainput.bus_hold = "false";
defparam sw_a2_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a2_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y20_N15
fiftyfivenm_io_ibuf sw_a3_a_ainput(
	.i(sw[3]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a3_a_ainput_o));
// synopsys translate_off
defparam sw_a3_a_ainput.bus_hold = "false";
defparam sw_a3_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a3_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y21_N15
fiftyfivenm_io_ibuf sw_a4_a_ainput(
	.i(sw[4]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a4_a_ainput_o));
// synopsys translate_off
defparam sw_a4_a_ainput.bus_hold = "false";
defparam sw_a4_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a4_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y22_N15
fiftyfivenm_io_ibuf sw_a5_a_ainput(
	.i(sw[5]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a5_a_ainput_o));
// synopsys translate_off
defparam sw_a5_a_ainput.bus_hold = "false";
defparam sw_a5_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a5_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X3_Y0_N8
fiftyfivenm_io_ibuf sw_a6_a_ainput(
	.i(sw[6]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a6_a_ainput_o));
// synopsys translate_off
defparam sw_a6_a_ainput.bus_hold = "false";
defparam sw_a6_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a6_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X1_Y10_N15
fiftyfivenm_io_ibuf sw_a7_a_ainput(
	.i(sw[7]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a7_a_ainput_o));
// synopsys translate_off
defparam sw_a7_a_ainput.bus_hold = "false";
defparam sw_a7_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a7_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X9_Y0_N22
fiftyfivenm_io_ibuf pb_a1_a_ainput(
	.i(pb[1]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a1_a_ainput_o));
// synopsys translate_off
defparam pb_a1_a_ainput.bus_hold = "false";
defparam pb_a1_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a1_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X9_Y0_N29
fiftyfivenm_io_ibuf pb_a2_a_ainput(
	.i(pb[2]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a2_a_ainput_o));
// synopsys translate_off
defparam pb_a2_a_ainput.bus_hold = "false";
defparam pb_a2_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a2_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X6_Y0_N15
fiftyfivenm_io_ibuf pb_a3_a_ainput(
	.i(pb[3]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a3_a_ainput_o));
// synopsys translate_off
defparam pb_a3_a_ainput.bus_hold = "false";
defparam pb_a3_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a3_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: UNVM_X0_Y11_N40
fiftyfivenm_unvm a_aQUARTUS_CREATED_UNVM_a(
	.arclk(vcc),
	.arshft(vcc),
	.drclk(vcc),
	.drshft(vcc),
	.drdin(vcc),
	.nprogram(vcc),
	.nerase(vcc),
	.nosc_ena(a_aQUARTUS_CREATED_GND_aI_combout),
	.par_en(vcc),
	.xe_ye(a_aQUARTUS_CREATED_GND_aI_combout),
	.se(a_aQUARTUS_CREATED_GND_aI_combout),
	.ardin(23'b11111111111111111111111),
	.busy(a_aQUARTUS_CREATED_UNVM_a_abusy),
	.osc(),
	.bgpbusy(),
	.sp_pass(),
	.se_pass(),
	.drdout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range1_end_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range1_offset = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range2_offset = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.is_compressed_image = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.is_dual_boot = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.is_eram_skip = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.max_ufm_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.max_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.min_ufm_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.min_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.part_name = "quartus_created_unvm";
defparam a_aQUARTUS_CREATED_UNVM_a.reserve_block = "true";
// synopsys translate_on

// Location: ADCBLOCK_X10_Y24_N0
fiftyfivenm_adcblock a_aQUARTUS_CREATED_ADC1_a(
	.soc(a_aQUARTUS_CREATED_GND_aI_combout),
	.usr_pwd(vcc),
	.tsen(a_aQUARTUS_CREATED_GND_aI_combout),
	.clkin_from_pll_c0(gnd),
	.chsel({a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout}),
	.eoc(a_aQUARTUS_CREATED_ADC1_a_aeoc),
	.dout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_ADC1_a.analog_input_pin_mask = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.clkdiv = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.device_partname_fivechar_prefix = "none";
defparam a_aQUARTUS_CREATED_ADC1_a.is_this_first_or_second_adc = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.prescalar = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.pwd = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.refsel = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.reserve_block = "true";
defparam a_aQUARTUS_CREATED_ADC1_a.testbits = 66;
defparam a_aQUARTUS_CREATED_ADC1_a.tsclkdiv = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.tsclksel = 0;
// synopsys translate_on

assign uart_tx = uart_tx_aoutput_o;

assign seg7_en[0] = seg7_en_a0_a_aoutput_o;

assign seg7_en[1] = seg7_en_a1_a_aoutput_o;

assign seg7_data[0] = seg7_data_a0_a_aoutput_o;

assign seg7_data[1] = seg7_data_a1_a_aoutput_o;

assign seg7_data[2] = seg7_data_a2_a_aoutput_o;

assign seg7_data[3] = seg7_data_a3_a_aoutput_o;

assign seg7_data[4] = seg7_data_a4_a_aoutput_o;

assign seg7_data[5] = seg7_data_a5_a_aoutput_o;

assign seg7_data[6] = seg7_data_a6_a_aoutput_o;

assign seg7_data[7] = seg7_data_a7_a_aoutput_o;

assign led[0] = led_a0_a_aoutput_o;

assign led[1] = led_a1_a_aoutput_o;

assign led[2] = led_a2_a_aoutput_o;

assign led[3] = led_a3_a_aoutput_o;

assign led[4] = led_a4_a_aoutput_o;

assign led[5] = led_a5_a_aoutput_o;

assign led[6] = led_a6_a_aoutput_o;

assign led[7] = led_a7_a_aoutput_o;

endmodule
