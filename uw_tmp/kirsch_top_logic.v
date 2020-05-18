//
// Verilog description for cell kirsch_top, 
// Thu Mar 28 13:15:56 2019
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module kirsch_top ( reset_n, clk, uart_rx, uart_tx, sw, pb, seg7_en, seg7_data, 
                    led ) ;

    input reset_n ;
    input clk ;
    input uart_rx ;
    output uart_tx ;
    input [7:0]sw ;
    input [3:0]pb ;
    output [1:0]seg7_en ;
    output [7:0]seg7_data ;
    output [7:0]led ;

    wire k_o_valid, k_o_data_6_, k_o_data_3_, k_o_data_2_, k_o_data_1_, 
         k_o_data_0_, tx_busy_delayed, tx_busy, rx_valid;
    wire [7:0]seg7_num;
    wire [1:1]seg7_pts;
    wire uart_reset;
    wire [10:0]reset_count;
    wire [7:0]uart_pixel;
    wire rb_rd_en, rb_rd_en_delayed, wait_for_tx_valid, 
         wait_for_tx_valid_delayed;
    wire [7:0]write_fifo_wr_pointer;
    wire [7:0]write_fifo_rd_pointer;
    wire [8:0]write_fifo_status_cnt;
    wire [7:0]write_fifo_q;
    wire [7:0]write_fifo_q_saved;
    wire write_fifo_rd_en_delayed;
    wire [7:0]read_fifo_wr_pointer;
    wire [7:0]read_fifo_rd_pointer;
    wire [8:0]read_fifo_status_cnt;
    wire [7:0]read_fifo_q;
    wire [7:0]read_fifo_q_saved;
    wire u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
         u_seg7_u_dual_seg7_prev_reset, u_seg7_u_dual_seg7_prev_char0_en;
    wire [7:0]u_uart_Rx_Reg;
    wire u_uart_RxDivisor_4_;
    wire [10:0]u_uart_RxDiv;
    wire [11:0]u_uart_TxDiv;
    wire u_uart_TopTx, u_uart_TopRx;
    wire [3:0]u_uart_TxBitCnt;
    wire [3:0]u_uart_RxBitCnt;
    wire u_uart_Rx_r;
    wire [5:0]u_uart_RxFSM;
    wire [1:0]u_uart_TxFSM;
    wire [7:0]u_kirsch_o_col;
    wire [7:0]u_kirsch_r_a;
    wire [7:0]u_kirsch_r_b;
    wire [7:0]u_kirsch_r_c;
    wire [7:0]u_kirsch_r_d;
    wire [7:0]u_kirsch_r_e;
    wire [7:0]u_kirsch_r_f;
    wire [7:0]u_kirsch_r_g;
    wire [7:0]u_kirsch_r_h;
    wire [7:0]u_kirsch_r_i;
    wire [7:0]u_kirsch_i3;
    wire [7:0]u_kirsch_i4;
    wire [8:0]u_kirsch_r2;
    wire [11:0]u_kirsch_r3;
    wire [12:0]u_kirsch_r6;
    wire [0:2]u_kirsch_wr_en;
    wire [1:7]u_kirsch_v;
    wire [8:0]u_kirsch_r2_14n0r1;
    wire [8:0]u_kirsch_r3_15n1s1;
    wire [9:0]u_kirsch_r4_16n0r1;
    wire [12:1]u_kirsch_r6_18n0r1;
    wire u_kirsch_r7_19n0r1_13_, u_kirsch_r7_19n0r1_12_, u_kirsch_r7_19n0r1_11_, 
         u_kirsch_r7_19n0r1_10_, u_kirsch_r7_19n0r1_9_, u_kirsch_r7_19n0r1_8_, 
         u_kirsch_r7_19n0r1_7_;
    wire [7:0]u_kirsch_M_out_2_;
    wire [7:0]u_kirsch_M_out_1_;
    wire [7:0]u_kirsch_M_out_0_;
    wire [2:0]u_kirsch_r1_ty;
    wire [7:0]u_kirsch_r1_val;
    wire [2:0]u_kirsch_r4_ty;
    wire [9:0]u_kirsch_r4_val;
    wire [2:0]u_kirsch_r5_ty;
    wire [9:0]u_kirsch_r5_val;
    wire [2:0]u_kirsch_r7_ty;
    wire u_kirsch_r7_val_13_, u_kirsch_r7_val_12_, u_kirsch_r7_val_11_, 
         u_kirsch_r7_val_10_, u_kirsch_r7_val_9_, u_kirsch_r7_val_8_, 
         u_kirsch_r7_val_7_, nx46527z6, nx39326z1, nx16733z1, nx51853z1, 
         nx50856z1, inc_d_0_, nx27063z1, inc_d_1_, nx39256z1, inc_d_2_, 
         nx57428z1, inc_d_3_, nx23040z1, inc_d_4_, nx58827z1, inc_d_5_, 
         nx37857z1, inc_d_6_, nx2950z1, inc_d_7_, nx47012z1, inc_d_8_, nx9072z1, 
         inc_d_9_, nx40977z1, inc_d_10_, inc_d_0__dup_858, nx17767z1, 
         inc_d_1__dup_860, nx33341z1, inc_d_2__dup_862, nx48915z1, 
         inc_d_3__dup_864, nx64489z1, inc_d_4__dup_866, nx32952z1, 
         inc_d_5__dup_868, nx17378z1, inc_d_6__dup_870, nx9591z1, 
         inc_d_7__dup_872, inc_d_0__dup_894, nx48733z1, inc_d_1__dup_896, 
         nx33159z1, inc_d_2__dup_898, nx472z1, inc_d_3__dup_900, nx16046z1, 
         inc_d_4__dup_902, nx31620z1, inc_d_5__dup_904, nx47194z1, 
         inc_d_6__dup_906, nx10555z1, inc_d_7__dup_908, incdec_mux_0_dup_113, 
         nx14325z1, incdec_mux_1_dup_114, nx35637z1, incdec_mux_2_dup_115, 
         nx20063z1, incdec_mux_3_dup_116, nx4489z1, incdec_mux_4_dup_117, 
         nx29142z1, incdec_mux_5_dup_118, nx44716z1, incdec_mux_6_dup_119, 
         nx60290z1, incdec_mux_7_dup_120, nx2541z1, incdec_mux_8_dup_121, 
         inc_d_0__dup_959, nx25574z1, inc_d_1__dup_961, nx10000z1, 
         inc_d_2__dup_963, nx5574z1, inc_d_3__dup_965, nx21148z1, 
         inc_d_4__dup_967, nx54779z1, inc_d_5__dup_969, nx60719z1, 
         inc_d_6__dup_971, nx52932z1, inc_d_7__dup_973, inc_d_0__dup_995, 
         nx46785z1, inc_d_1__dup_997, nx50656z1, inc_d_2__dup_999, nx35082z1, 
         inc_d_3__dup_1001, nx19508z1, inc_d_4__dup_1003, nx61602z1, 
         inc_d_5__dup_1005, nx11640z1, inc_d_6__dup_1007, nx19427z1, 
         inc_d_7__dup_1009, incdec_mux_0_dup_113_dup_1033, nx40197z2, 
         incdec_mux_1_dup_114_dup_1035, nx24623z1, incdec_mux_2_dup_115_dup_1037, 
         nx56487z1, incdec_mux_3_dup_116_dup_1039, nx24582z1, 
         incdec_mux_4_dup_117_dup_1041, nx40156z1, incdec_mux_5_dup_118_dup_1043, 
         nx55730z1, incdec_mux_6_dup_119_dup_1045, nx59768z1, 
         incdec_mux_7_dup_120_dup_1047, nx51981z1, incdec_mux_8_dup_121_dup_1049, 
         nx44217z1, nx55707z1, nx11527z1, nx38435z1, nx22861z1, nx54766z1, 
         nx39192z1, nx41918z1, nx57492z1, nx7530z1, inc_d_0__dup_1070, nx57492z2, 
         inc_d_1__dup_1071, nx41918z2, inc_d_2__dup_1072, nx39192z2, 
         inc_d_3__dup_1073, nx54766z2, inc_d_4__dup_1074, nx22861z2, 
         inc_d_5__dup_1075, nx38435z2, inc_d_6__dup_1076, nx11527z2, 
         inc_d_7__dup_1077, nx55707z2, inc_d_8__dup_1078, nx44217z2, 
         inc_d_9__dup_1079, nx10586z1, inc_d_10__dup_1080, inc_d_0__dup_1118, 
         nx7080z1, inc_d_1__dup_1120, nx24825z1, inc_d_2__dup_1122, nx9251z1, 
         inc_d_3__dup_1124, nx59213z1, inc_d_4__dup_1126, nx43639z1, 
         inc_d_5__dup_1128, nx37471z1, inc_d_6__dup_1130, nx51531z1, 
         inc_d_7__dup_1132, nx63967z1, inc_d_8__dup_1134, nx48393z1, 
         inc_d_9__dup_1136, nx40606z1, inc_d_10__dup_1138, inc_d_0__dup_1171, 
         nx7939z1, inc_d_1__dup_1173, nx57901z1, inc_d_2__dup_1175, nx42327z1, 
         inc_d_3__dup_1177, nx38783z1, inc_d_4__dup_1179, nx6878z1, 
         inc_d_5__dup_1181, nx22452z1, inc_d_6__dup_1183, nx38026z1, 
         inc_d_7__dup_1185, nx11936z1, inc_d_8__dup_1187, nx47250z1, 
         inc_d_9__dup_1189, nx61898z1, inc_d_10__dup_1191, nx54111z1, inc_d_11_, 
         nx24156z5, nx39730z5, nx55304z5, nx60194z5, nx26563z5, nx10989z5, 
         nx4585z1, nx15489z1, nx31820z1, nx64864z1, nx48533z1, nx51391z1, 
         nx45293z1, nx28962z1, nx5426z1, nx43779z1, nx9391z1, nx24965z1, 
         nx6531z1, nx56493z1, nx22862z1, nx58248z1, nx8286z1, nx23860z1, 
         nx26102z1, nx58007z1, nx42433z1, inc_d_0__dup_1243, nx30952z1, 
         inc_d_1__dup_1245, nx50158z1, inc_d_2__dup_1247, nx196z1, 
         inc_d_3__dup_1249, nx33827z1, inc_d_4__dup_1251, nx16135z1, 
         inc_d_5__dup_1253, nx561z1, inc_d_6__dup_1255, nx58310z1, 
         inc_d_7__dup_1257, inc_d_0__dup_1281, nx56034z1, inc_d_1__dup_1283, 
         nx40460z1, inc_d_2__dup_1285, nx40650z1, inc_d_3__dup_1287, nx56224z1, 
         inc_d_4__dup_1289, nx24319z1, inc_d_5__dup_1291, nx25643z1, 
         inc_d_6__dup_1293, nx17856z1, inc_d_7__dup_1295, nx18275z3, nx30930z3, 
         nx3458z3, nx19789z3, nx11359z3, nx42507z3, nx39360z3, nx33205z1, 
         nx2057z1, nx29091z1, nx52776z1, nx21628z1, nx27577z1, nx58725z1, 
         nx41199z1, nx45160z1, nx4045z1, nx35193z1, nx46674z1, nx50010z1, 
         nx15622z1, nx709z1, nx30439z1, nx14108z1, nx20280z1, nx14412z1, 
         nx35550z1, nx19976z1, nx51881z1, nx29229z1, nx60377z1, nx21490z1, 
         nx55878z1, nx40806z1, nx41061z1, nx9913z1, nx49423z1, nx18275z1, 
         nx30930z1, nx3458z1, nx19789z1, nx11359z1, nx42507z1, nx39360z1, 
         nx49423z2, nx18275z2, nx30930z2, nx3458z2, nx19789z2, nx11359z2, 
         nx42507z2, nx39360z2;
    wire [7:0]k_i_pixel;
    wire k_o_data_7_, GND;
    wire [7:0]rb_i_data;
    wire rb_rd_en_true, PWR, nx37156z7, nx15004z1, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4;
    wire [7:0]write_fifo_pointer;
    wire nx7605z1;
    wire [7:0]read_fifo_pointer;
    wire nx40197z1, u_seg7_u_dual_seg7_muxed_char_4_, 
         u_seg7_u_dual_seg7_muxed_char_3_, u_seg7_u_dual_seg7_muxed_char_2_, 
         u_seg7_u_dual_seg7_muxed_char_0_, u_seg7_u_dual_seg7_muxed_char_7_, 
         nx29573z1, u_seg7_u_dual_seg7_load_reg, nx14933z1, nx18859z1, nx44871z1, 
         nx13938z1, nx12790z1, nx17862z4, nx10796z1, nx11793z1, nx9799z1, 
         nx59343z1, nx8802z1, nx13251z1, nx57349z1, nx9799z2;
    wire [7:0]u_kirsch_M_a;
    wire [7:0]u_kirsch_M_b;
    wire nx26352z4;
    wire [7:0]u_kirsch_r_a_11n3ss1;
    wire [7:0]u_kirsch_r_h_11n3ss1;
    wire [7:0]u_kirsch_r_g_11n3ss1;
    wire [7:0]u_kirsch_r_b_11n3ss1;
    wire [7:0]u_kirsch_r_i_11n3ss1;
    wire [7:0]u_kirsch_r_f_11n3ss1;
    wire nx2550z1, nx25991z1, nx26352z1, nx25399z7, nx25399z2, nx3238z1, 
         nx22605z1, nx32900z1, nx26352z2, nx37156z5, nx37156z3;
    wire [7:0]u_kirsch_i1_val;
    wire [7:0]u_kirsch_i2_val;
    wire b_0_, b_1_, nx21267z1, nx20270z1, nx19273z1, nx18276z1, nx17279z1, 
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
         nx7965z1, nx63652z1, NOT_u_uart_Tx_Reg_7_, NOT_rb_o_data_6_, 
         NOT_u_uart_Tx_Reg_6_, NOT_rb_o_data_5_, NOT_u_uart_Tx_Reg_5_, 
         NOT_rb_o_data_4_, NOT_u_uart_Tx_Reg_4_, NOT_rb_o_data_3_, 
         NOT_u_uart_Tx_Reg_3_, NOT_rb_o_data_2_, NOT_u_uart_Tx_Reg_2_, 
         NOT_rb_o_data_1_, nx17862z3, NOT_rb_o_data_0_, nx22500z1, nx48848z1, 
         NOT_GND, nx25399z9, nx37156z1, nx62197z1, nx17862z1, nx7359z4, 
         NOT_rb_rd_en_delayed, nx12790z4, NOT_uart_rx, NOT_u_uart_Tx_Reg_8_, 
         NOT_u_uart_Tx_Reg_14n6ss1_8_, nx64683z2, nx13787z1, nx4364z1;
    wire [2327:0] xmplr_dummy ;




    ram_dq_8_0 write_fifo_mem_mem (.wr_data1 ({uart_pixel[7],uart_pixel[6],
               uart_pixel[5],uart_pixel[4],uart_pixel[3],uart_pixel[2],
               uart_pixel[1],uart_pixel[0]}), .rd_data1 ({write_fifo_q[7],
               write_fifo_q[6],write_fifo_q[5],write_fifo_q[4],write_fifo_q[3],
               write_fifo_q[2],write_fifo_q[1],write_fifo_q[0]}), .addr1 ({
               write_fifo_pointer[7],write_fifo_pointer[6],write_fifo_pointer[5]
               ,write_fifo_pointer[4],write_fifo_pointer[3],
               write_fifo_pointer[2],write_fifo_pointer[1],write_fifo_pointer[0]
               }), .wr_clk1 (clk), .wr_ena1 (rx_valid)) ;
    ram_dq_8_1 read_fifo_mem_mem (.wr_data1 ({rb_i_data[7],rb_i_data[6],
               rb_i_data[5],rb_i_data[4],rb_i_data[3],rb_i_data[2],rb_i_data[1],
               rb_i_data[0]}), .rd_data1 ({read_fifo_q[7],read_fifo_q[6],
               read_fifo_q[5],read_fifo_q[4],read_fifo_q[3],read_fifo_q[2],
               read_fifo_q[1],read_fifo_q[0]}), .addr1 ({read_fifo_pointer[7],
               read_fifo_pointer[6],read_fifo_pointer[5],read_fifo_pointer[4],
               read_fifo_pointer[3],read_fifo_pointer[2],read_fifo_pointer[1],
               read_fifo_pointer[0]}), .wr_clk1 (clk), .wr_ena1 (nx11963z1)) ;
    ram_dq_8_2 u_kirsch_mem_gen_0_m_mem (.wr_data1 ({k_i_pixel[7],k_i_pixel[6],
               k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],
               k_i_pixel[0]}), .rd_data1 ({u_kirsch_M_out_0_[7],
               u_kirsch_M_out_0_[6],u_kirsch_M_out_0_[5],u_kirsch_M_out_0_[4],
               u_kirsch_M_out_0_[3],u_kirsch_M_out_0_[2],u_kirsch_M_out_0_[1],
               u_kirsch_M_out_0_[0]}), .addr1 ({u_kirsch_o_col[7],
               u_kirsch_o_col[6],u_kirsch_o_col[5],u_kirsch_o_col[4],
               u_kirsch_o_col[3],u_kirsch_o_col[2],u_kirsch_o_col[1],
               u_kirsch_o_col[0]}), .wr_clk1 (clk), .wr_ena1 (u_kirsch_wr_en[0])
               ) ;
    ram_dq_8_3 u_kirsch_mem_gen_1_m_mem (.wr_data1 ({k_i_pixel[7],k_i_pixel[6],
               k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],
               k_i_pixel[0]}), .rd_data1 ({u_kirsch_M_out_1_[7],
               u_kirsch_M_out_1_[6],u_kirsch_M_out_1_[5],u_kirsch_M_out_1_[4],
               u_kirsch_M_out_1_[3],u_kirsch_M_out_1_[2],u_kirsch_M_out_1_[1],
               u_kirsch_M_out_1_[0]}), .addr1 ({u_kirsch_o_col[7],
               u_kirsch_o_col[6],u_kirsch_o_col[5],u_kirsch_o_col[4],
               u_kirsch_o_col[3],u_kirsch_o_col[2],u_kirsch_o_col[1],
               u_kirsch_o_col[0]}), .wr_clk1 (clk), .wr_ena1 (u_kirsch_wr_en[1])
               ) ;
    ram_dq_8_4 u_kirsch_mem_gen_2_m_mem (.wr_data1 ({k_i_pixel[7],k_i_pixel[6],
               k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],
               k_i_pixel[0]}), .rd_data1 ({u_kirsch_M_out_2_[7],
               u_kirsch_M_out_2_[6],u_kirsch_M_out_2_[5],u_kirsch_M_out_2_[4],
               u_kirsch_M_out_2_[3],u_kirsch_M_out_2_[2],u_kirsch_M_out_2_[1],
               u_kirsch_M_out_2_[0]}), .addr1 ({u_kirsch_o_col[7],
               u_kirsch_o_col[6],u_kirsch_o_col[5],u_kirsch_o_col[4],
               u_kirsch_o_col[3],u_kirsch_o_col[2],u_kirsch_o_col[1],
               u_kirsch_o_col[0]}), .wr_clk1 (clk), .wr_ena1 (u_kirsch_wr_en[2])
               ) ;
    assign seg7_en[0] = ~seg7_en[1] ;
    assign k_o_data_7_ = ~reset_n ;
    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4 ;
    TRI led_triBus1_0_ (.out (led[0]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_1_ (.out (led[1]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_2_ (.out (led[2]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_3_ (.out (led[3]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_4_ (.out (led[4]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_5_ (.out (led[5]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_6_ (.out (led[6]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_7_ (.out (led[7]), .in (GND), .oe (GND)) ;
    TRI u_seg7_u_dual_seg7_o_char_triBus3_6_ (.out (seg7_data[6]), .in (GND), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4)) ;
    TRI u_seg7_u_dual_seg7_o_char_triBus3_5_ (.out (seg7_data[5]), .in (GND), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2)) ;
    TRI u_seg7_u_dual_seg7_ix36127z20184 (.out (seg7_data[1]), .in (GND), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0)) ;
    assign incdec_mux_0_dup_113_dup_1033 = ~read_fifo_status_cnt[0] ;
    assign incdec_mux_0_dup_113 = ~write_fifo_status_cnt[0] ;
    assign u_kirsch_wr_en[0] = ~nx22500z1 ;
    assign NOT_GND = ~GND ;
    assign uart_tx = ~nx62197z1 ;
    assign NOT_rb_rd_en_delayed = ~rb_rd_en_delayed ;
    assign u_uart_Rx_r = ~nx12790z4 ;
    assign NOT_uart_rx = ~uart_rx ;
    assign u_uart_RxFSM[0] = ~nx64683z2 ;
    fiftyfivenm_lcell_comb ix2_fadd (.combout (inc_d_0_), .cout (nx27063z1), .dataa (
                           reset_count[0]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR)) ;
                           defparam ix2_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix6_fadd (.combout (inc_d_1_), .cout (nx39256z1), .dataa (
                           reset_count[1]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx27063z1)) ;
                           defparam ix6_fadd.lut_mask = 16'h5aa0;
                           defparam ix6_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix10_fadd (.combout (inc_d_2_), .cout (nx57428z1), .dataa (
                           reset_count[2]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx39256z1)) ;
                           defparam ix10_fadd.lut_mask = 16'h5aa0;
                           defparam ix10_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix14_fadd (.combout (inc_d_3_), .cout (nx23040z1), .dataa (
                           reset_count[3]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx57428z1)) ;
                           defparam ix14_fadd.lut_mask = 16'h5aa0;
                           defparam ix14_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix18_fadd (.combout (inc_d_4_), .cout (nx58827z1), .dataa (
                           reset_count[4]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx23040z1)) ;
                           defparam ix18_fadd.lut_mask = 16'h5aa0;
                           defparam ix18_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix22_fadd (.combout (inc_d_5_), .cout (nx37857z1), .dataa (
                           reset_count[5]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx58827z1)) ;
                           defparam ix22_fadd.lut_mask = 16'h5aa0;
                           defparam ix22_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix26_fadd (.combout (inc_d_6_), .cout (nx2950z1), .dataa (
                           reset_count[6]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx37857z1)) ;
                           defparam ix26_fadd.lut_mask = 16'h5aa0;
                           defparam ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix834_fadd (.combout (inc_d_7_), .cout (nx47012z1), .dataa (
                           reset_count[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx2950z1)) ;
                           defparam ix834_fadd.lut_mask = 16'h5aa0;
                           defparam ix834_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix836_fadd (.combout (inc_d_8_), .cout (nx9072z1), .dataa (
                           reset_count[8]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx47012z1)) ;
                           defparam ix836_fadd.lut_mask = 16'h5aa0;
                           defparam ix836_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix49_fadd (.combout (inc_d_9_), .cout (nx40977z1), .dataa (
                           reset_count[9]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx9072z1)) ;
                           defparam ix49_fadd.lut_mask = 16'h5aa0;
                           defparam ix49_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix51_fadd (.combout (inc_d_10_), .dataa (
                           reset_count[10]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx40977z1)) ;
                           defparam ix51_fadd.lut_mask = 16'h5a5a;
                           defparam ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix840_fadd (.combout (inc_d_0__dup_858), .cout (
                           nx17767z1), .dataa (write_fifo_wr_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix840_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix842_fadd (.combout (inc_d_1__dup_860), .cout (
                           nx33341z1), .dataa (write_fifo_wr_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx17767z1)
                           ) ;
                           defparam ix842_fadd.lut_mask = 16'h5aa0;
                           defparam ix842_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix844_fadd (.combout (inc_d_2__dup_862), .cout (
                           nx48915z1), .dataa (write_fifo_wr_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx33341z1)
                           ) ;
                           defparam ix844_fadd.lut_mask = 16'h5aa0;
                           defparam ix844_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix846_fadd (.combout (inc_d_3__dup_864), .cout (
                           nx64489z1), .dataa (write_fifo_wr_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx48915z1)
                           ) ;
                           defparam ix846_fadd.lut_mask = 16'h5aa0;
                           defparam ix846_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix848_fadd (.combout (inc_d_4__dup_866), .cout (
                           nx32952z1), .dataa (write_fifo_wr_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx64489z1)
                           ) ;
                           defparam ix848_fadd.lut_mask = 16'h5aa0;
                           defparam ix848_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix850_fadd (.combout (inc_d_5__dup_868), .cout (
                           nx17378z1), .dataa (write_fifo_wr_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx32952z1)
                           ) ;
                           defparam ix850_fadd.lut_mask = 16'h5aa0;
                           defparam ix850_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix852_fadd (.combout (inc_d_6__dup_870), .cout (
                           nx9591z1), .dataa (write_fifo_wr_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx17378z1)
                           ) ;
                           defparam ix852_fadd.lut_mask = 16'h5aa0;
                           defparam ix852_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix853_fadd (.combout (inc_d_7__dup_872), .dataa (
                           write_fifo_wr_pointer[7]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx9591z1)) ;
                           defparam ix853_fadd.lut_mask = 16'h5a5a;
                           defparam ix853_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix875_fadd (.combout (inc_d_0__dup_894), .cout (
                           nx48733z1), .dataa (write_fifo_rd_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix875_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix877_fadd (.combout (inc_d_1__dup_896), .cout (
                           nx33159z1), .dataa (write_fifo_rd_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx48733z1)
                           ) ;
                           defparam ix877_fadd.lut_mask = 16'h5aa0;
                           defparam ix877_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix879_fadd (.combout (inc_d_2__dup_898), .cout (
                           nx472z1), .dataa (write_fifo_rd_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx33159z1)
                           ) ;
                           defparam ix879_fadd.lut_mask = 16'h5aa0;
                           defparam ix879_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix881_fadd (.combout (inc_d_3__dup_900), .cout (
                           nx16046z1), .dataa (write_fifo_rd_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx472z1)) ;
                           defparam ix881_fadd.lut_mask = 16'h5aa0;
                           defparam ix881_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix883_fadd (.combout (inc_d_4__dup_902), .cout (
                           nx31620z1), .dataa (write_fifo_rd_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx16046z1)
                           ) ;
                           defparam ix883_fadd.lut_mask = 16'h5aa0;
                           defparam ix883_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix885_fadd (.combout (inc_d_5__dup_904), .cout (
                           nx47194z1), .dataa (write_fifo_rd_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx31620z1)
                           ) ;
                           defparam ix885_fadd.lut_mask = 16'h5aa0;
                           defparam ix885_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix887_fadd (.combout (inc_d_6__dup_906), .cout (
                           nx10555z1), .dataa (write_fifo_rd_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx47194z1)
                           ) ;
                           defparam ix887_fadd.lut_mask = 16'h5aa0;
                           defparam ix887_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix888_fadd (.combout (inc_d_7__dup_908), .dataa (
                           write_fifo_rd_pointer[7]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx10555z1)) ;
                           defparam ix888_fadd.lut_mask = 16'h5a5a;
                           defparam ix888_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix940_fadd (.combout (inc_d_0__dup_959), .cout (
                           nx25574z1), .dataa (read_fifo_wr_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix940_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix942_fadd (.combout (inc_d_1__dup_961), .cout (
                           nx10000z1), .dataa (read_fifo_wr_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx25574z1)
                           ) ;
                           defparam ix942_fadd.lut_mask = 16'h5aa0;
                           defparam ix942_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix944_fadd (.combout (inc_d_2__dup_963), .cout (
                           nx5574z1), .dataa (read_fifo_wr_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx10000z1)
                           ) ;
                           defparam ix944_fadd.lut_mask = 16'h5aa0;
                           defparam ix944_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix946_fadd (.combout (inc_d_3__dup_965), .cout (
                           nx21148z1), .dataa (read_fifo_wr_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx5574z1)
                           ) ;
                           defparam ix946_fadd.lut_mask = 16'h5aa0;
                           defparam ix946_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix948_fadd (.combout (inc_d_4__dup_967), .cout (
                           nx54779z1), .dataa (read_fifo_wr_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx21148z1)
                           ) ;
                           defparam ix948_fadd.lut_mask = 16'h5aa0;
                           defparam ix948_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix950_fadd (.combout (inc_d_5__dup_969), .cout (
                           nx60719z1), .dataa (read_fifo_wr_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx54779z1)
                           ) ;
                           defparam ix950_fadd.lut_mask = 16'h5aa0;
                           defparam ix950_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix952_fadd (.combout (inc_d_6__dup_971), .cout (
                           nx52932z1), .dataa (read_fifo_wr_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx60719z1)
                           ) ;
                           defparam ix952_fadd.lut_mask = 16'h5aa0;
                           defparam ix952_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix953_fadd (.combout (inc_d_7__dup_973), .dataa (
                           read_fifo_wr_pointer[7]), .datab (1'b1), .datac (1'b1
                           ), .datad (PWR), .cin (nx52932z1)) ;
                           defparam ix953_fadd.lut_mask = 16'h5a5a;
                           defparam ix953_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix976_fadd (.combout (inc_d_0__dup_995), .cout (
                           nx46785z1), .dataa (read_fifo_rd_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix976_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix978_fadd (.combout (inc_d_1__dup_997), .cout (
                           nx50656z1), .dataa (read_fifo_rd_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx46785z1)
                           ) ;
                           defparam ix978_fadd.lut_mask = 16'h5aa0;
                           defparam ix978_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix980_fadd (.combout (inc_d_2__dup_999), .cout (
                           nx35082z1), .dataa (read_fifo_rd_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx50656z1)
                           ) ;
                           defparam ix980_fadd.lut_mask = 16'h5aa0;
                           defparam ix980_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix982_fadd (.combout (inc_d_3__dup_1001), .cout (
                           nx19508z1), .dataa (read_fifo_rd_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx35082z1)
                           ) ;
                           defparam ix982_fadd.lut_mask = 16'h5aa0;
                           defparam ix982_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix984_fadd (.combout (inc_d_4__dup_1003), .cout (
                           nx61602z1), .dataa (read_fifo_rd_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx19508z1)
                           ) ;
                           defparam ix984_fadd.lut_mask = 16'h5aa0;
                           defparam ix984_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix986_fadd (.combout (inc_d_5__dup_1005), .cout (
                           nx11640z1), .dataa (read_fifo_rd_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx61602z1)
                           ) ;
                           defparam ix986_fadd.lut_mask = 16'h5aa0;
                           defparam ix986_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix988_fadd (.combout (inc_d_6__dup_1007), .cout (
                           nx19427z1), .dataa (read_fifo_rd_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx11640z1)
                           ) ;
                           defparam ix988_fadd.lut_mask = 16'h5aa0;
                           defparam ix988_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix989_fadd (.combout (inc_d_7__dup_1009), .dataa (
                           read_fifo_rd_pointer[7]), .datab (1'b1), .datac (1'b1
                           ), .datad (PWR), .cin (nx19427z1)) ;
                           defparam ix989_fadd.lut_mask = 16'h5a5a;
                           defparam ix989_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1051_fadd (.combout (inc_d_0__dup_1070), .cout (
                           nx57492z2), .dataa (nx7530z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix1051_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix1053_fadd (.combout (inc_d_1__dup_1071), .cout (
                           nx41918z2), .dataa (nx57492z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx57492z2)) ;
                           defparam ix1053_fadd.lut_mask = 16'h5aa0;
                           defparam ix1053_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1055_fadd (.combout (inc_d_2__dup_1072), .cout (
                           nx39192z2), .dataa (nx41918z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx41918z2)) ;
                           defparam ix1055_fadd.lut_mask = 16'h5aa0;
                           defparam ix1055_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1057_fadd (.combout (inc_d_3__dup_1073), .cout (
                           nx54766z2), .dataa (nx39192z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx39192z2)) ;
                           defparam ix1057_fadd.lut_mask = 16'h5aa0;
                           defparam ix1057_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1059_fadd (.combout (inc_d_4__dup_1074), .cout (
                           nx22861z2), .dataa (nx54766z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx54766z2)) ;
                           defparam ix1059_fadd.lut_mask = 16'h5aa0;
                           defparam ix1059_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1061_fadd (.combout (inc_d_5__dup_1075), .cout (
                           nx38435z2), .dataa (nx22861z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx22861z2)) ;
                           defparam ix1061_fadd.lut_mask = 16'h5aa0;
                           defparam ix1061_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1063_fadd (.combout (inc_d_6__dup_1076), .cout (
                           nx11527z2), .dataa (nx38435z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx38435z2)) ;
                           defparam ix1063_fadd.lut_mask = 16'h5aa0;
                           defparam ix1063_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1065_fadd (.combout (inc_d_7__dup_1077), .cout (
                           nx55707z2), .dataa (nx11527z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx11527z2)) ;
                           defparam ix1065_fadd.lut_mask = 16'h5aa0;
                           defparam ix1065_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix55_fadd (.combout (inc_d_8__dup_1078), .cout (
                           nx44217z2), .dataa (nx55707z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx55707z2)) ;
                           defparam ix55_fadd.lut_mask = 16'h5aa0;
                           defparam ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix59_fadd (.combout (inc_d_9__dup_1079), .cout (
                           nx10586z1), .dataa (nx44217z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx44217z2)) ;
                           defparam ix59_fadd.lut_mask = 16'h5aa0;
                           defparam ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix61_fadd (.combout (inc_d_10__dup_1080), .dataa (
                           seg7_en[1]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx10586z1)) ;
                           defparam ix61_fadd.lut_mask = 16'h5a5a;
                           defparam ix61_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1086_fadd (.combout (inc_d_0__dup_1118), .cout (
                           nx7080z1), .dataa (u_uart_RxDiv[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix1086_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix1088_fadd (.combout (inc_d_1__dup_1120), .cout (
                           nx24825z1), .dataa (u_uart_RxDiv[1]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx7080z1)) ;
                           defparam ix1088_fadd.lut_mask = 16'h5aa0;
                           defparam ix1088_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1090_fadd (.combout (inc_d_2__dup_1122), .cout (
                           nx9251z1), .dataa (u_uart_RxDiv[2]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx24825z1)) ;
                           defparam ix1090_fadd.lut_mask = 16'h5aa0;
                           defparam ix1090_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1092_fadd (.combout (inc_d_3__dup_1124), .cout (
                           nx59213z1), .dataa (u_uart_RxDiv[3]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx9251z1)) ;
                           defparam ix1092_fadd.lut_mask = 16'h5aa0;
                           defparam ix1092_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1094_fadd (.combout (inc_d_4__dup_1126), .cout (
                           nx43639z1), .dataa (u_uart_RxDiv[4]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx59213z1)) ;
                           defparam ix1094_fadd.lut_mask = 16'h5aa0;
                           defparam ix1094_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1096_fadd (.combout (inc_d_5__dup_1128), .cout (
                           nx37471z1), .dataa (u_uart_RxDiv[5]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx43639z1)) ;
                           defparam ix1096_fadd.lut_mask = 16'h5aa0;
                           defparam ix1096_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1098_fadd (.combout (inc_d_6__dup_1130), .cout (
                           nx51531z1), .dataa (u_uart_RxDiv[6]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx37471z1)) ;
                           defparam ix1098_fadd.lut_mask = 16'h5aa0;
                           defparam ix1098_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1100_fadd (.combout (inc_d_7__dup_1132), .cout (
                           nx63967z1), .dataa (u_uart_RxDiv[7]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx51531z1)) ;
                           defparam ix1100_fadd.lut_mask = 16'h5aa0;
                           defparam ix1100_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1102_fadd (.combout (inc_d_8__dup_1134), .cout (
                           nx48393z1), .dataa (u_uart_RxDiv[8]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx63967z1)) ;
                           defparam ix1102_fadd.lut_mask = 16'h5aa0;
                           defparam ix1102_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1104_fadd (.combout (inc_d_9__dup_1136), .cout (
                           nx40606z1), .dataa (u_uart_RxDiv[9]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx48393z1)) ;
                           defparam ix1104_fadd.lut_mask = 16'h5aa0;
                           defparam ix1104_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1105_fadd (.combout (inc_d_10__dup_1138), .dataa (
                           u_uart_RxDiv[10]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx40606z1)) ;
                           defparam ix1105_fadd.lut_mask = 16'h5a5a;
                           defparam ix1105_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1140_fadd (.combout (inc_d_0__dup_1171), .cout (
                           nx7939z1), .dataa (u_uart_TxDiv[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix1140_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix1142_fadd (.combout (inc_d_1__dup_1173), .cout (
                           nx57901z1), .dataa (u_uart_TxDiv[1]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx7939z1)) ;
                           defparam ix1142_fadd.lut_mask = 16'h5aa0;
                           defparam ix1142_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1144_fadd (.combout (inc_d_2__dup_1175), .cout (
                           nx42327z1), .dataa (u_uart_TxDiv[2]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx57901z1)) ;
                           defparam ix1144_fadd.lut_mask = 16'h5aa0;
                           defparam ix1144_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1146_fadd (.combout (inc_d_3__dup_1177), .cout (
                           nx38783z1), .dataa (u_uart_TxDiv[3]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx42327z1)) ;
                           defparam ix1146_fadd.lut_mask = 16'h5aa0;
                           defparam ix1146_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1148_fadd (.combout (inc_d_4__dup_1179), .cout (
                           nx6878z1), .dataa (u_uart_TxDiv[4]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx38783z1)) ;
                           defparam ix1148_fadd.lut_mask = 16'h5aa0;
                           defparam ix1148_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1150_fadd (.combout (inc_d_5__dup_1181), .cout (
                           nx22452z1), .dataa (u_uart_TxDiv[5]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx6878z1)) ;
                           defparam ix1150_fadd.lut_mask = 16'h5aa0;
                           defparam ix1150_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1152_fadd (.combout (inc_d_6__dup_1183), .cout (
                           nx38026z1), .dataa (u_uart_TxDiv[6]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx22452z1)) ;
                           defparam ix1152_fadd.lut_mask = 16'h5aa0;
                           defparam ix1152_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1154_fadd (.combout (inc_d_7__dup_1185), .cout (
                           nx11936z1), .dataa (u_uart_TxDiv[7]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx38026z1)) ;
                           defparam ix1154_fadd.lut_mask = 16'h5aa0;
                           defparam ix1154_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1156_fadd (.combout (inc_d_8__dup_1187), .cout (
                           nx47250z1), .dataa (u_uart_TxDiv[8]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx11936z1)) ;
                           defparam ix1156_fadd.lut_mask = 16'h5aa0;
                           defparam ix1156_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix38_fadd (.combout (inc_d_9__dup_1189), .cout (
                           nx61898z1), .dataa (u_uart_TxDiv[9]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx47250z1)) ;
                           defparam ix38_fadd.lut_mask = 16'h5aa0;
                           defparam ix38_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1158_fadd (.combout (inc_d_10__dup_1191), .cout (
                           nx54111z1), .dataa (u_uart_TxDiv[10]), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx61898z1)) ;
                           defparam ix1158_fadd.lut_mask = 16'h5aa0;
                           defparam ix1158_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1159_fadd (.combout (inc_d_11_), .dataa (
                           u_uart_TxDiv[11]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx54111z1)) ;
                           defparam ix1159_fadd.lut_mask = 16'h5a5a;
                           defparam ix1159_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1222_fadd (.combout (inc_d_0__dup_1243), .cout (
                           nx30952z1), .dataa (u_kirsch_o_col[0]), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR)) ;
                           defparam ix1222_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix1224_fadd (.combout (inc_d_1__dup_1245), .cout (
                           nx50158z1), .dataa (u_kirsch_o_col[1]), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx30952z1)) ;
                           defparam ix1224_fadd.lut_mask = 16'h5aa0;
                           defparam ix1224_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1226_fadd (.combout (inc_d_2__dup_1247), .cout (
                           nx196z1), .dataa (u_kirsch_o_col[2]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx50158z1)) ;
                           defparam ix1226_fadd.lut_mask = 16'h5aa0;
                           defparam ix1226_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1228_fadd (.combout (inc_d_3__dup_1249), .cout (
                           nx33827z1), .dataa (u_kirsch_o_col[3]), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx196z1)) ;
                           defparam ix1228_fadd.lut_mask = 16'h5aa0;
                           defparam ix1228_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1230_fadd (.combout (inc_d_4__dup_1251), .cout (
                           nx16135z1), .dataa (u_kirsch_o_col[4]), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx33827z1)) ;
                           defparam ix1230_fadd.lut_mask = 16'h5aa0;
                           defparam ix1230_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1232_fadd (.combout (inc_d_5__dup_1253), .cout (
                           nx561z1), .dataa (u_kirsch_o_col[5]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx16135z1)) ;
                           defparam ix1232_fadd.lut_mask = 16'h5aa0;
                           defparam ix1232_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1234_fadd (.combout (inc_d_6__dup_1255), .cout (
                           nx58310z1), .dataa (u_kirsch_o_col[6]), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx561z1)) ;
                           defparam ix1234_fadd.lut_mask = 16'h5aa0;
                           defparam ix1234_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1235_fadd (.combout (inc_d_7__dup_1257), .dataa (
                           u_kirsch_o_col[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx58310z1)) ;
                           defparam ix1235_fadd.lut_mask = 16'h5a5a;
                           defparam ix1235_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1260_fadd (.combout (inc_d_0__dup_1281), .cout (
                           nx56034z1), .dataa (seg7_num[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix1260_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix1262_fadd (.combout (inc_d_1__dup_1283), .cout (
                           nx40460z1), .dataa (seg7_num[1]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx56034z1)) ;
                           defparam ix1262_fadd.lut_mask = 16'h5aa0;
                           defparam ix1262_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1264_fadd (.combout (inc_d_2__dup_1285), .cout (
                           nx40650z1), .dataa (seg7_num[2]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx40460z1)) ;
                           defparam ix1264_fadd.lut_mask = 16'h5aa0;
                           defparam ix1264_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1266_fadd (.combout (inc_d_3__dup_1287), .cout (
                           nx56224z1), .dataa (seg7_num[3]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx40650z1)) ;
                           defparam ix1266_fadd.lut_mask = 16'h5aa0;
                           defparam ix1266_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1268_fadd (.combout (inc_d_4__dup_1289), .cout (
                           nx24319z1), .dataa (seg7_num[4]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx56224z1)) ;
                           defparam ix1268_fadd.lut_mask = 16'h5aa0;
                           defparam ix1268_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1270_fadd (.combout (inc_d_5__dup_1291), .cout (
                           nx25643z1), .dataa (seg7_num[5]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx24319z1)) ;
                           defparam ix1270_fadd.lut_mask = 16'h5aa0;
                           defparam ix1270_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1272_fadd (.combout (inc_d_6__dup_1293), .cout (
                           nx17856z1), .dataa (seg7_num[6]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx25643z1)) ;
                           defparam ix1272_fadd.lut_mask = 16'h5aa0;
                           defparam ix1272_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1273_fadd (.combout (inc_d_7__dup_1295), .dataa (
                           seg7_num[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx17856z1)) ;
                           defparam ix1273_fadd.lut_mask = 16'h5a5a;
                           defparam ix1273_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2403_fadd (.cout (nx40197z2), .dataa (
                           read_fifo_status_cnt[0]), .datab (1'b1), .datac (1'b1
                           ), .datad (PWR)) ;
                           defparam ix2403_fadd.lut_mask = 16'h00aa;
    fiftyfivenm_lcell_comb ix1014_fadd (.combout (incdec_mux_1_dup_114_dup_1035)
                           , .cout (nx24623z1), .dataa (read_fifo_status_cnt[1])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx40197z2)) ;
                           defparam ix1014_fadd.lut_mask = 16'h96e8;
                           defparam ix1014_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1016_fadd (.combout (incdec_mux_2_dup_115_dup_1037)
                           , .cout (nx56487z1), .dataa (read_fifo_status_cnt[2])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx24623z1)) ;
                           defparam ix1016_fadd.lut_mask = 16'h96e8;
                           defparam ix1016_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1018_fadd (.combout (incdec_mux_3_dup_116_dup_1039)
                           , .cout (nx24582z1), .dataa (read_fifo_status_cnt[3])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx56487z1)) ;
                           defparam ix1018_fadd.lut_mask = 16'h96e8;
                           defparam ix1018_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1020_fadd (.combout (incdec_mux_4_dup_117_dup_1041)
                           , .cout (nx40156z1), .dataa (read_fifo_status_cnt[4])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx24582z1)) ;
                           defparam ix1020_fadd.lut_mask = 16'h96e8;
                           defparam ix1020_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1022_fadd (.combout (incdec_mux_5_dup_118_dup_1043)
                           , .cout (nx55730z1), .dataa (read_fifo_status_cnt[5])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx40156z1)) ;
                           defparam ix1022_fadd.lut_mask = 16'h96e8;
                           defparam ix1022_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1024_fadd (.combout (incdec_mux_6_dup_119_dup_1045)
                           , .cout (nx59768z1), .dataa (read_fifo_status_cnt[6])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx55730z1)) ;
                           defparam ix1024_fadd.lut_mask = 16'h96e8;
                           defparam ix1024_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1026_fadd (.combout (incdec_mux_7_dup_120_dup_1047)
                           , .cout (nx51981z1), .dataa (read_fifo_status_cnt[7])
                           , .datab (nx40197z1), .datac (1'b1), .datad (PWR), .cin (
                           nx59768z1)) ;
                           defparam ix1026_fadd.lut_mask = 16'h96e8;
                           defparam ix1026_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1027_fadd (.combout (incdec_mux_8_dup_121_dup_1049)
                           , .dataa (read_fifo_status_cnt[8]), .datab (nx40197z1
                           ), .datac (1'b1), .datad (PWR), .cin (nx51981z1)) ;
                           defparam ix1027_fadd.lut_mask = 16'h9696;
                           defparam ix1027_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2404_fadd (.cout (nx14325z1), .dataa (
                           write_fifo_status_cnt[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix2404_fadd.lut_mask = 16'h00aa;
    fiftyfivenm_lcell_comb ix912_fadd (.combout (incdec_mux_1_dup_114), .cout (
                           nx35637z1), .dataa (write_fifo_status_cnt[1]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx14325z1)) ;
                           defparam ix912_fadd.lut_mask = 16'h96e8;
                           defparam ix912_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix914_fadd (.combout (incdec_mux_2_dup_115), .cout (
                           nx20063z1), .dataa (write_fifo_status_cnt[2]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx35637z1)) ;
                           defparam ix914_fadd.lut_mask = 16'h96e8;
                           defparam ix914_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix916_fadd (.combout (incdec_mux_3_dup_116), .cout (
                           nx4489z1), .dataa (write_fifo_status_cnt[3]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx20063z1)) ;
                           defparam ix916_fadd.lut_mask = 16'h96e8;
                           defparam ix916_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix918_fadd (.combout (incdec_mux_4_dup_117), .cout (
                           nx29142z1), .dataa (write_fifo_status_cnt[4]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx4489z1)) ;
                           defparam ix918_fadd.lut_mask = 16'h96e8;
                           defparam ix918_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix920_fadd (.combout (incdec_mux_5_dup_118), .cout (
                           nx44716z1), .dataa (write_fifo_status_cnt[5]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx29142z1)) ;
                           defparam ix920_fadd.lut_mask = 16'h96e8;
                           defparam ix920_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix922_fadd (.combout (incdec_mux_6_dup_119), .cout (
                           nx60290z1), .dataa (write_fifo_status_cnt[6]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx44716z1)) ;
                           defparam ix922_fadd.lut_mask = 16'h96e8;
                           defparam ix922_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix924_fadd (.combout (incdec_mux_7_dup_120), .cout (
                           nx2541z1), .dataa (write_fifo_status_cnt[7]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx60290z1)) ;
                           defparam ix924_fadd.lut_mask = 16'h96e8;
                           defparam ix924_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix925_fadd (.combout (incdec_mux_8_dup_121), .dataa (
                           write_fifo_status_cnt[8]), .datab (nx7605z1), .datac (
                           1'b1), .datad (PWR), .cin (nx2541z1)) ;
                           defparam ix925_fadd.lut_mask = 16'h9696;
                           defparam ix925_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix21_fadd (.cout (nx24156z5)
                           , .dataa (u_kirsch_i1_val[0]), .datab (
                           u_kirsch_i2_val[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix21_fadd.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix23_fadd (.cout (nx39730z5)
                           , .dataa (u_kirsch_i1_val[1]), .datab (
                           u_kirsch_i2_val[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx24156z5)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix23_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix23_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix25_fadd (.cout (nx55304z5)
                           , .dataa (u_kirsch_i1_val[2]), .datab (
                           u_kirsch_i2_val[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx39730z5)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix25_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix25_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix27_fadd (.cout (nx60194z5)
                           , .dataa (u_kirsch_i1_val[3]), .datab (
                           u_kirsch_i2_val[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx55304z5)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix27_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix27_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix29_fadd (.cout (nx26563z5)
                           , .dataa (u_kirsch_i1_val[4]), .datab (
                           u_kirsch_i2_val[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx60194z5)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix29_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix29_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix31_fadd (.cout (nx10989z5)
                           , .dataa (u_kirsch_i1_val[5]), .datab (
                           u_kirsch_i2_val[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx26563z5)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix31_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix31_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix33_fadd (.cout (nx4585z1)
                           , .dataa (u_kirsch_i1_val[6]), .datab (
                           u_kirsch_i2_val[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx10989z5)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix33_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix33_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix35_fadd (.cout (nx15243z1)
                           , .dataa (u_kirsch_i1_val[7]), .datab (
                           u_kirsch_i2_val[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx4585z1)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix45_fadd (.combout (
                           u_kirsch_r3_15n1s1[0]), .cout (nx15489z1), .dataa (
                           u_kirsch_r2[0]), .datab (u_kirsch_r3[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r3_add12_15i1_ix45_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix49_fadd (.combout (
                           u_kirsch_r3_15n1s1[1]), .cout (nx31820z1), .dataa (
                           u_kirsch_r2[1]), .datab (u_kirsch_r3[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx15489z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix49_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix49_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix53_fadd (.combout (
                           u_kirsch_r3_15n1s1[2]), .cout (nx64864z1), .dataa (
                           u_kirsch_r2[2]), .datab (u_kirsch_r3[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx31820z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix53_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix53_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix57_fadd (.combout (
                           u_kirsch_r3_15n1s1[3]), .cout (nx48533z1), .dataa (
                           u_kirsch_r2[3]), .datab (u_kirsch_r3[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx64864z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix57_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix57_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix61_fadd (.combout (
                           u_kirsch_r3_15n1s1[4]), .cout (nx51391z1), .dataa (
                           u_kirsch_r2[4]), .datab (u_kirsch_r3[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx48533z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix61_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix61_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix65_fadd (.combout (
                           u_kirsch_r3_15n1s1[5]), .cout (nx45293z1), .dataa (
                           u_kirsch_r2[5]), .datab (u_kirsch_r3[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx51391z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix65_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix65_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix69_fadd (.combout (
                           u_kirsch_r3_15n1s1[6]), .cout (nx28962z1), .dataa (
                           u_kirsch_r2[6]), .datab (u_kirsch_r3[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx45293z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix69_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix69_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix73_fadd (.combout (
                           u_kirsch_r3_15n1s1[7]), .cout (nx5426z1), .dataa (
                           u_kirsch_r2[7]), .datab (u_kirsch_r3[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx28962z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix73_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix73_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix77_fadd (.combout (
                           u_kirsch_r3_15n1s1[8]), .cout (nx43779z1), .dataa (
                           u_kirsch_r2[8]), .datab (u_kirsch_r3[8]), .datac (
                           1'b1), .datad (PWR), .cin (nx5426z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix77_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r3_add12_15i1_ix77_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix81_fadd (.combout (nx16733z1
                           ), .cout (nx9391z1), .dataa (u_kirsch_r3[9]), .datab (
                           u_kirsch_v[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx43779z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix81_fadd.lut_mask = 16'h12a0;
                           defparam u_kirsch_r3_add12_15i1_ix81_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix85_fadd (.combout (nx51853z1
                           ), .cout (nx24965z1), .dataa (u_kirsch_r3[10]), .datab (
                           u_kirsch_v[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx9391z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix85_fadd.lut_mask = 16'h12a0;
                           defparam u_kirsch_r3_add12_15i1_ix85_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r3_add12_15i1_ix87_fadd (.combout (nx50856z1
                           ), .dataa (u_kirsch_v[1]), .datab (u_kirsch_r3[11]), 
                           .datac (1'b1), .datad (PWR), .cin (nx24965z1)) ;
                           defparam u_kirsch_r3_add12_15i1_ix87_fadd.lut_mask = 16'h1414;
                           defparam u_kirsch_r3_add12_15i1_ix87_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix25_fadd (.cout (nx6531z1)
                           , .dataa (u_kirsch_r4_val[0]), .datab (
                           u_kirsch_r5_val[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix25_fadd.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix27_fadd (.cout (nx56493z1)
                           , .dataa (u_kirsch_r4_val[1]), .datab (
                           u_kirsch_r5_val[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx6531z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix27_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix27_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix29_fadd (.cout (nx22862z1)
                           , .dataa (u_kirsch_r4_val[2]), .datab (
                           u_kirsch_r5_val[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx56493z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix29_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix29_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix31_fadd (.cout (nx58248z1)
                           , .dataa (u_kirsch_r4_val[3]), .datab (
                           u_kirsch_r5_val[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx22862z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix31_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix31_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix33_fadd (.cout (nx8286z1)
                           , .dataa (u_kirsch_r4_val[4]), .datab (
                           u_kirsch_r5_val[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx58248z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix33_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix33_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix35_fadd (.cout (nx23860z1)
                           , .dataa (u_kirsch_r4_val[5]), .datab (
                           u_kirsch_r5_val[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx8286z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix35_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix35_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix37_fadd (.cout (nx26102z1)
                           , .dataa (u_kirsch_r4_val[6]), .datab (
                           u_kirsch_r5_val[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx23860z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix37_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix37_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix39_fadd (.cout (nx58007z1)
                           , .dataa (u_kirsch_r4_val[7]), .datab (
                           u_kirsch_r5_val[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx26102z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix39_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix41_fadd (.cout (nx42433z1)
                           , .dataa (u_kirsch_r4_val[8]), .datab (
                           u_kirsch_r5_val[8]), .datac (1'b1), .datad (PWR), .cin (
                           nx58007z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix41_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix41_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc17_49_gt_69_ix43_fadd (.cout (nx39326z1)
                           , .dataa (u_kirsch_r4_val[9]), .datab (
                           u_kirsch_r5_val[9]), .datac (1'b1), .datad (PWR), .cin (
                           nx42433z1)) ;
                           defparam u_kirsch_rtlc17_49_gt_69_ix43_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc17_49_gt_69_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1899_fadd (.combout (nx3238z1), .dataa (
                           u_kirsch_v[2]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx39326z1)) ;
                           defparam ix1899_fadd.lut_mask = 16'hfafa;
                           defparam ix1899_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix35_fadd (.combout (
                           u_kirsch_r2_14n0r1[0]), .cout (nx18275z3), .dataa (
                           u_kirsch_i3[0]), .datab (u_kirsch_i4[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r2_add8_14i1_ix35_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix39_fadd (.combout (
                           u_kirsch_r2_14n0r1[1]), .cout (nx30930z3), .dataa (
                           u_kirsch_i3[1]), .datab (u_kirsch_i4[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx18275z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix39_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix43_fadd (.combout (
                           u_kirsch_r2_14n0r1[2]), .cout (nx3458z3), .dataa (
                           u_kirsch_i3[2]), .datab (u_kirsch_i4[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx30930z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix43_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix47_fadd (.combout (
                           u_kirsch_r2_14n0r1[3]), .cout (nx19789z3), .dataa (
                           u_kirsch_i3[3]), .datab (u_kirsch_i4[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx3458z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix47_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix47_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix51_fadd (.combout (
                           u_kirsch_r2_14n0r1[4]), .cout (nx11359z3), .dataa (
                           u_kirsch_i3[4]), .datab (u_kirsch_i4[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx19789z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix51_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix55_fadd (.combout (
                           u_kirsch_r2_14n0r1[5]), .cout (nx42507z3), .dataa (
                           u_kirsch_i3[5]), .datab (u_kirsch_i4[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx11359z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix55_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix59_fadd (.combout (
                           u_kirsch_r2_14n0r1[6]), .cout (nx39360z3), .dataa (
                           u_kirsch_i3[6]), .datab (u_kirsch_i4[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx42507z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix59_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix63_fadd (.combout (
                           u_kirsch_r2_14n0r1[7]), .cout (nx63652z1), .dataa (
                           u_kirsch_i3[7]), .datab (u_kirsch_i4[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx39360z3)) ;
                           defparam u_kirsch_r2_add8_14i1_ix63_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r2_add8_14i1_ix63_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix37_fadd (.combout (
                           u_kirsch_r4_16n0r1[0]), .cout (nx33205z1), .dataa (
                           u_kirsch_r1_val[0]), .datab (u_kirsch_r2[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r4_add9_16i1_ix37_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix41_fadd (.combout (
                           u_kirsch_r4_16n0r1[1]), .cout (nx2057z1), .dataa (
                           u_kirsch_r1_val[1]), .datab (u_kirsch_r2[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx33205z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix41_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix41_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix45_fadd (.combout (
                           u_kirsch_r4_16n0r1[2]), .cout (nx29091z1), .dataa (
                           u_kirsch_r1_val[2]), .datab (u_kirsch_r2[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx2057z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix45_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix45_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix49_fadd (.combout (
                           u_kirsch_r4_16n0r1[3]), .cout (nx52776z1), .dataa (
                           u_kirsch_r1_val[3]), .datab (u_kirsch_r2[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx29091z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix49_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix49_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix53_fadd (.combout (
                           u_kirsch_r4_16n0r1[4]), .cout (nx21628z1), .dataa (
                           u_kirsch_r1_val[4]), .datab (u_kirsch_r2[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx52776z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix53_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix53_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix57_fadd (.combout (
                           u_kirsch_r4_16n0r1[5]), .cout (nx27577z1), .dataa (
                           u_kirsch_r1_val[5]), .datab (u_kirsch_r2[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx21628z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix57_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix57_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix61_fadd (.combout (
                           u_kirsch_r4_16n0r1[6]), .cout (nx58725z1), .dataa (
                           u_kirsch_r1_val[6]), .datab (u_kirsch_r2[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx27577z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix61_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix61_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix65_fadd (.combout (
                           u_kirsch_r4_16n0r1[7]), .cout (nx41199z1), .dataa (
                           u_kirsch_r1_val[7]), .datab (u_kirsch_r2[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx58725z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix65_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r4_add9_16i1_ix65_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix69_fadd (.combout (
                           u_kirsch_r4_16n0r1[8]), .cout (nx7965z1), .dataa (
                           u_kirsch_r2[8]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx41199z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix69_fadd.lut_mask = 16'h5aa0;
                           defparam u_kirsch_r4_add9_16i1_ix69_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix34_fadd (.combout (
                           u_kirsch_r6_18n0r1[1]), .cout (nx45160z1), .dataa (
                           u_kirsch_r3[0]), .datab (u_kirsch_r3[1]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r6_add11_18i1_ix34_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix38_fadd (.combout (
                           u_kirsch_r6_18n0r1[2]), .cout (nx4045z1), .dataa (
                           u_kirsch_r3[1]), .datab (u_kirsch_r3[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx45160z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix38_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix38_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix42_fadd (.combout (
                           u_kirsch_r6_18n0r1[3]), .cout (nx35193z1), .dataa (
                           u_kirsch_r3[2]), .datab (u_kirsch_r3[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx4045z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix42_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix42_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix46_fadd (.combout (
                           u_kirsch_r6_18n0r1[4]), .cout (nx46674z1), .dataa (
                           u_kirsch_r3[3]), .datab (u_kirsch_r3[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx35193z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix46_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix46_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix50_fadd (.combout (
                           u_kirsch_r6_18n0r1[5]), .cout (nx50010z1), .dataa (
                           u_kirsch_r3[4]), .datab (u_kirsch_r3[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx46674z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix50_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix50_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix54_fadd (.combout (
                           u_kirsch_r6_18n0r1[6]), .cout (nx15622z1), .dataa (
                           u_kirsch_r3[5]), .datab (u_kirsch_r3[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx50010z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix54_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix54_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix58_fadd (.combout (
                           u_kirsch_r6_18n0r1[7]), .cout (nx709z1), .dataa (
                           u_kirsch_r3[6]), .datab (u_kirsch_r3[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx15622z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix58_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix58_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix62_fadd (.combout (
                           u_kirsch_r6_18n0r1[8]), .cout (nx30439z1), .dataa (
                           u_kirsch_r3[7]), .datab (u_kirsch_r3[8]), .datac (
                           1'b1), .datad (PWR), .cin (nx709z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix62_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix62_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix66_fadd (.combout (
                           u_kirsch_r6_18n0r1[9]), .cout (nx14108z1), .dataa (
                           u_kirsch_r3[8]), .datab (u_kirsch_r3[9]), .datac (
                           1'b1), .datad (PWR), .cin (nx30439z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix66_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix66_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix70_fadd (.combout (
                           u_kirsch_r6_18n0r1[10]), .cout (nx20280z1), .dataa (
                           u_kirsch_r3[9]), .datab (u_kirsch_r3[10]), .datac (
                           1'b1), .datad (PWR), .cin (nx14108z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix70_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix70_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix74_fadd (.combout (
                           u_kirsch_r6_18n0r1[11]), .cout (nx63132z1), .dataa (
                           u_kirsch_r3[10]), .datab (u_kirsch_r3[11]), .datac (
                           1'b1), .datad (PWR), .cin (nx20280z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix74_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r6_add11_18i1_ix74_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix22_fadd (.cout (nx14412z1), 
                           .dataa (u_kirsch_r6[1]), .datab (u_kirsch_r6[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix22_fadd.lut_mask = 16'h0011;
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix24_fadd (.cout (nx35550z1), 
                           .dataa (u_kirsch_r6[2]), .datab (1'b1), .datac (1'b1)
                           , .datad (PWR), .cin (nx14412z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix24_fadd.lut_mask = 16'h0050;
                           defparam u_kirsch_r7_sub13_19i1_ix24_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix26_fadd (.cout (nx19976z1), 
                           .dataa (u_kirsch_r5_val[0]), .datab (u_kirsch_r6[3])
                           , .datac (1'b1), .datad (PWR), .cin (nx35550z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix26_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r7_sub13_19i1_ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix28_fadd (.cout (nx51881z1), 
                           .dataa (u_kirsch_r5_val[1]), .datab (u_kirsch_r6[4])
                           , .datac (1'b1), .datad (PWR), .cin (nx19976z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix28_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r7_sub13_19i1_ix28_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix30_fadd (.cout (nx29229z1), 
                           .dataa (u_kirsch_r5_val[2]), .datab (u_kirsch_r6[5])
                           , .datac (1'b1), .datad (PWR), .cin (nx51881z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix30_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r7_sub13_19i1_ix30_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix32_fadd (.cout (nx60377z1), 
                           .dataa (u_kirsch_r5_val[3]), .datab (u_kirsch_r6[6])
                           , .datac (1'b1), .datad (PWR), .cin (nx29229z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix32_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r7_sub13_19i1_ix32_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix36_fadd (.combout (
                           u_kirsch_r7_19n0r1_7_), .cout (nx21490z1), .dataa (
                           u_kirsch_r5_val[4]), .datab (u_kirsch_r6[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx60377z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix36_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r7_sub13_19i1_ix36_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix40_fadd (.combout (
                           u_kirsch_r7_19n0r1_8_), .cout (nx55878z1), .dataa (
                           u_kirsch_r5_val[5]), .datab (u_kirsch_r6[8]), .datac (
                           1'b1), .datad (PWR), .cin (nx21490z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix40_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r7_sub13_19i1_ix40_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix44_fadd (.combout (
                           u_kirsch_r7_19n0r1_9_), .cout (nx40806z1), .dataa (
                           u_kirsch_r5_val[6]), .datab (u_kirsch_r6[9]), .datac (
                           1'b1), .datad (PWR), .cin (nx55878z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix44_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r7_sub13_19i1_ix44_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix48_fadd (.combout (
                           u_kirsch_r7_19n0r1_10_), .cout (nx41061z1), .dataa (
                           u_kirsch_r5_val[7]), .datab (u_kirsch_r6[10]), .datac (
                           1'b1), .datad (PWR), .cin (nx40806z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix48_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r7_sub13_19i1_ix48_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix52_fadd (.combout (
                           u_kirsch_r7_19n0r1_11_), .cout (nx9913z1), .dataa (
                           u_kirsch_r5_val[8]), .datab (u_kirsch_r6[11]), .datac (
                           1'b1), .datad (PWR), .cin (nx41061z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix52_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r7_sub13_19i1_ix52_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix56_fadd (.combout (
                           u_kirsch_r7_19n0r1_12_), .cout (nx48627z1), .dataa (
                           u_kirsch_r5_val[9]), .datab (u_kirsch_r6[12]), .datac (
                           1'b1), .datad (PWR), .cin (nx9913z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix56_fadd.lut_mask = 16'h694d;
                           defparam u_kirsch_r7_sub13_19i1_ix56_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf (.combout (
                           nx46527z6), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx15243z1)) ;
                           defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_rtlc13_39_gt_67_ix35_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r7_sub13_19i1_ix56_fadd_buf (.combout (
                           u_kirsch_r7_19n0r1_13_), .dataa (1'b1), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx48627z1)) ;
                           defparam u_kirsch_r7_sub13_19i1_ix56_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r7_sub13_19i1_ix56_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r6_add11_18i1_ix74_fadd_buf (.combout (
                           u_kirsch_r6_18n0r1[12]), .dataa (1'b1), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx63132z1)) ;
                           defparam u_kirsch_r6_add11_18i1_ix74_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r6_add11_18i1_ix74_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r4_add9_16i1_ix69_fadd_buf (.combout (
                           u_kirsch_r4_16n0r1[9]), .dataa (1'b1), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx7965z1)) ;
                           defparam u_kirsch_r4_add9_16i1_ix69_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r4_add9_16i1_ix69_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r2_add8_14i1_ix63_fadd_buf (.combout (
                           u_kirsch_r2_14n0r1[8]), .dataa (1'b1), .datab (1'b1)
                           , .datac (1'b1), .datad (PWR), .cin (nx63652z1)) ;
                           defparam u_kirsch_r2_add8_14i1_ix63_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r2_add8_14i1_ix63_fadd_buf.sum_lutc_input = "cin";
    dffeas u_uart_reg_Tx_Reg_7_ (.q (NOT_u_uart_Tx_Reg_7_), .d (NOT_rb_o_data_6_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_8_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    assign nx4364z1 = ~uart_reset ;
    dffeas u_uart_reg_Tx_Reg_6_ (.q (NOT_u_uart_Tx_Reg_6_), .d (NOT_rb_o_data_5_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_7_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_5_ (.q (NOT_u_uart_Tx_Reg_5_), .d (NOT_rb_o_data_4_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_6_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_4_ (.q (NOT_u_uart_Tx_Reg_4_), .d (NOT_rb_o_data_3_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_5_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_3_ (.q (NOT_u_uart_Tx_Reg_3_), .d (NOT_rb_o_data_2_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_4_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_2_ (.q (NOT_u_uart_Tx_Reg_2_), .d (NOT_rb_o_data_1_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_3_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_1_ (.q (nx17862z3), .d (NOT_rb_o_data_0_), .clk (
           clk), .ena (nx18859z1), .clrn (nx4364z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_2_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_kirsch_reg_r_d_7_ (.q (u_kirsch_r_d[7]), .d (nx22707z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[7]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_6_ (.q (u_kirsch_r_d[6]), .d (nx23704z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[6]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_5_ (.q (u_kirsch_r_d[5]), .d (nx24701z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[5]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_4_ (.q (u_kirsch_r_d[4]), .d (nx25698z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[4]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_3_ (.q (u_kirsch_r_d[3]), .d (nx26695z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[3]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_2_ (.q (u_kirsch_r_d[2]), .d (nx27692z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[2]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_1_ (.q (u_kirsch_r_d[1]), .d (nx28689z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[1]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_d_0_ (.q (u_kirsch_r_d[0]), .d (nx29686z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_2_[0]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_7_ (.q (u_kirsch_r_c[7]), .d (nx14288z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[7]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_6_ (.q (u_kirsch_r_c[6]), .d (nx15285z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[6]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_5_ (.q (u_kirsch_r_c[5]), .d (nx16282z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[5]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_4_ (.q (u_kirsch_r_c[4]), .d (nx17279z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[4]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_3_ (.q (u_kirsch_r_c[3]), .d (nx18276z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[3]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_2_ (.q (u_kirsch_r_c[2]), .d (nx19273z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[2]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_1_ (.q (u_kirsch_r_c[1]), .d (nx20270z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[1]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r_c_0_ (.q (u_kirsch_r_c[0]), .d (nx21267z1), .clk (clk)
           , .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_M_out_1_[0]), .sclr (1'b0), .sload (u_kirsch_wr_en[0])) ;
    dffeas u_kirsch_reg_r1_val_7_ (.q (u_kirsch_r1_val[7]), .d (
           u_kirsch_i2_val[7]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[7]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_6_ (.q (u_kirsch_r1_val[6]), .d (
           u_kirsch_i2_val[6]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[6]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_5_ (.q (u_kirsch_r1_val[5]), .d (
           u_kirsch_i2_val[5]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[5]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_4_ (.q (u_kirsch_r1_val[4]), .d (
           u_kirsch_i2_val[4]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[4]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_3_ (.q (u_kirsch_r1_val[3]), .d (
           u_kirsch_i2_val[3]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[3]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_2_ (.q (u_kirsch_r1_val[2]), .d (
           u_kirsch_i2_val[2]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[2]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_1_ (.q (u_kirsch_r1_val[1]), .d (
           u_kirsch_i2_val[1]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[1]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r1_val_0_ (.q (u_kirsch_r1_val[0]), .d (
           u_kirsch_i2_val[0]), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR)
           , .asdata (u_kirsch_i1_val[0]), .sclr (1'b0), .sload (nx46527z6)) ;
    dffeas u_kirsch_reg_r3_8_ (.q (u_kirsch_r3[8]), .d (u_kirsch_r3_15n1s1[8]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[8]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_7_ (.q (u_kirsch_r3[7]), .d (u_kirsch_r3_15n1s1[7]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[7]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_6_ (.q (u_kirsch_r3[6]), .d (u_kirsch_r3_15n1s1[6]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[6]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_5_ (.q (u_kirsch_r3[5]), .d (u_kirsch_r3_15n1s1[5]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[5]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_4_ (.q (u_kirsch_r3[4]), .d (u_kirsch_r3_15n1s1[4]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[4]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_3_ (.q (u_kirsch_r3[3]), .d (u_kirsch_r3_15n1s1[3]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[3]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_2_ (.q (u_kirsch_r3[2]), .d (u_kirsch_r3_15n1s1[2]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[2]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_1_ (.q (u_kirsch_r3[1]), .d (u_kirsch_r3_15n1s1[1]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[1]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_r3_0_ (.q (u_kirsch_r3[0]), .d (u_kirsch_r3_15n1s1[0]), 
           .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           u_kirsch_r2[0]), .sclr (1'b0), .sload (u_kirsch_v[1])) ;
    dffeas u_kirsch_reg_wr_en_2_ (.q (u_kirsch_wr_en[2]), .d (nx46854z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_wr_en_1_ (.q (u_kirsch_wr_en[1]), .d (nx47851z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_wr_en_0_ (.q (nx22500z1), .d (nx48848z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (NOT_GND), .sclr (k_o_data_7_)
           , .sload (GND)) ;
    dffeas u_uart_reg_TxFSM_1_ (.q (u_uart_TxFSM[1]), .d (nx8356z1), .clk (clk)
           , .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_TxFSM_0_ (.q (u_uart_TxFSM[0]), .d (nx7359z1), .clk (clk)
           , .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_mode_1_ (.q (seg7_pts[1]), .d (nx38153z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_o_mode_0_ (.q (nx25399z9), .d (nx37156z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (NOT_GND), .sclr (k_o_data_7_)
           , .sload (GND)) ;
    dffeas reg_wait_for_tx_valid (.q (wait_for_tx_valid), .d (nx64502z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_uart_reg_Tx_Reg_0_ (.q (nx62197z1), .d (nx17862z1), .clk (clk), .ena (
           PWR), .clrn (nx4364z1), .prn (PWR), .asdata (NOT_GND), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas u_uart_reg_RxErr (.q (k_o_data_6_), .d (nx40325z1), .clk (clk), .ena (
           PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_r3_11_ (.q (u_kirsch_r3[11]), .d (nx50856z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_r3_10_ (.q (u_kirsch_r3[10]), .d (nx51853z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_r3_9_ (.q (u_kirsch_r3[9]), .d (nx16733z1), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_o_dir_2_ (.q (k_o_data_2_), .d (nx25160z1), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_o_dir_1_ (.q (k_o_data_1_), .d (nx24163z1), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_o_dir_0_ (.q (k_o_data_0_), .d (nx23166z1), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_uart_reset (.q (uart_reset), .d (nx60415z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_r1_ty_1_ (.q (u_kirsch_r1_ty[1]), .d (nx46527z3), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4), .d (nx51544z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2), .d (nx28027z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0), .d (nx18625z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_q_10_ (.q (reset_count[10]), .d (inc_d_10_), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_9_ (.q (reset_count[9]), .d (inc_d_9_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_8_ (.q (reset_count[8]), .d (inc_d_8_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_7_ (.q (reset_count[7]), .d (inc_d_7_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_6_ (.q (reset_count[6]), .d (inc_d_6_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_5_ (.q (reset_count[5]), .d (inc_d_5_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_4_ (.q (reset_count[4]), .d (inc_d_4_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_3_ (.q (reset_count[3]), .d (inc_d_3_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_2_ (.q (reset_count[2]), .d (inc_d_2_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_1_ (.q (reset_count[1]), .d (inc_d_1_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_0_ (.q (reset_count[0]), .d (inc_d_0_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_7__dup_0 (.q (write_fifo_wr_pointer[7]), .d (inc_d_7__dup_872)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_1 (.q (write_fifo_wr_pointer[6]), .d (inc_d_6__dup_870)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_2 (.q (write_fifo_wr_pointer[5]), .d (inc_d_5__dup_868)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_3 (.q (write_fifo_wr_pointer[4]), .d (inc_d_4__dup_866)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_4 (.q (write_fifo_wr_pointer[3]), .d (inc_d_3__dup_864)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_5 (.q (write_fifo_wr_pointer[2]), .d (inc_d_2__dup_862)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_6 (.q (write_fifo_wr_pointer[1]), .d (inc_d_1__dup_860)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_7 (.q (write_fifo_wr_pointer[0]), .d (inc_d_0__dup_858)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_8 (.q (write_fifo_rd_pointer[7]), .d (inc_d_7__dup_908)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_9 (.q (write_fifo_rd_pointer[6]), .d (inc_d_6__dup_906)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_10 (.q (write_fifo_rd_pointer[5]), .d (inc_d_5__dup_904)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_11 (.q (write_fifo_rd_pointer[4]), .d (inc_d_4__dup_902)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_12 (.q (write_fifo_rd_pointer[3]), .d (inc_d_3__dup_900)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_13 (.q (write_fifo_rd_pointer[2]), .d (inc_d_2__dup_898)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_14 (.q (write_fifo_rd_pointer[1]), .d (inc_d_1__dup_896)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_15 (.q (write_fifo_rd_pointer[0]), .d (inc_d_0__dup_894)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_8__dup_16 (.q (write_fifo_status_cnt[8]), .d (
           incdec_mux_8_dup_121), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_17 (.q (write_fifo_status_cnt[7]), .d (
           incdec_mux_7_dup_120), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_18 (.q (write_fifo_status_cnt[6]), .d (
           incdec_mux_6_dup_119), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_19 (.q (write_fifo_status_cnt[5]), .d (
           incdec_mux_5_dup_118), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_20 (.q (write_fifo_status_cnt[4]), .d (
           incdec_mux_4_dup_117), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_21 (.q (write_fifo_status_cnt[3]), .d (
           incdec_mux_3_dup_116), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_22 (.q (write_fifo_status_cnt[2]), .d (
           incdec_mux_2_dup_115), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_23 (.q (write_fifo_status_cnt[1]), .d (
           incdec_mux_1_dup_114), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_24 (.q (write_fifo_status_cnt[0]), .d (
           incdec_mux_0_dup_113), .clk (clk), .ena (nx18416z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_25 (.q (read_fifo_wr_pointer[7]), .d (inc_d_7__dup_973)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_26 (.q (read_fifo_wr_pointer[6]), .d (inc_d_6__dup_971)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_27 (.q (read_fifo_wr_pointer[5]), .d (inc_d_5__dup_969)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_28 (.q (read_fifo_wr_pointer[4]), .d (inc_d_4__dup_967)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_29 (.q (read_fifo_wr_pointer[3]), .d (inc_d_3__dup_965)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_30 (.q (read_fifo_wr_pointer[2]), .d (inc_d_2__dup_963)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_31 (.q (read_fifo_wr_pointer[1]), .d (inc_d_1__dup_961)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_32 (.q (read_fifo_wr_pointer[0]), .d (inc_d_0__dup_959)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_33 (.q (read_fifo_rd_pointer[7]), .d (inc_d_7__dup_1009)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_34 (.q (read_fifo_rd_pointer[6]), .d (inc_d_6__dup_1007)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_35 (.q (read_fifo_rd_pointer[5]), .d (inc_d_5__dup_1005)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_36 (.q (read_fifo_rd_pointer[4]), .d (inc_d_4__dup_1003)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_37 (.q (read_fifo_rd_pointer[3]), .d (inc_d_3__dup_1001)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_38 (.q (read_fifo_rd_pointer[2]), .d (inc_d_2__dup_999)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_39 (.q (read_fifo_rd_pointer[1]), .d (inc_d_1__dup_997)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_40 (.q (read_fifo_rd_pointer[0]), .d (inc_d_0__dup_995)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_8__dup_41 (.q (read_fifo_status_cnt[8]), .d (
           incdec_mux_8_dup_121_dup_1049), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_42 (.q (read_fifo_status_cnt[7]), .d (
           incdec_mux_7_dup_120_dup_1047), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_43 (.q (read_fifo_status_cnt[6]), .d (
           incdec_mux_6_dup_119_dup_1045), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_44 (.q (read_fifo_status_cnt[5]), .d (
           incdec_mux_5_dup_118_dup_1043), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_45 (.q (read_fifo_status_cnt[4]), .d (
           incdec_mux_4_dup_117_dup_1041), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_46 (.q (read_fifo_status_cnt[3]), .d (
           incdec_mux_3_dup_116_dup_1039), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_47 (.q (read_fifo_status_cnt[2]), .d (
           incdec_mux_2_dup_115_dup_1037), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_48 (.q (read_fifo_status_cnt[1]), .d (
           incdec_mux_1_dup_114_dup_1035), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_49 (.q (read_fifo_status_cnt[0]), .d (
           incdec_mux_0_dup_113_dup_1033), .clk (clk), .ena (nx20415z1), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_10__dup_50 (.q (seg7_en[1]), .d (inc_d_10__dup_1080), .clk (clk
           ), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx29573z1), .sload (GND)) ;
    dffeas reg_q_9__dup_51 (.q (nx44217z1), .d (inc_d_9__dup_1079), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_8__dup_52 (.q (nx55707z1), .d (inc_d_8__dup_1078), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_7__dup_53 (.q (nx11527z1), .d (inc_d_7__dup_1077), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_6__dup_54 (.q (nx38435z1), .d (inc_d_6__dup_1076), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_5__dup_55 (.q (nx22861z1), .d (inc_d_5__dup_1075), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_4__dup_56 (.q (nx54766z1), .d (inc_d_4__dup_1074), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_3__dup_57 (.q (nx39192z1), .d (inc_d_3__dup_1073), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_2__dup_58 (.q (nx41918z1), .d (inc_d_2__dup_1072), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_1__dup_59 (.q (nx57492z1), .d (inc_d_1__dup_1071), .clk (clk), 
           .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1)
           , .sload (GND)) ;
    dffeas reg_q_0__dup_60 (.q (nx7530z1), .d (inc_d_0__dup_1070), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_10__dup_61 (.q (u_uart_RxDiv[10]), .d (inc_d_10__dup_1138), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_9__dup_62 (.q (u_uart_RxDiv[9]), .d (inc_d_9__dup_1136), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_8__dup_63 (.q (u_uart_RxDiv[8]), .d (inc_d_8__dup_1134), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_7__dup_64 (.q (u_uart_RxDiv[7]), .d (inc_d_7__dup_1132), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_6__dup_65 (.q (u_uart_RxDiv[6]), .d (inc_d_6__dup_1130), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_5__dup_66 (.q (u_uart_RxDiv[5]), .d (inc_d_5__dup_1128), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_4__dup_67 (.q (u_uart_RxDiv[4]), .d (inc_d_4__dup_1126), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_3__dup_68 (.q (u_uart_RxDiv[3]), .d (inc_d_3__dup_1124), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_2__dup_69 (.q (u_uart_RxDiv[2]), .d (inc_d_2__dup_1122), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_1__dup_70 (.q (u_uart_RxDiv[1]), .d (inc_d_1__dup_1120), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_0__dup_71 (.q (u_uart_RxDiv[0]), .d (inc_d_0__dup_1118), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx14933z1), .sload (GND)) ;
    dffeas reg_q_11_ (.q (u_uart_TxDiv[11]), .d (inc_d_11_), .clk (clk), .ena (
           PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (nx57349z1)
           , .sload (GND)) ;
    dffeas reg_q_10__dup_72 (.q (u_uart_TxDiv[10]), .d (inc_d_10__dup_1191), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_9__dup_73 (.q (u_uart_TxDiv[9]), .d (inc_d_9__dup_1189), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_8__dup_74 (.q (u_uart_TxDiv[8]), .d (inc_d_8__dup_1187), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_7__dup_75 (.q (u_uart_TxDiv[7]), .d (inc_d_7__dup_1185), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_6__dup_76 (.q (u_uart_TxDiv[6]), .d (inc_d_6__dup_1183), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_5__dup_77 (.q (u_uart_TxDiv[5]), .d (inc_d_5__dup_1181), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_4__dup_78 (.q (u_uart_TxDiv[4]), .d (inc_d_4__dup_1179), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_3__dup_79 (.q (u_uart_TxDiv[3]), .d (inc_d_3__dup_1177), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_2__dup_80 (.q (u_uart_TxDiv[2]), .d (inc_d_2__dup_1175), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_1__dup_81 (.q (u_uart_TxDiv[1]), .d (inc_d_1__dup_1173), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_0__dup_82 (.q (u_uart_TxDiv[0]), .d (inc_d_0__dup_1171), .clk (
           clk), .ena (PWR), .clrn (nx4364z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_7__dup_83 (.q (u_kirsch_o_col[7]), .d (inc_d_7__dup_1257), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_84 (.q (u_kirsch_o_col[6]), .d (inc_d_6__dup_1255), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_85 (.q (u_kirsch_o_col[5]), .d (inc_d_5__dup_1253), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_86 (.q (u_kirsch_o_col[4]), .d (inc_d_4__dup_1251), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_87 (.q (u_kirsch_o_col[3]), .d (inc_d_3__dup_1249), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_88 (.q (u_kirsch_o_col[2]), .d (inc_d_2__dup_1247), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_89 (.q (u_kirsch_o_col[1]), .d (inc_d_1__dup_1245), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_90 (.q (u_kirsch_o_col[0]), .d (inc_d_0__dup_1243), .clk (
           clk), .ena (nx38412z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_91 (.q (seg7_num[7]), .d (inc_d_7__dup_1295), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_92 (.q (seg7_num[6]), .d (inc_d_6__dup_1293), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_93 (.q (seg7_num[5]), .d (inc_d_5__dup_1291), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_94 (.q (seg7_num[4]), .d (inc_d_4__dup_1289), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_95 (.q (seg7_num[3]), .d (inc_d_3__dup_1287), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_96 (.q (seg7_num[2]), .d (inc_d_2__dup_1285), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_97 (.q (seg7_num[1]), .d (inc_d_1__dup_1283), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_98 (.q (seg7_num[0]), .d (inc_d_0__dup_1281), .clk (clk)
           , .ena (nx25399z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas reg_wait_for_tx_valid_delayed (.q (wait_for_tx_valid_delayed), .d (
           wait_for_tx_valid), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), 
           .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_tx_valid (.q (nx7359z4), .d (NOT_rb_rd_en_delayed), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (NOT_GND), .sclr (k_o_data_7_)
           , .sload (GND)) ;
    dffeas reg_rb_rd_en (.q (rb_rd_en), .d (nx15004z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_v_7_ (.q (u_kirsch_v[7]), .d (u_kirsch_v[6]), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_v_6_ (.q (u_kirsch_v[6]), .d (u_kirsch_v[5]), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_v_5_ (.q (u_kirsch_v[5]), .d (u_kirsch_v[4]), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_v_4_ (.q (u_kirsch_v[4]), .d (u_kirsch_v[3]), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_v_3_ (.q (u_kirsch_v[3]), .d (u_kirsch_v[2]), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_v_2_ (.q (u_kirsch_v[2]), .d (u_kirsch_v[1]), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_v_1_ (.q (u_kirsch_v[1]), .d (nx26352z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (
           GND)) ;
    fiftyfivenm_lcell_comb ix24841z7095 (.combout (NOT_rb_o_data_6_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[6]), .datac (
                           read_fifo_q[6]), .datad (rb_rd_en_delayed)) ;
                           defparam ix24841z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix23844z7095 (.combout (NOT_rb_o_data_5_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[5]), .datac (
                           read_fifo_q[5]), .datad (rb_rd_en_delayed)) ;
                           defparam ix23844z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix22847z7095 (.combout (NOT_rb_o_data_4_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[4]), .datac (
                           read_fifo_q[4]), .datad (rb_rd_en_delayed)) ;
                           defparam ix22847z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix21850z7095 (.combout (NOT_rb_o_data_3_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[3]), .datac (
                           read_fifo_q[3]), .datad (rb_rd_en_delayed)) ;
                           defparam ix21850z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix20853z7095 (.combout (NOT_rb_o_data_2_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[2]), .datac (
                           read_fifo_q[2]), .datad (rb_rd_en_delayed)) ;
                           defparam ix20853z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix19856z7095 (.combout (NOT_rb_o_data_1_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[1]), .datac (
                           read_fifo_q[1]), .datad (rb_rd_en_delayed)) ;
                           defparam ix19856z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix18859z7095 (.combout (NOT_rb_o_data_0_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[0]), .datac (
                           read_fifo_q[0]), .datad (rb_rd_en_delayed)) ;
                           defparam ix18859z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix59319z7096 (.combout (k_i_pixel[7]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[7]), .datad (write_fifo_q[7])) ;
                           defparam ix59319z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7098 (.combout (k_i_pixel[6]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[6]), .datad (write_fifo_q[6])) ;
                           defparam ix59319z7098.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7100 (.combout (k_i_pixel[5]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[5]), .datad (write_fifo_q[5])) ;
                           defparam ix59319z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7102 (.combout (k_i_pixel[4]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[4]), .datad (write_fifo_q[4])) ;
                           defparam ix59319z7102.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix22500z7095 (.combout (k_i_pixel[3]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[3]), .datad (write_fifo_q[3])) ;
                           defparam ix22500z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix22500z7096 (.combout (k_i_pixel[2]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[2]), .datad (write_fifo_q[2])) ;
                           defparam ix22500z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix22500z7097 (.combout (k_i_pixel[1]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[1]), .datad (write_fifo_q[1])) ;
                           defparam ix22500z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix22500z7098 (.combout (k_i_pixel[0]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[0]), .datad (write_fifo_q[0])) ;
                           defparam ix22500z7098.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7095 (.combout (rb_i_data[7]), .dataa (1'b1)
                           , .datab (k_i_pixel[7]), .datac (pb[0]), .datad (
                           reset_n)) ;
                           defparam ix59319z7095.lut_mask = 16'h0cfc;
    fiftyfivenm_lcell_comb ix59319z7097 (.combout (rb_i_data[6]), .dataa (1'b1)
                           , .datab (k_o_data_6_), .datac (k_i_pixel[6]), .datad (
                           pb[0])) ;
                           defparam ix59319z7097.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix59319z7099 (.combout (rb_i_data[5]), .dataa (1'b1)
                           , .datab (seg7_pts[1]), .datac (k_i_pixel[5]), .datad (
                           pb[0])) ;
                           defparam ix59319z7099.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix59319z7101 (.combout (rb_i_data[4]), .dataa (1'b1)
                           , .datab (nx25399z9), .datac (k_i_pixel[4]), .datad (
                           pb[0])) ;
                           defparam ix59319z7101.lut_mask = 16'h33f0;
    fiftyfivenm_lcell_comb ix59319z7103 (.combout (rb_i_data[3]), .dataa (1'b1)
                           , .datab (k_o_data_3_), .datac (k_i_pixel[3]), .datad (
                           pb[0])) ;
                           defparam ix59319z7103.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix59319z7104 (.combout (rb_i_data[2]), .dataa (1'b1)
                           , .datab (k_o_data_2_), .datac (k_i_pixel[2]), .datad (
                           pb[0])) ;
                           defparam ix59319z7104.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix59319z7105 (.combout (rb_i_data[1]), .dataa (1'b1)
                           , .datab (k_o_data_1_), .datac (k_i_pixel[1]), .datad (
                           pb[0])) ;
                           defparam ix59319z7105.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix59319z7106 (.combout (rb_i_data[0]), .dataa (1'b1)
                           , .datab (k_o_data_0_), .datac (k_i_pixel[0]), .datad (
                           pb[0])) ;
                           defparam ix59319z7106.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix11963z7095 (.combout (rb_rd_en_true), .dataa (1'b1)
                           , .datab (nx11963z1), .datac (
                           wait_for_tx_valid_delayed), .datad (rb_rd_en)) ;
                           defparam ix11963z7095.lut_mask = 16'h0300;
    fiftyfivenm_lcell_comb ix37156z7101 (.combout (nx37156z7), .dataa (1'b1), .datab (
                           1'b1), .datac (write_fifo_rd_en_delayed), .datad (
                           pb[0])) ;
                           defparam ix37156z7101.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix15004z7095 (.combout (nx15004z1), .dataa (nx15004z2
                           ), .datab (rb_rd_en), .datac (tx_busy), .datad (
                           tx_busy_delayed)) ;
                           defparam ix15004z7095.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix49438z7095 (.combout (write_fifo_pointer[7]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[7]), .datac (
                           write_fifo_wr_pointer[7]), .datad (rx_valid)) ;
                           defparam ix49438z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7096 (.combout (write_fifo_pointer[6]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[6]), .datac (
                           write_fifo_wr_pointer[6]), .datad (rx_valid)) ;
                           defparam ix49438z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7097 (.combout (write_fifo_pointer[5]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[5]), .datac (
                           write_fifo_wr_pointer[5]), .datad (rx_valid)) ;
                           defparam ix49438z7097.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7098 (.combout (write_fifo_pointer[4]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[4]), .datac (
                           write_fifo_wr_pointer[4]), .datad (rx_valid)) ;
                           defparam ix49438z7098.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7099 (.combout (write_fifo_pointer[3]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[3]), .datac (
                           write_fifo_wr_pointer[3]), .datad (rx_valid)) ;
                           defparam ix49438z7099.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7100 (.combout (write_fifo_pointer[2]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[2]), .datac (
                           write_fifo_wr_pointer[2]), .datad (rx_valid)) ;
                           defparam ix49438z7100.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7101 (.combout (write_fifo_pointer[1]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[1]), .datac (
                           write_fifo_wr_pointer[1]), .datad (rx_valid)) ;
                           defparam ix49438z7101.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7102 (.combout (write_fifo_pointer[0]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[0]), .datac (
                           write_fifo_wr_pointer[0]), .datad (rx_valid)) ;
                           defparam ix49438z7102.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix7605z7095 (.combout (nx7605z1), .dataa (nx7605z2), 
                           .datab (nx18416z4), .datac (write_fifo_status_cnt[8])
                           , .datad (rx_valid)) ;
                           defparam ix7605z7095.lut_mask = 16'h00fb;
    fiftyfivenm_lcell_comb ix59319z7107 (.combout (read_fifo_pointer[7]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[7]), .datad (
                           read_fifo_wr_pointer[7])) ;
                           defparam ix59319z7107.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7108 (.combout (read_fifo_pointer[6]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[6]), .datad (
                           read_fifo_wr_pointer[6])) ;
                           defparam ix59319z7108.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7109 (.combout (read_fifo_pointer[5]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[5]), .datad (
                           read_fifo_wr_pointer[5])) ;
                           defparam ix59319z7109.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7110 (.combout (read_fifo_pointer[4]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[4]), .datad (
                           read_fifo_wr_pointer[4])) ;
                           defparam ix59319z7110.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7111 (.combout (read_fifo_pointer[3]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[3]), .datad (
                           read_fifo_wr_pointer[3])) ;
                           defparam ix59319z7111.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7112 (.combout (read_fifo_pointer[2]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[2]), .datad (
                           read_fifo_wr_pointer[2])) ;
                           defparam ix59319z7112.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7113 (.combout (read_fifo_pointer[1]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[1]), .datad (
                           read_fifo_wr_pointer[1])) ;
                           defparam ix59319z7113.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7114 (.combout (read_fifo_pointer[0]), .dataa (
                           1'b1), .datab (nx11963z1), .datac (
                           read_fifo_rd_pointer[0]), .datad (
                           read_fifo_wr_pointer[0])) ;
                           defparam ix59319z7114.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix40197z7095 (.combout (nx40197z1), .dataa (nx15004z2
                           ), .datab (nx11963z1), .datac (
                           wait_for_tx_valid_delayed), .datad (rb_rd_en)) ;
                           defparam ix40197z7095.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix7365z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_4_), .dataa (1'b1), .datab (
                           nx7365z1), .datac (nx7365z2), .datad (seg7_en[1])) ;
                           defparam ix7365z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix6368z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_3_), .dataa (1'b1), .datab (
                           nx6368z1), .datac (nx6368z2), .datad (seg7_en[1])) ;
                           defparam ix6368z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix5371z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_2_), .dataa (1'b1), .datab (
                           nx5371z1), .datac (nx5371z2), .datad (seg7_en[1])) ;
                           defparam ix5371z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix3377z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_0_), .dataa (1'b1), .datab (
                           nx3377z1), .datac (nx3377z2), .datad (seg7_en[1])) ;
                           defparam ix3377z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix10356z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_7_), .dataa (1'b1), .datab (
                           nx25399z9), .datac (seg7_pts[1]), .datad (seg7_en[1])
                           ) ;
                           defparam ix10356z7095.lut_mask = 16'hf033;
    fiftyfivenm_lcell_comb ix29573z7095 (.combout (nx29573z1), .dataa (1'b1), .datab (
                           1'b1), .datac (u_seg7_u_dual_seg7_prev_reset), .datad (
                           reset_n)) ;
                           defparam ix29573z7095.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix10356z7096 (.combout (u_seg7_u_dual_seg7_load_reg)
                           , .dataa (1'b1), .datab (1'b1), .datac (
                           u_seg7_u_dual_seg7_prev_char0_en), .datad (seg7_en[1]
                           )) ;
                           defparam ix10356z7096.lut_mask = 16'hf00f;
    fiftyfivenm_lcell_comb ix14933z7095 (.combout (nx14933z1), .dataa (nx59343z2
                           ), .datab (nx14933z2), .datac (nx14933z3), .datad (
                           nx64683z2)) ;
                           defparam ix14933z7095.lut_mask = 16'hf8ff;
    fiftyfivenm_lcell_comb ix25838z7095 (.combout (NOT_u_uart_Tx_Reg_14n6ss1_8_)
                           , .dataa (u_uart_TxFSM[1]), .datab (
                           read_fifo_q_saved[7]), .datac (read_fifo_q[7]), .datad (
                           rb_rd_en_delayed)) ;
                           defparam ix25838z7095.lut_mask = 16'h0511;
    fiftyfivenm_lcell_comb ix18859z7096 (.combout (nx18859z1), .dataa (
                           u_uart_TxFSM[0]), .datab (u_uart_TxFSM[1]), .datac (
                           u_uart_TopTx), .datad (nx7359z4)) ;
                           defparam ix18859z7096.lut_mask = 16'h4051;
    fiftyfivenm_lcell_comb ix44871z7096 (.combout (nx44871z1), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_RxFSM[3]), .datad (u_uart_TopRx
                           )) ;
                           defparam ix44871z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix13938z7095 (.combout (nx13938z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[4]), .datac (nx12790z4), .datad (
                           u_uart_TopRx)) ;
                           defparam ix13938z7095.lut_mask = 16'h0c00;
    fiftyfivenm_lcell_comb ix12790z7096 (.combout (nx12790z1), .dataa (nx12790z2
                           ), .datab (nx12790z3), .datac (nx64683z2), .datad (
                           nx12790z4)) ;
                           defparam ix12790z7096.lut_mask = 16'hcecc;
    fiftyfivenm_lcell_comb ix17862z7097 (.combout (nx17862z4), .dataa (
                           u_uart_TxFSM[0]), .datab (u_uart_TxFSM[1]), .datac (
                           u_uart_TopTx), .datad (nx7359z4)) ;
                           defparam ix17862z7097.lut_mask = 16'h9f8e;
    fiftyfivenm_lcell_comb ix10796z7095 (.combout (nx10796z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx9799z2), .datad (u_uart_RxFSM[2])) ;
                           defparam ix10796z7095.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix11793z7095 (.combout (nx11793z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[1]), .datac (u_uart_RxFSM[3]), .datad (
                           nx12790z4)) ;
                           defparam ix11793z7095.lut_mask = 16'hfcf0;
    fiftyfivenm_lcell_comb ix13787z7095 (.combout (nx13787z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[4]), .datac (u_uart_RxFSM[5]), .datad (
                           nx12790z4)) ;
                           defparam ix13787z7095.lut_mask = 16'h0f03;
    fiftyfivenm_lcell_comb ix9799z7095 (.combout (nx9799z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx9799z2), .datad (u_uart_RxFSM[2])) ;
                           defparam ix9799z7095.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix59343z7095 (.combout (nx59343z1), .dataa (nx59343z2
                           ), .datab (nx14933z2), .datac (nx14933z3), .datad (
                           nx64683z2)) ;
                           defparam ix59343z7095.lut_mask = 16'hf800;
    fiftyfivenm_lcell_comb ix8802z7095 (.combout (nx8802z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[1]), .datac (u_uart_RxFSM[4]), .datad (
                           nx12790z4)) ;
                           defparam ix8802z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix13251z7095 (.combout (nx13251z1), .dataa (1'b1), .datab (
                           u_uart_TxFSM[0]), .datac (u_uart_TxFSM[1]), .datad (
                           nx7359z4)) ;
                           defparam ix13251z7095.lut_mask = 16'hfcff;
    fiftyfivenm_lcell_comb ix57349z7095 (.combout (nx57349z1), .dataa (nx57349z2
                           ), .datab (nx57349z3), .datac (nx57349z4), .datad (
                           u_uart_TxDiv[6])) ;
                           defparam ix57349z7095.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix9799z7096 (.combout (nx9799z2), .dataa (
                           u_uart_RxBitCnt[0]), .datab (u_uart_RxBitCnt[1]), .datac (
                           u_uart_RxBitCnt[2]), .datad (u_uart_RxBitCnt[3])) ;
                           defparam ix9799z7096.lut_mask = 16'h0100;
    fiftyfivenm_lcell_comb ix59667z7096 (.combout (u_kirsch_M_a[7]), .dataa (
                           1'b1), .datab (nx14288z1), .datac (
                           u_kirsch_M_out_1_[7]), .datad (nx22500z1)) ;
                           defparam ix59667z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix58670z7096 (.combout (u_kirsch_M_a[6]), .dataa (
                           1'b1), .datab (nx15285z1), .datac (
                           u_kirsch_M_out_1_[6]), .datad (nx22500z1)) ;
                           defparam ix58670z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix57673z7096 (.combout (u_kirsch_M_a[5]), .dataa (
                           1'b1), .datab (nx16282z1), .datac (
                           u_kirsch_M_out_1_[5]), .datad (nx22500z1)) ;
                           defparam ix57673z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix56676z7096 (.combout (u_kirsch_M_a[4]), .dataa (
                           1'b1), .datab (nx17279z1), .datac (
                           u_kirsch_M_out_1_[4]), .datad (nx22500z1)) ;
                           defparam ix56676z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix55679z7096 (.combout (u_kirsch_M_a[3]), .dataa (
                           1'b1), .datab (nx18276z1), .datac (
                           u_kirsch_M_out_1_[3]), .datad (nx22500z1)) ;
                           defparam ix55679z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix54682z7096 (.combout (u_kirsch_M_a[2]), .dataa (
                           1'b1), .datab (nx19273z1), .datac (
                           u_kirsch_M_out_1_[2]), .datad (nx22500z1)) ;
                           defparam ix54682z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix53685z7096 (.combout (u_kirsch_M_a[1]), .dataa (
                           1'b1), .datab (nx20270z1), .datac (
                           u_kirsch_M_out_1_[1]), .datad (nx22500z1)) ;
                           defparam ix53685z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix52688z7096 (.combout (u_kirsch_M_a[0]), .dataa (
                           1'b1), .datab (nx21267z1), .datac (
                           u_kirsch_M_out_1_[0]), .datad (nx22500z1)) ;
                           defparam ix52688z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix734z7096 (.combout (u_kirsch_M_b[7]), .dataa (1'b1)
                           , .datab (nx22707z1), .datac (u_kirsch_M_out_2_[7]), 
                           .datad (nx22500z1)) ;
                           defparam ix734z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix65273z7096 (.combout (u_kirsch_M_b[6]), .dataa (
                           1'b1), .datab (nx23704z1), .datac (
                           u_kirsch_M_out_2_[6]), .datad (nx22500z1)) ;
                           defparam ix65273z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix64276z7096 (.combout (u_kirsch_M_b[5]), .dataa (
                           1'b1), .datab (nx24701z1), .datac (
                           u_kirsch_M_out_2_[5]), .datad (nx22500z1)) ;
                           defparam ix64276z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix63279z7096 (.combout (u_kirsch_M_b[4]), .dataa (
                           1'b1), .datab (nx25698z1), .datac (
                           u_kirsch_M_out_2_[4]), .datad (nx22500z1)) ;
                           defparam ix63279z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix62282z7096 (.combout (u_kirsch_M_b[3]), .dataa (
                           1'b1), .datab (nx26695z1), .datac (
                           u_kirsch_M_out_2_[3]), .datad (nx22500z1)) ;
                           defparam ix62282z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix61285z7096 (.combout (u_kirsch_M_b[2]), .dataa (
                           1'b1), .datab (nx27692z1), .datac (
                           u_kirsch_M_out_2_[2]), .datad (nx22500z1)) ;
                           defparam ix61285z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix60288z7096 (.combout (u_kirsch_M_b[1]), .dataa (
                           1'b1), .datab (nx28689z1), .datac (
                           u_kirsch_M_out_2_[1]), .datad (nx22500z1)) ;
                           defparam ix60288z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix59291z7096 (.combout (u_kirsch_M_b[0]), .dataa (
                           1'b1), .datab (nx29686z1), .datac (
                           u_kirsch_M_out_2_[0]), .datad (nx22500z1)) ;
                           defparam ix59291z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix26352z7098 (.combout (nx26352z4), .dataa (nx26352z5
                           ), .datab (nx26352z6), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix26352z7098.lut_mask = 16'he000;
    fiftyfivenm_lcell_comb ix2550z7095 (.combout (u_kirsch_r_a_11n3ss1[7]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[7]), 
                           .datad (u_kirsch_M_a[7])) ;
                           defparam ix2550z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix1553z7095 (.combout (u_kirsch_r_a_11n3ss1[6]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[6]), 
                           .datad (u_kirsch_M_a[6])) ;
                           defparam ix1553z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix556z7095 (.combout (u_kirsch_r_a_11n3ss1[5]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[5]), 
                           .datad (u_kirsch_M_a[5])) ;
                           defparam ix556z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix65095z7095 (.combout (u_kirsch_r_a_11n3ss1[4]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[4]), 
                           .datad (u_kirsch_M_a[4])) ;
                           defparam ix65095z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix64098z7095 (.combout (u_kirsch_r_a_11n3ss1[3]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[3]), 
                           .datad (u_kirsch_M_a[3])) ;
                           defparam ix64098z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix63101z7095 (.combout (u_kirsch_r_a_11n3ss1[2]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[2]), 
                           .datad (u_kirsch_M_a[2])) ;
                           defparam ix63101z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix62104z7095 (.combout (u_kirsch_r_a_11n3ss1[1]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[1]), 
                           .datad (u_kirsch_M_a[1])) ;
                           defparam ix62104z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix61107z7095 (.combout (u_kirsch_r_a_11n3ss1[0]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_b[0]), 
                           .datad (u_kirsch_M_a[0])) ;
                           defparam ix61107z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix56383z7095 (.combout (u_kirsch_r_h_11n3ss1[7]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[7]), 
                           .datad (u_kirsch_M_b[7])) ;
                           defparam ix56383z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix57380z7095 (.combout (u_kirsch_r_h_11n3ss1[6]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[6]), 
                           .datad (u_kirsch_M_b[6])) ;
                           defparam ix57380z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix58377z7095 (.combout (u_kirsch_r_h_11n3ss1[5]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[5]), 
                           .datad (u_kirsch_M_b[5])) ;
                           defparam ix58377z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59374z7095 (.combout (u_kirsch_r_h_11n3ss1[4]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[4]), 
                           .datad (u_kirsch_M_b[4])) ;
                           defparam ix59374z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix60371z7095 (.combout (u_kirsch_r_h_11n3ss1[3]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[3]), 
                           .datad (u_kirsch_M_b[3])) ;
                           defparam ix60371z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix61368z7095 (.combout (u_kirsch_r_h_11n3ss1[2]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[2]), 
                           .datad (u_kirsch_M_b[2])) ;
                           defparam ix61368z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix62365z7095 (.combout (u_kirsch_r_h_11n3ss1[1]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[1]), 
                           .datad (u_kirsch_M_b[1])) ;
                           defparam ix62365z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix63362z7095 (.combout (u_kirsch_r_h_11n3ss1[0]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_i[0]), 
                           .datad (u_kirsch_M_b[0])) ;
                           defparam ix63362z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix47964z7095 (.combout (u_kirsch_r_g_11n3ss1[7]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[7]), 
                           .datad (k_i_pixel[7])) ;
                           defparam ix47964z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix48961z7095 (.combout (u_kirsch_r_g_11n3ss1[6]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[6]), 
                           .datad (k_i_pixel[6])) ;
                           defparam ix48961z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix49958z7095 (.combout (u_kirsch_r_g_11n3ss1[5]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[5]), 
                           .datad (k_i_pixel[5])) ;
                           defparam ix49958z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix50955z7095 (.combout (u_kirsch_r_g_11n3ss1[4]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[4]), 
                           .datad (k_i_pixel[4])) ;
                           defparam ix50955z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix51952z7095 (.combout (u_kirsch_r_g_11n3ss1[3]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[3]), 
                           .datad (k_i_pixel[3])) ;
                           defparam ix51952z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix52949z7095 (.combout (u_kirsch_r_g_11n3ss1[2]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[2]), 
                           .datad (k_i_pixel[2])) ;
                           defparam ix52949z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix53946z7095 (.combout (u_kirsch_r_g_11n3ss1[1]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[1]), 
                           .datad (k_i_pixel[1])) ;
                           defparam ix53946z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix54943z7095 (.combout (u_kirsch_r_g_11n3ss1[0]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_f[0]), 
                           .datad (k_i_pixel[0])) ;
                           defparam ix54943z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59667z7095 (.combout (u_kirsch_r_b_11n3ss1[7]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[7]), 
                           .datad (u_kirsch_M_a[7])) ;
                           defparam ix59667z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix58670z7095 (.combout (u_kirsch_r_b_11n3ss1[6]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[6]), 
                           .datad (u_kirsch_M_a[6])) ;
                           defparam ix58670z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix57673z7095 (.combout (u_kirsch_r_b_11n3ss1[5]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[5]), 
                           .datad (u_kirsch_M_a[5])) ;
                           defparam ix57673z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix56676z7095 (.combout (u_kirsch_r_b_11n3ss1[4]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[4]), 
                           .datad (u_kirsch_M_a[4])) ;
                           defparam ix56676z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix55679z7095 (.combout (u_kirsch_r_b_11n3ss1[3]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[3]), 
                           .datad (u_kirsch_M_a[3])) ;
                           defparam ix55679z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix54682z7095 (.combout (u_kirsch_r_b_11n3ss1[2]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[2]), 
                           .datad (u_kirsch_M_a[2])) ;
                           defparam ix54682z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix53685z7095 (.combout (u_kirsch_r_b_11n3ss1[1]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[1]), 
                           .datad (u_kirsch_M_a[1])) ;
                           defparam ix53685z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix52688z7095 (.combout (u_kirsch_r_b_11n3ss1[0]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_c[0]), 
                           .datad (u_kirsch_M_a[0])) ;
                           defparam ix52688z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix734z7095 (.combout (u_kirsch_r_i_11n3ss1[7]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[7]), 
                           .datad (u_kirsch_M_b[7])) ;
                           defparam ix734z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix65273z7095 (.combout (u_kirsch_r_i_11n3ss1[6]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[6]), 
                           .datad (u_kirsch_M_b[6])) ;
                           defparam ix65273z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix64276z7095 (.combout (u_kirsch_r_i_11n3ss1[5]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[5]), 
                           .datad (u_kirsch_M_b[5])) ;
                           defparam ix64276z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix63279z7095 (.combout (u_kirsch_r_i_11n3ss1[4]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[4]), 
                           .datad (u_kirsch_M_b[4])) ;
                           defparam ix63279z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix62282z7095 (.combout (u_kirsch_r_i_11n3ss1[3]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[3]), 
                           .datad (u_kirsch_M_b[3])) ;
                           defparam ix62282z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix61285z7095 (.combout (u_kirsch_r_i_11n3ss1[2]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[2]), 
                           .datad (u_kirsch_M_b[2])) ;
                           defparam ix61285z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix60288z7095 (.combout (u_kirsch_r_i_11n3ss1[1]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[1]), 
                           .datad (u_kirsch_M_b[1])) ;
                           defparam ix60288z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59291z7095 (.combout (u_kirsch_r_i_11n3ss1[0]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_d[0]), 
                           .datad (u_kirsch_M_b[0])) ;
                           defparam ix59291z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix25991z7095 (.combout (u_kirsch_r_f_11n3ss1[7]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[7]), 
                           .datad (k_i_pixel[7])) ;
                           defparam ix25991z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix24994z7095 (.combout (u_kirsch_r_f_11n3ss1[6]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[6]), 
                           .datad (k_i_pixel[6])) ;
                           defparam ix24994z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix23997z7095 (.combout (u_kirsch_r_f_11n3ss1[5]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[5]), 
                           .datad (k_i_pixel[5])) ;
                           defparam ix23997z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix23000z7095 (.combout (u_kirsch_r_f_11n3ss1[4]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[4]), 
                           .datad (k_i_pixel[4])) ;
                           defparam ix23000z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix22003z7095 (.combout (u_kirsch_r_f_11n3ss1[3]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[3]), 
                           .datad (k_i_pixel[3])) ;
                           defparam ix22003z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix21006z7095 (.combout (u_kirsch_r_f_11n3ss1[2]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[2]), 
                           .datad (k_i_pixel[2])) ;
                           defparam ix21006z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix20009z7095 (.combout (u_kirsch_r_f_11n3ss1[1]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[1]), 
                           .datad (k_i_pixel[1])) ;
                           defparam ix20009z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix19012z7095 (.combout (u_kirsch_r_f_11n3ss1[0]), .dataa (
                           1'b1), .datab (nx26352z4), .datac (u_kirsch_r_e[0]), 
                           .datad (k_i_pixel[0])) ;
                           defparam ix19012z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix2550z7096 (.combout (nx2550z1), .dataa (nx26352z2)
                           , .datab (nx26352z4), .datac (u_kirsch_v[3]), .datad (
                           u_kirsch_o_col[0])) ;
                           defparam ix2550z7096.lut_mask = 16'h30b8;
    fiftyfivenm_lcell_comb ix25991z7096 (.combout (nx25991z1), .dataa (nx26352z2
                           ), .datab (nx26352z4), .datac (u_kirsch_v[3]), .datad (
                           u_kirsch_o_col[0])) ;
                           defparam ix25991z7096.lut_mask = 16'hb830;
    fiftyfivenm_lcell_comb ix26352z7095 (.combout (nx26352z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx26352z2), .datad (nx26352z4)) ;
                           defparam ix26352z7095.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix25399z7101 (.combout (nx25399z7), .dataa (nx25399z8
                           ), .datab (nx25399z6), .datac (seg7_num[0]), .datad (
                           seg7_num[1])) ;
                           defparam ix25399z7101.lut_mask = 16'hbfff;
    fiftyfivenm_lcell_comb ix25399z7096 (.combout (nx25399z2), .dataa (nx25399z3
                           ), .datab (nx25399z4), .datac (nx25399z5), .datad (
                           nx25399z6)) ;
                           defparam ix25399z7096.lut_mask = 16'h40c0;
    fiftyfivenm_lcell_comb ix22605z7095 (.combout (nx22605z1), .dataa (nx22605z2
                           ), .datab (nx22605z3), .datac (u_kirsch_r7_val_10_), 
                           .datad (u_kirsch_r7_val_13_)) ;
                           defparam ix22605z7095.lut_mask = 16'hccfe;
    fiftyfivenm_lcell_comb ix32900z7095 (.combout (nx32900z1), .dataa (nx46527z6
                           ), .datab (u_kirsch_v[2]), .datac (u_kirsch_v[1]), .datad (
                           nx37156z7)) ;
                           defparam ix32900z7095.lut_mask = 16'h550b;
    fiftyfivenm_lcell_comb ix26352z7096 (.combout (nx26352z2), .dataa (nx26352z3
                           ), .datab (u_kirsch_o_col[1]), .datac (
                           u_kirsch_o_col[2]), .datad (u_kirsch_o_col[3])) ;
                           defparam ix26352z7096.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix37156z7099 (.combout (nx37156z5), .dataa (nx37156z6
                           ), .datab (nx25399z5), .datac (u_kirsch_o_col[0]), .datad (
                           u_kirsch_o_col[1])) ;
                           defparam ix37156z7099.lut_mask = 16'h7fff;
    fiftyfivenm_lcell_comb ix37156z7097 (.combout (nx37156z3), .dataa (nx25399z6
                           ), .datab (nx37156z4), .datac (seg7_num[4]), .datad (
                           seg7_num[5])) ;
                           defparam ix37156z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix46527z7099 (.combout (u_kirsch_i1_val[7]), .dataa (
                           1'b1), .datab (nx46527z4), .datac (nx46527z5), .datad (
                           nx46527z3)) ;
                           defparam ix46527z7099.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix10989z7095 (.combout (u_kirsch_i1_val[6]), .dataa (
                           1'b1), .datab (nx10989z1), .datac (nx10989z2), .datad (
                           nx46527z3)) ;
                           defparam ix10989z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix26563z7095 (.combout (u_kirsch_i1_val[5]), .dataa (
                           1'b1), .datab (nx26563z1), .datac (nx26563z2), .datad (
                           nx46527z3)) ;
                           defparam ix26563z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix60194z7095 (.combout (u_kirsch_i1_val[4]), .dataa (
                           1'b1), .datab (nx60194z1), .datac (nx60194z2), .datad (
                           nx46527z3)) ;
                           defparam ix60194z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix55304z7095 (.combout (u_kirsch_i1_val[3]), .dataa (
                           1'b1), .datab (nx55304z1), .datac (nx55304z2), .datad (
                           nx46527z3)) ;
                           defparam ix55304z7095.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix39730z7095 (.combout (u_kirsch_i1_val[2]), .dataa (
                           1'b1), .datab (nx39730z1), .datac (nx39730z2), .datad (
                           nx46527z3)) ;
                           defparam ix39730z7095.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix24156z7095 (.combout (u_kirsch_i1_val[1]), .dataa (
                           1'b1), .datab (nx24156z1), .datac (nx24156z2), .datad (
                           nx46527z3)) ;
                           defparam ix24156z7095.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix56954z7095 (.combout (u_kirsch_i1_val[0]), .dataa (
                           1'b1), .datab (nx56954z1), .datac (nx56954z2), .datad (
                           nx46527z3)) ;
                           defparam ix56954z7095.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix46527z7095 (.combout (u_kirsch_i2_val[7]), .dataa (
                           1'b1), .datab (nx46527z1), .datac (nx46527z2), .datad (
                           nx46527z3)) ;
                           defparam ix46527z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix10989z7098 (.combout (u_kirsch_i2_val[6]), .dataa (
                           1'b1), .datab (nx10989z3), .datac (nx10989z4), .datad (
                           nx46527z3)) ;
                           defparam ix10989z7098.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix26563z7098 (.combout (u_kirsch_i2_val[5]), .dataa (
                           1'b1), .datab (nx26563z3), .datac (nx26563z4), .datad (
                           nx46527z3)) ;
                           defparam ix26563z7098.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix60194z7098 (.combout (u_kirsch_i2_val[4]), .dataa (
                           1'b1), .datab (nx60194z3), .datac (nx60194z4), .datad (
                           nx46527z3)) ;
                           defparam ix60194z7098.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix55304z7098 (.combout (u_kirsch_i2_val[3]), .dataa (
                           1'b1), .datab (nx55304z3), .datac (nx55304z4), .datad (
                           nx46527z3)) ;
                           defparam ix55304z7098.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix39730z7098 (.combout (u_kirsch_i2_val[2]), .dataa (
                           1'b1), .datab (nx39730z3), .datac (nx39730z4), .datad (
                           nx46527z3)) ;
                           defparam ix39730z7098.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix24156z7098 (.combout (u_kirsch_i2_val[1]), .dataa (
                           1'b1), .datab (nx24156z3), .datac (nx24156z4), .datad (
                           nx46527z3)) ;
                           defparam ix24156z7098.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix56954z7098 (.combout (u_kirsch_i2_val[0]), .dataa (
                           1'b1), .datab (nx56954z3), .datac (nx56954z4), .datad (
                           nx46527z3)) ;
                           defparam ix56954z7098.lut_mask = 16'hc0cc;
    fiftyfivenm_lcell_comb ix39360z7097 (.combout (b_0_), .dataa (u_kirsch_v[2])
                           , .datab (u_kirsch_v[1]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix39360z7097.lut_mask = 16'hf222;
    fiftyfivenm_lcell_comb ix39360z7098 (.combout (b_1_), .dataa (1'b1), .datab (
                           u_kirsch_v[1]), .datac (write_fifo_rd_en_delayed), .datad (
                           pb[0])) ;
                           defparam ix39360z7098.lut_mask = 16'hfccc;
    fiftyfivenm_lcell_comb ix21267z7095 (.combout (nx21267z1), .dataa (
                           u_kirsch_M_out_0_[0]), .datab (u_kirsch_M_out_2_[0])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix21267z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix20270z7095 (.combout (nx20270z1), .dataa (
                           u_kirsch_M_out_0_[1]), .datab (u_kirsch_M_out_2_[1])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix20270z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix19273z7095 (.combout (nx19273z1), .dataa (
                           u_kirsch_M_out_0_[2]), .datab (u_kirsch_M_out_2_[2])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix19273z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix18276z7095 (.combout (nx18276z1), .dataa (
                           u_kirsch_M_out_0_[3]), .datab (u_kirsch_M_out_2_[3])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix18276z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix17279z7095 (.combout (nx17279z1), .dataa (
                           u_kirsch_M_out_0_[4]), .datab (u_kirsch_M_out_2_[4])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix17279z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix16282z7095 (.combout (nx16282z1), .dataa (
                           u_kirsch_M_out_0_[5]), .datab (u_kirsch_M_out_2_[5])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix16282z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix15285z7095 (.combout (nx15285z1), .dataa (
                           u_kirsch_M_out_0_[6]), .datab (u_kirsch_M_out_2_[6])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix15285z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix14288z7095 (.combout (nx14288z1), .dataa (
                           u_kirsch_M_out_0_[7]), .datab (u_kirsch_M_out_2_[7])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix14288z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix29686z7095 (.combout (nx29686z1), .dataa (
                           u_kirsch_M_out_0_[0]), .datab (u_kirsch_M_out_1_[0])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix29686z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix28689z7095 (.combout (nx28689z1), .dataa (
                           u_kirsch_M_out_0_[1]), .datab (u_kirsch_M_out_1_[1])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix28689z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix27692z7095 (.combout (nx27692z1), .dataa (
                           u_kirsch_M_out_0_[2]), .datab (u_kirsch_M_out_1_[2])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix27692z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix26695z7095 (.combout (nx26695z1), .dataa (
                           u_kirsch_M_out_0_[3]), .datab (u_kirsch_M_out_1_[3])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix26695z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix25698z7095 (.combout (nx25698z1), .dataa (
                           u_kirsch_M_out_0_[4]), .datab (u_kirsch_M_out_1_[4])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix25698z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix24701z7095 (.combout (nx24701z1), .dataa (
                           u_kirsch_M_out_0_[5]), .datab (u_kirsch_M_out_1_[5])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix24701z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix23704z7095 (.combout (nx23704z1), .dataa (
                           u_kirsch_M_out_0_[6]), .datab (u_kirsch_M_out_1_[6])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix23704z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix22707z7095 (.combout (nx22707z1), .dataa (
                           u_kirsch_M_out_0_[7]), .datab (u_kirsch_M_out_1_[7])
                           , .datac (u_kirsch_wr_en[1]), .datad (nx22500z1)) ;
                           defparam ix22707z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix18625z7095 (.combout (nx18625z1), .dataa (1'b1), .datab (
                           nx18625z2), .datac (nx18625z3), .datad (seg7_en[1])
                           ) ;
                           defparam ix18625z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix28027z7095 (.combout (nx28027z1), .dataa (1'b1), .datab (
                           nx28027z2), .datac (nx28027z3), .datad (seg7_en[1])
                           ) ;
                           defparam ix28027z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7095 (.combout (nx51544z1), .dataa (1'b1), .datab (
                           nx51544z2), .datac (nx51544z3), .datad (seg7_en[1])
                           ) ;
                           defparam ix51544z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix60415z7095 (.combout (nx60415z1), .dataa (nx60415z2
                           ), .datab (nx60415z3), .datac (nx60415z4), .datad (
                           nx60415z5)) ;
                           defparam ix60415z7095.lut_mask = 16'hff80;
    fiftyfivenm_lcell_comb ix23166z7095 (.combout (nx23166z1), .dataa (nx24163z2
                           ), .datab (nx22605z3), .datac (u_kirsch_r7_val_13_), 
                           .datad (u_kirsch_r7_ty[0])) ;
                           defparam ix23166z7095.lut_mask = 16'hce00;
    fiftyfivenm_lcell_comb ix24163z7095 (.combout (nx24163z1), .dataa (nx24163z2
                           ), .datab (nx22605z3), .datac (u_kirsch_r7_val_13_), 
                           .datad (u_kirsch_r7_ty[1])) ;
                           defparam ix24163z7095.lut_mask = 16'hce00;
    fiftyfivenm_lcell_comb ix25160z7095 (.combout (nx25160z1), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_r7_ty[2]), .datad (nx22605z1)
                           ) ;
                           defparam ix25160z7095.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix40325z7095 (.combout (nx40325z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[5]), .datac (rx_valid), .datad (
                           k_o_data_6_)) ;
                           defparam ix40325z7095.lut_mask = 16'hcfcc;
    fiftyfivenm_lcell_comb ix17862z7095 (.combout (nx17862z1), .dataa (1'b1), .datab (
                           nx17862z2), .datac (nx17862z4), .datad (nx62197z1)) ;
                           defparam ix17862z7095.lut_mask = 16'hf303;
    fiftyfivenm_lcell_comb ix64502z7095 (.combout (nx64502z1), .dataa (nx64502z2
                           ), .datab (nx11963z1), .datac (
                           wait_for_tx_valid_delayed), .datad (rb_rd_en)) ;
                           defparam ix64502z7095.lut_mask = 16'habaa;
    fiftyfivenm_lcell_comb ix37156z7095 (.combout (nx37156z1), .dataa (nx37156z2
                           ), .datab (nx37156z3), .datac (nx37156z5), .datad (
                           nx37156z7)) ;
                           defparam ix37156z7095.lut_mask = 16'h04aa;
    fiftyfivenm_lcell_comb ix38153z7095 (.combout (nx38153z1), .dataa (
                           write_fifo_rd_en_delayed), .datab (nx25399z9), .datac (
                           seg7_pts[1]), .datad (pb[0])) ;
                           defparam ix38153z7095.lut_mask = 16'hfbf3;
    fiftyfivenm_lcell_comb ix7359z7095 (.combout (nx7359z1), .dataa (nx7359z2), 
                           .datab (nx7359z3), .datac (u_uart_TxFSM[0]), .datad (
                           u_uart_TxFSM[1])) ;
                           defparam ix7359z7095.lut_mask = 16'hc1c3;
    fiftyfivenm_lcell_comb ix48848z7095 (.combout (nx48848z1), .dataa (nx48848z2
                           ), .datab (nx37156z3), .datac (u_kirsch_wr_en[2]), .datad (
                           nx22500z1)) ;
                           defparam ix48848z7095.lut_mask = 16'hdf02;
    fiftyfivenm_lcell_comb ix47851z7095 (.combout (nx47851z1), .dataa (nx48848z2
                           ), .datab (nx37156z3), .datac (u_kirsch_wr_en[1]), .datad (
                           nx22500z1)) ;
                           defparam ix47851z7095.lut_mask = 16'hd0f2;
    fiftyfivenm_lcell_comb ix46854z7095 (.combout (nx46854z1), .dataa (nx48848z2
                           ), .datab (nx37156z3), .datac (u_kirsch_wr_en[2]), .datad (
                           u_kirsch_wr_en[1])) ;
                           defparam ix46854z7095.lut_mask = 16'hf2d0;
    fiftyfivenm_lcell_comb ix58151z7095 (.combout (nx58151z1), .dataa (1'b1), .datab (
                           1'b1), .datac (rx_valid), .datad (reset_n)) ;
                           defparam ix58151z7095.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix58143z7095 (.combout (nx58143z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx7605z1), .datad (reset_n)) ;
                           defparam ix58143z7095.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix18416z7096 (.combout (nx18416z1), .dataa (nx18416z2
                           ), .datab (nx7605z1), .datac (rx_valid), .datad (
                           reset_n)) ;
                           defparam ix18416z7096.lut_mask = 16'hecff;
    fiftyfivenm_lcell_comb ix23864z7095 (.combout (nx23864z1), .dataa (
                           write_fifo_rd_en_delayed), .datab (k_o_valid), .datac (
                           pb[0]), .datad (reset_n)) ;
                           defparam ix23864z7095.lut_mask = 16'hcaff;
    fiftyfivenm_lcell_comb ix24859z7095 (.combout (nx24859z1), .dataa (nx11963z1
                           ), .datab (wait_for_tx_valid_delayed), .datac (
                           rb_rd_en), .datad (reset_n)) ;
                           defparam ix24859z7095.lut_mask = 16'h10ff;
    fiftyfivenm_lcell_comb ix20415z7096 (.combout (nx20415z1), .dataa (nx20415z2
                           ), .datab (reset_n), .datac (nx15004z2), .datad (
                           rb_rd_en_true)) ;
                           defparam ix20415z7096.lut_mask = 16'hfbbb;
    fiftyfivenm_lcell_comb ix38412z7095 (.combout (nx38412z1), .dataa (1'b1), .datab (
                           write_fifo_rd_en_delayed), .datac (pb[0]), .datad (
                           reset_n)) ;
                           defparam ix38412z7095.lut_mask = 16'hc0ff;
    fiftyfivenm_lcell_comb ix25399z7095 (.combout (nx25399z1), .dataa (nx25399z2
                           ), .datab (nx25399z7), .datac (nx37156z7), .datad (
                           reset_n)) ;
                           defparam ix25399z7095.lut_mask = 16'hb0ff;
    fiftyfivenm_lcell_comb ix59437z7096 (.combout (nx59437z2), .dataa (1'b1), .datab (
                           u_uart_TxFSM[0]), .datac (u_uart_TxFSM[1]), .datad (
                           u_uart_TopTx)) ;
                           defparam ix59437z7096.lut_mask = 16'h3c00;
    fiftyfivenm_lcell_comb ix59437z7095 (.combout (nx59437z1), .dataa (1'b1), .datab (
                           u_uart_TxFSM[1]), .datac (u_uart_TxBitCnt[0]), .datad (
                           u_uart_TopTx)) ;
                           defparam ix59437z7095.lut_mask = 16'h3f0f;
    fiftyfivenm_lcell_comb ix60434z7095 (.combout (nx60434z1), .dataa (
                           u_uart_TxFSM[1]), .datab (u_uart_TxBitCnt[0]), .datac (
                           u_uart_TxBitCnt[1]), .datad (u_uart_TopTx)) ;
                           defparam ix60434z7095.lut_mask = 16'h82c3;
    fiftyfivenm_lcell_comb ix61431z7095 (.combout (nx61431z1), .dataa (nx61431z2
                           ), .datab (u_uart_TxBitCnt[0]), .datac (
                           u_uart_TxBitCnt[1]), .datad (u_uart_TxBitCnt[2])) ;
                           defparam ix61431z7095.lut_mask = 16'h5401;
    fiftyfivenm_lcell_comb ix62428z7095 (.combout (nx62428z1), .dataa (nx61431z2
                           ), .datab (nx62428z2), .datac (u_uart_TxBitCnt[2]), .datad (
                           u_uart_TxBitCnt[3])) ;
                           defparam ix62428z7095.lut_mask = 16'hfeab;
    fiftyfivenm_lcell_comb ix62428z7096 (.combout (nx62428z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_TxBitCnt[0]), .datad (
                           u_uart_TxBitCnt[1])) ;
                           defparam ix62428z7096.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix64683z7096 (.combout (nx64683z3), .dataa (1'b1), .datab (
                           nx64683z2), .datac (u_uart_RxFSM[3]), .datad (
                           u_uart_TopRx)) ;
                           defparam ix64683z7096.lut_mask = 16'hf303;
    fiftyfivenm_lcell_comb ix64683z7095 (.combout (nx64683z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx64683z2), .datad (u_uart_RxBitCnt[0]
                           )) ;
                           defparam ix64683z7095.lut_mask = 16'h00f0;
    fiftyfivenm_lcell_comb ix144z7095 (.combout (nx144z1), .dataa (1'b1), .datab (
                           nx64683z2), .datac (u_uart_RxBitCnt[0]), .datad (
                           u_uart_RxBitCnt[1])) ;
                           defparam ix144z7095.lut_mask = 16'h0cc0;
    fiftyfivenm_lcell_comb ix1141z7095 (.combout (nx1141z1), .dataa (nx64683z2)
                           , .datab (u_uart_RxBitCnt[0]), .datac (
                           u_uart_RxBitCnt[1]), .datad (u_uart_RxBitCnt[2])) ;
                           defparam ix1141z7095.lut_mask = 16'h2a80;
    fiftyfivenm_lcell_comb ix2138z7095 (.combout (nx2138z1), .dataa (nx2138z2), 
                           .datab (nx64683z2), .datac (u_uart_RxBitCnt[2]), .datad (
                           u_uart_RxBitCnt[3])) ;
                           defparam ix2138z7095.lut_mask = 16'h4c80;
    fiftyfivenm_lcell_comb ix2138z7096 (.combout (nx2138z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_RxBitCnt[0]), .datad (
                           u_uart_RxBitCnt[1])) ;
                           defparam ix2138z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix37156z7098 (.combout (nx37156z4), .dataa (1'b1), .datab (
                           1'b1), .datac (seg7_num[0]), .datad (seg7_num[1])) ;
                           defparam ix37156z7098.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix11963z7096 (.combout (nx11963z1), .dataa (1'b1), .datab (
                           write_fifo_rd_en_delayed), .datac (k_o_valid), .datad (
                           pb[0])) ;
                           defparam ix11963z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix46527z7098 (.combout (nx46527z3), .dataa (
                           u_kirsch_v[2]), .datab (u_kirsch_v[1]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix46527z7098.lut_mask = 16'h0ddd;
    fiftyfivenm_lcell_comb ix26352z7097 (.combout (nx26352z3), .dataa (
                           u_kirsch_o_col[4]), .datab (u_kirsch_o_col[5]), .datac (
                           u_kirsch_o_col[6]), .datad (u_kirsch_o_col[7])) ;
                           defparam ix26352z7097.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix25399z7100 (.combout (nx25399z6), .dataa (
                           seg7_num[2]), .datab (seg7_num[3]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix25399z7100.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix25399z7099 (.combout (nx25399z5), .dataa (
                           u_kirsch_o_col[4]), .datab (u_kirsch_o_col[5]), .datac (
                           u_kirsch_o_col[6]), .datad (u_kirsch_o_col[7])) ;
                           defparam ix25399z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix25399z7098 (.combout (nx25399z4), .dataa (
                           u_kirsch_o_col[0]), .datab (u_kirsch_o_col[1]), .datac (
                           u_kirsch_o_col[2]), .datad (u_kirsch_o_col[3])) ;
                           defparam ix25399z7098.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix7359z7097 (.combout (nx7359z3), .dataa (
                           u_uart_TxFSM[0]), .datab (u_uart_TxFSM[1]), .datac (
                           u_uart_TopTx), .datad (nx7359z4)) ;
                           defparam ix7359z7097.lut_mask = 16'h1f0e;
    fiftyfivenm_lcell_comb ix7359z7096 (.combout (nx7359z2), .dataa (
                           u_uart_TxBitCnt[0]), .datab (u_uart_TxBitCnt[1]), .datac (
                           u_uart_TxBitCnt[2]), .datad (u_uart_TxBitCnt[3])) ;
                           defparam ix7359z7096.lut_mask = 16'hfffd;
    fiftyfivenm_lcell_comb ix22605z7097 (.combout (nx22605z3), .dataa (
                           u_kirsch_r7_val_7_), .datab (u_kirsch_r7_val_8_), .datac (
                           u_kirsch_r7_val_9_), .datad (u_kirsch_r7_val_13_)) ;
                           defparam ix22605z7097.lut_mask = 16'h00f8;
    fiftyfivenm_lcell_comb ix60415z7099 (.combout (nx60415z5), .dataa (1'b1), .datab (
                           1'b1), .datac (uart_reset), .datad (reset_n)) ;
                           defparam ix60415z7099.lut_mask = 16'h00f0;
    fiftyfivenm_lcell_comb ix60415z7098 (.combout (nx60415z4), .dataa (
                           reset_count[8]), .datab (reset_count[9]), .datac (
                           reset_count[10]), .datad (reset_n)) ;
                           defparam ix60415z7098.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix60415z7097 (.combout (nx60415z3), .dataa (
                           reset_count[4]), .datab (reset_count[5]), .datac (
                           reset_count[6]), .datad (reset_count[7])) ;
                           defparam ix60415z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix60415z7096 (.combout (nx60415z2), .dataa (
                           reset_count[0]), .datab (reset_count[1]), .datac (
                           reset_count[2]), .datad (reset_count[3])) ;
                           defparam ix60415z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix51544z7097 (.combout (nx51544z3), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7097.lut_mask = 16'hef7c;
    fiftyfivenm_lcell_comb ix51544z7096 (.combout (nx51544z2), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7096.lut_mask = 16'hef7c;
    fiftyfivenm_lcell_comb ix28027z7097 (.combout (nx28027z3), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix28027z7097.lut_mask = 16'hdf71;
    fiftyfivenm_lcell_comb ix28027z7096 (.combout (nx28027z2), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix28027z7096.lut_mask = 16'hdf71;
    fiftyfivenm_lcell_comb ix18625z7097 (.combout (nx18625z3), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix18625z7097.lut_mask = 16'h279f;
    fiftyfivenm_lcell_comb ix18625z7096 (.combout (nx18625z2), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix18625z7096.lut_mask = 16'h279f;
    fiftyfivenm_lcell_comb ix18416z7099 (.combout (nx18416z4), .dataa (
                           write_fifo_status_cnt[3]), .datab (
                           write_fifo_status_cnt[4]), .datac (
                           write_fifo_status_cnt[5]), .datad (
                           write_fifo_status_cnt[6])) ;
                           defparam ix18416z7099.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix18416z7097 (.combout (nx18416z2), .dataa (nx18416z3
                           ), .datab (nx18416z4), .datac (
                           write_fifo_status_cnt[1]), .datad (
                           write_fifo_status_cnt[2])) ;
                           defparam ix18416z7097.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix15004z7098 (.combout (nx15004z4), .dataa (
                           read_fifo_status_cnt[3]), .datab (
                           read_fifo_status_cnt[4]), .datac (
                           read_fifo_status_cnt[5]), .datad (
                           read_fifo_status_cnt[6])) ;
                           defparam ix15004z7098.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix14933z7097 (.combout (nx14933z3), .dataa (1'b1), .datab (
                           nx14933z4), .datac (nx14933z5), .datad (nx14933z6)) ;
                           defparam ix14933z7097.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix14933z7100 (.combout (nx14933z6), .dataa (
                           u_uart_RxDiv[8]), .datab (u_uart_RxDiv[9]), .datac (
                           u_uart_RxDiv[10]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix14933z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix59343z7098 (.combout (nx59343z4), .dataa (
                           u_uart_RxDiv[4]), .datab (u_uart_RxDiv[5]), .datac (
                           u_uart_RxDiv[6]), .datad (u_uart_RxDiv[7])) ;
                           defparam ix59343z7098.lut_mask = 16'h2000;
    fiftyfivenm_lcell_comb ix14933z7099 (.combout (nx14933z5), .dataa (
                           u_uart_RxDiv[4]), .datab (u_uart_RxDiv[5]), .datac (
                           u_uart_RxDiv[6]), .datad (u_uart_RxDiv[7])) ;
                           defparam ix14933z7099.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix14933z7096 (.combout (nx14933z2), .dataa (
                           u_uart_RxDiv[0]), .datab (u_uart_RxDiv[1]), .datac (
                           u_uart_RxDiv[2]), .datad (u_uart_RxDiv[3])) ;
                           defparam ix14933z7096.lut_mask = 16'h0100;
    fiftyfivenm_lcell_comb ix14933z7098 (.combout (nx14933z4), .dataa (
                           u_uart_RxDiv[0]), .datab (u_uart_RxDiv[1]), .datac (
                           u_uart_RxDiv[2]), .datad (u_uart_RxDiv[3])) ;
                           defparam ix14933z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix7365z7097 (.combout (nx7365z2), .dataa (seg7_num[4]
                           ), .datab (seg7_num[5]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix7365z7097.lut_mask = 16'hfd45;
    fiftyfivenm_lcell_comb ix7365z7096 (.combout (nx7365z1), .dataa (seg7_num[0]
                           ), .datab (seg7_num[1]), .datac (seg7_num[2]), .datad (
                           seg7_num[3])) ;
                           defparam ix7365z7096.lut_mask = 16'hfd45;
    fiftyfivenm_lcell_comb ix6368z7097 (.combout (nx6368z2), .dataa (seg7_num[4]
                           ), .datab (seg7_num[5]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix6368z7097.lut_mask = 16'h7b6d;
    fiftyfivenm_lcell_comb ix6368z7096 (.combout (nx6368z1), .dataa (seg7_num[0]
                           ), .datab (seg7_num[1]), .datac (seg7_num[2]), .datad (
                           seg7_num[3])) ;
                           defparam ix6368z7096.lut_mask = 16'h7b6d;
    fiftyfivenm_lcell_comb ix5371z7097 (.combout (nx5371z2), .dataa (seg7_num[4]
                           ), .datab (seg7_num[5]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix5371z7097.lut_mask = 16'h2ffb;
    fiftyfivenm_lcell_comb ix5371z7096 (.combout (nx5371z1), .dataa (seg7_num[0]
                           ), .datab (seg7_num[1]), .datac (seg7_num[2]), .datad (
                           seg7_num[3])) ;
                           defparam ix5371z7096.lut_mask = 16'h2ffb;
    fiftyfivenm_lcell_comb ix3377z7097 (.combout (nx3377z2), .dataa (seg7_num[4]
                           ), .datab (seg7_num[5]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix3377z7097.lut_mask = 16'hd7ed;
    fiftyfivenm_lcell_comb ix3377z7096 (.combout (nx3377z1), .dataa (seg7_num[0]
                           ), .datab (seg7_num[1]), .datac (seg7_num[2]), .datad (
                           seg7_num[3])) ;
                           defparam ix3377z7096.lut_mask = 16'hd7ed;
    fiftyfivenm_lcell_comb ix12790z7098 (.combout (nx12790z3), .dataa (nx64683z2
                           ), .datab (u_uart_RxFSM[5]), .datac (u_uart_TopRx), .datad (
                           uart_rx)) ;
                           defparam ix12790z7098.lut_mask = 16'ha820;
    fiftyfivenm_lcell_comb ix15004z7096 (.combout (nx15004z2), .dataa (nx15004z3
                           ), .datab (nx15004z4), .datac (
                           read_fifo_status_cnt[7]), .datad (
                           read_fifo_status_cnt[8])) ;
                           defparam ix15004z7096.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix26352z7100 (.combout (nx26352z6), .dataa (1'b1), .datab (
                           seg7_num[3]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix26352z7100.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix26352z7099 (.combout (nx26352z5), .dataa (
                           seg7_num[1]), .datab (seg7_num[2]), .datac (
                           seg7_num[4]), .datad (seg7_num[5])) ;
                           defparam ix26352z7099.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix46527z7097 (.combout (nx46527z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[7]), .datad (
                           u_kirsch_r_a[7])) ;
                           defparam ix46527z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix46527z7096 (.combout (nx46527z1), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_g[7]), .datad (
                           u_kirsch_r_c[7])) ;
                           defparam ix46527z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix46527z7101 (.combout (nx46527z5), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_f[7]), .datad (
                           u_kirsch_r_b[7])) ;
                           defparam ix46527z7101.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix46527z7100 (.combout (nx46527z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[7]), .datad (
                           u_kirsch_r_d[7])) ;
                           defparam ix46527z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix10989z7100 (.combout (nx10989z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[6]), .datad (
                           u_kirsch_r_a[6])) ;
                           defparam ix10989z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix10989z7099 (.combout (nx10989z3), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_g[6]), .datad (
                           u_kirsch_r_c[6])) ;
                           defparam ix10989z7099.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix10989z7097 (.combout (nx10989z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_f[6]), .datad (
                           u_kirsch_r_b[6])) ;
                           defparam ix10989z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix10989z7096 (.combout (nx10989z1), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[6]), .datad (
                           u_kirsch_r_d[6])) ;
                           defparam ix10989z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix26563z7100 (.combout (nx26563z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[5]), .datad (
                           u_kirsch_r_a[5])) ;
                           defparam ix26563z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix26563z7099 (.combout (nx26563z3), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_g[5]), .datad (
                           u_kirsch_r_c[5])) ;
                           defparam ix26563z7099.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix26563z7097 (.combout (nx26563z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_f[5]), .datad (
                           u_kirsch_r_b[5])) ;
                           defparam ix26563z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix26563z7096 (.combout (nx26563z1), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[5]), .datad (
                           u_kirsch_r_d[5])) ;
                           defparam ix26563z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix60194z7100 (.combout (nx60194z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[4]), .datad (
                           u_kirsch_r_a[4])) ;
                           defparam ix60194z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix60194z7099 (.combout (nx60194z3), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_g[4]), .datad (
                           u_kirsch_r_c[4])) ;
                           defparam ix60194z7099.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix60194z7097 (.combout (nx60194z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_f[4]), .datad (
                           u_kirsch_r_b[4])) ;
                           defparam ix60194z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix60194z7096 (.combout (nx60194z1), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[4]), .datad (
                           u_kirsch_r_d[4])) ;
                           defparam ix60194z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix55304z7100 (.combout (nx55304z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[3]), .datad (
                           u_kirsch_r_a[3])) ;
                           defparam ix55304z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix55304z7097 (.combout (nx55304z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[3]), .datad (
                           u_kirsch_r_d[3])) ;
                           defparam ix55304z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix39730z7100 (.combout (nx39730z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[2]), .datad (
                           u_kirsch_r_a[2])) ;
                           defparam ix39730z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix39730z7097 (.combout (nx39730z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[2]), .datad (
                           u_kirsch_r_d[2])) ;
                           defparam ix39730z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix24156z7100 (.combout (nx24156z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[1]), .datad (
                           u_kirsch_r_a[1])) ;
                           defparam ix24156z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix24156z7097 (.combout (nx24156z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[1]), .datad (
                           u_kirsch_r_d[1])) ;
                           defparam ix24156z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix56954z7100 (.combout (nx56954z4), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_e[0]), .datad (
                           u_kirsch_r_a[0])) ;
                           defparam ix56954z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix56954z7097 (.combout (nx56954z2), .dataa (1'b1), .datab (
                           b_1_), .datac (u_kirsch_r_h[0]), .datad (
                           u_kirsch_r_d[0])) ;
                           defparam ix56954z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix17862z7096 (.combout (nx17862z2), .dataa (1'b1), .datab (
                           u_uart_TxFSM[0]), .datac (u_uart_TxFSM[1]), .datad (
                           nx17862z3)) ;
                           defparam ix17862z7096.lut_mask = 16'h03f3;
    fiftyfivenm_lcell_comb ix24163z7096 (.combout (nx24163z2), .dataa (1'b1), .datab (
                           u_kirsch_r7_val_10_), .datac (u_kirsch_r7_val_11_), .datad (
                           u_kirsch_r7_val_12_)) ;
                           defparam ix24163z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix12790z7097 (.combout (nx12790z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_RxFSM[5]), .datad (uart_rx)) ;
                           defparam ix12790z7097.lut_mask = 16'hff0f;
    fiftyfivenm_lcell_comb ix61431z7096 (.combout (nx61431z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_TxFSM[1]), .datad (u_uart_TopTx
                           )) ;
                           defparam ix61431z7096.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix59343z7096 (.combout (nx59343z2), .dataa (nx59343z3
                           ), .datab (nx59343z4), .datac (u_uart_RxDiv[10]), .datad (
                           u_uart_RxDivisor_4_)) ;
                           defparam ix59343z7096.lut_mask = 16'h0800;
    fiftyfivenm_lcell_comb ix59343z7097 (.combout (nx59343z3), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_RxDiv[8]), .datad (
                           u_uart_RxDiv[9])) ;
                           defparam ix59343z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix15004z7097 (.combout (nx15004z3), .dataa (1'b1), .datab (
                           read_fifo_status_cnt[0]), .datac (
                           read_fifo_status_cnt[1]), .datad (
                           read_fifo_status_cnt[2])) ;
                           defparam ix15004z7097.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix18416z7098 (.combout (nx18416z3), .dataa (1'b1), .datab (
                           write_fifo_status_cnt[0]), .datac (
                           write_fifo_status_cnt[7]), .datad (
                           write_fifo_status_cnt[8])) ;
                           defparam ix18416z7098.lut_mask = 16'hfcff;
    fiftyfivenm_lcell_comb ix22605z7096 (.combout (nx22605z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_r7_val_11_), .datad (
                           u_kirsch_r7_val_12_)) ;
                           defparam ix22605z7096.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix64502z7096 (.combout (nx64502z2), .dataa (1'b1), .datab (
                           1'b1), .datac (wait_for_tx_valid), .datad (nx7359z4)
                           ) ;
                           defparam ix64502z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix37156z7096 (.combout (nx37156z2), .dataa (1'b1), .datab (
                           1'b1), .datac (nx25399z9), .datad (seg7_pts[1])) ;
                           defparam ix37156z7096.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix37156z7100 (.combout (nx37156z6), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_o_col[2]), .datad (
                           u_kirsch_o_col[3])) ;
                           defparam ix37156z7100.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix48848z7096 (.combout (nx48848z2), .dataa (nx25399z4
                           ), .datab (nx25399z5), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix48848z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix25399z7102 (.combout (nx25399z8), .dataa (nx25399z9
                           ), .datab (seg7_pts[1]), .datac (seg7_num[4]), .datad (
                           seg7_num[5])) ;
                           defparam ix25399z7102.lut_mask = 16'h7fff;
    fiftyfivenm_lcell_comb ix25399z7097 (.combout (nx25399z3), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[4]), .datad (seg7_num[5])) ;
                           defparam ix25399z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix7605z7096 (.combout (nx7605z2), .dataa (
                           write_fifo_status_cnt[0]), .datab (
                           write_fifo_status_cnt[1]), .datac (
                           write_fifo_status_cnt[2]), .datad (
                           write_fifo_status_cnt[7])) ;
                           defparam ix7605z7096.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix55304z7099 (.combout (nx55304z3), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_g[3]), .datad (
                           u_kirsch_r_c[3])) ;
                           defparam ix55304z7099.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix55304z7096 (.combout (nx55304z1), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_f[3]), .datad (
                           u_kirsch_r_b[3])) ;
                           defparam ix55304z7096.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix39730z7099 (.combout (nx39730z3), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_g[2]), .datad (
                           u_kirsch_r_c[2])) ;
                           defparam ix39730z7099.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix39730z7096 (.combout (nx39730z1), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_f[2]), .datad (
                           u_kirsch_r_b[2])) ;
                           defparam ix39730z7096.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix24156z7099 (.combout (nx24156z3), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_g[1]), .datad (
                           u_kirsch_r_c[1])) ;
                           defparam ix24156z7099.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix24156z7096 (.combout (nx24156z1), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_f[1]), .datad (
                           u_kirsch_r_b[1])) ;
                           defparam ix24156z7096.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix56954z7099 (.combout (nx56954z3), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_g[0]), .datad (
                           u_kirsch_r_c[0])) ;
                           defparam ix56954z7099.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix56954z7096 (.combout (nx56954z1), .dataa (b_1_), .datab (
                           nx46527z3), .datac (u_kirsch_r_f[0]), .datad (
                           u_kirsch_r_b[0])) ;
                           defparam ix56954z7096.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix57349z7098 (.combout (nx57349z4), .dataa (nx57349z5
                           ), .datab (nx57349z6), .datac (u_uart_TxDiv[5]), .datad (
                           u_uart_TxDiv[7])) ;
                           defparam ix57349z7098.lut_mask = 16'ha00c;
    fiftyfivenm_lcell_comb ix57349z7097 (.combout (nx57349z3), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_TxDiv[1]), .datad (
                           u_uart_TxDiv[2])) ;
                           defparam ix57349z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix57349z7096 (.combout (nx57349z2), .dataa (
                           u_uart_TxDiv[3]), .datab (u_uart_TxDiv[9]), .datac (
                           u_uart_TxDiv[10]), .datad (u_uart_TxDiv[11])) ;
                           defparam ix57349z7096.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix57349z7100 (.combout (nx57349z6), .dataa (
                           u_uart_TxDiv[8]), .datab (u_uart_TxDiv[4]), .datac (
                           u_uart_TxDiv[0]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix57349z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix57349z7099 (.combout (nx57349z5), .dataa (
                           u_uart_TxDiv[8]), .datab (u_uart_TxDiv[4]), .datac (
                           u_uart_TxDiv[0]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix57349z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix20415z7097 (.combout (nx20415z2), .dataa (nx20415z3
                           ), .datab (nx20415z4), .datac (
                           read_fifo_status_cnt[0]), .datad (nx11963z1)) ;
                           defparam ix20415z7097.lut_mask = 16'hfe00;
    fiftyfivenm_lcell_comb ix20415z7098 (.combout (nx20415z3), .dataa (
                           read_fifo_status_cnt[1]), .datab (
                           read_fifo_status_cnt[2]), .datac (
                           read_fifo_status_cnt[3]), .datad (
                           read_fifo_status_cnt[4])) ;
                           defparam ix20415z7098.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix20415z7099 (.combout (nx20415z4), .dataa (
                           read_fifo_status_cnt[5]), .datab (
                           read_fifo_status_cnt[6]), .datac (
                           read_fifo_status_cnt[7]), .datad (
                           read_fifo_status_cnt[8])) ;
                           defparam ix20415z7099.lut_mask = 16'hfeff;
    dffeas reg_tx_busy_delayed (.q (tx_busy_delayed), .d (tx_busy), .clk (clk), 
           .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_rb_rd_en_delayed (.q (rb_rd_en_delayed), .d (rb_rd_en_true), .clk (
           clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_rd_en_delayed (.q (write_fifo_rd_en_delayed), .d (
           nx7605z1), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_7_ (.q (write_fifo_q_saved[7]), .d (
           write_fifo_q[7]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_6_ (.q (write_fifo_q_saved[6]), .d (
           write_fifo_q[6]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_5_ (.q (write_fifo_q_saved[5]), .d (
           write_fifo_q[5]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_4_ (.q (write_fifo_q_saved[4]), .d (
           write_fifo_q[4]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_3_ (.q (write_fifo_q_saved[3]), .d (
           write_fifo_q[3]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_2_ (.q (write_fifo_q_saved[2]), .d (
           write_fifo_q[2]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_1_ (.q (write_fifo_q_saved[1]), .d (
           write_fifo_q[1]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_0_ (.q (write_fifo_q_saved[0]), .d (
           write_fifo_q[0]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_7_ (.q (read_fifo_q_saved[7]), .d (
           read_fifo_q[7]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_6_ (.q (read_fifo_q_saved[6]), .d (
           read_fifo_q[6]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_5_ (.q (read_fifo_q_saved[5]), .d (
           read_fifo_q[5]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_4_ (.q (read_fifo_q_saved[4]), .d (
           read_fifo_q[4]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_3_ (.q (read_fifo_q_saved[3]), .d (
           read_fifo_q[3]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_2_ (.q (read_fifo_q_saved[2]), .d (
           read_fifo_q[2]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_1_ (.q (read_fifo_q_saved[1]), .d (
           read_fifo_q[1]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_0_ (.q (read_fifo_q_saved[0]), .d (
           read_fifo_q[0]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_prev_reset (.q (u_seg7_u_dual_seg7_prev_reset)
           , .d (k_o_data_7_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_prev_char0_en (.q (
           u_seg7_u_dual_seg7_prev_char0_en), .d (seg7_en[0]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_7_ (.q (seg7_data[7]), .d (
           u_seg7_u_dual_seg7_muxed_char_7_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_4_ (.q (seg7_data[4]), .d (
           u_seg7_u_dual_seg7_muxed_char_4_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_3_ (.q (seg7_data[3]), .d (
           u_seg7_u_dual_seg7_muxed_char_3_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_2_ (.q (seg7_data[2]), .d (
           u_seg7_u_dual_seg7_muxed_char_2_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_0_ (.q (seg7_data[0]), .d (
           u_seg7_u_dual_seg7_muxed_char_0_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_r (.q (nx12790z4), .d (NOT_uart_rx), .clk (clk), .ena (
           1'b1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_RxDivisor_4_ (.q (u_uart_RxDivisor_4_), .d (PWR), .clk (
           clk), .ena (1'b1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_TopRx (.q (u_uart_TopRx), .d (nx59343z1), .clk (clk), .ena (
           1'b1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_TopTx (.q (u_uart_TopTx), .d (nx57349z1), .clk (clk), .ena (
           1'b1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_TxBusy (.q (tx_busy), .d (nx13251z1), .clk (clk), .ena (
           1'b1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_Tx_Reg_8_ (.q (NOT_u_uart_Tx_Reg_8_), .d (
           NOT_u_uart_Tx_Reg_14n6ss1_8_), .clk (clk), .ena (nx18859z1), .clrn (
           nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_5_ (.q (u_uart_RxFSM[5]), .d (nx8802z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_4_ (.q (u_uart_RxFSM[4]), .d (nx9799z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_3_ (.q (u_uart_RxFSM[3]), .d (nx10796z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_2_ (.q (u_uart_RxFSM[2]), .d (nx11793z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_1_ (.q (u_uart_RxFSM[1]), .d (u_uart_RxFSM[0]), .clk (
           clk), .ena (nx12790z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_0_ (.q (nx64683z2), .d (nx13787z1), .clk (clk), .ena (
           nx12790z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_7_ (.q (uart_pixel[7]), .d (u_uart_Rx_Reg[7]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_6_ (.q (uart_pixel[6]), .d (u_uart_Rx_Reg[6]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_5_ (.q (uart_pixel[5]), .d (u_uart_Rx_Reg[5]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_4_ (.q (uart_pixel[4]), .d (u_uart_Rx_Reg[4]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_3_ (.q (uart_pixel[3]), .d (u_uart_Rx_Reg[3]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_2_ (.q (uart_pixel[2]), .d (u_uart_Rx_Reg[2]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_1_ (.q (uart_pixel[1]), .d (u_uart_Rx_Reg[1]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_0_ (.q (uart_pixel[0]), .d (u_uart_Rx_Reg[0]), .clk (
           clk), .ena (nx13938z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_7_ (.q (u_uart_Rx_Reg[7]), .d (u_uart_Rx_r), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_6_ (.q (u_uart_Rx_Reg[6]), .d (u_uart_Rx_Reg[7]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_5_ (.q (u_uart_Rx_Reg[5]), .d (u_uart_Rx_Reg[6]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_4_ (.q (u_uart_Rx_Reg[4]), .d (u_uart_Rx_Reg[5]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_3_ (.q (u_uart_Rx_Reg[3]), .d (u_uart_Rx_Reg[4]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_2_ (.q (u_uart_Rx_Reg[2]), .d (u_uart_Rx_Reg[3]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_1_ (.q (u_uart_Rx_Reg[1]), .d (u_uart_Rx_Reg[2]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_0_ (.q (u_uart_Rx_Reg[0]), .d (u_uart_Rx_Reg[1]), .clk (
           clk), .ena (nx44871z1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxRDYi (.q (rx_valid), .d (nx13938z1), .clk (clk), .ena (
           1'b1), .clrn (nx4364z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_r_e_7_ (.q (u_kirsch_r_e[7]), .d (write_fifo_q[7]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_6_ (.q (u_kirsch_r_e[6]), .d (write_fifo_q[6]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_5_ (.q (u_kirsch_r_e[5]), .d (write_fifo_q[5]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_4_ (.q (u_kirsch_r_e[4]), .d (write_fifo_q[4]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_3_ (.q (u_kirsch_r_e[3]), .d (write_fifo_q[3]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_2_ (.q (u_kirsch_r_e[2]), .d (write_fifo_q[2]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_1_ (.q (u_kirsch_r_e[1]), .d (write_fifo_q[1]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_e_0_ (.q (u_kirsch_r_e[0]), .d (write_fifo_q[0]), .clk (
           clk), .ena (nx26352z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_7_ (.q (u_kirsch_r_f[7]), .d (
           u_kirsch_r_f_11n3ss1[7]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_6_ (.q (u_kirsch_r_f[6]), .d (
           u_kirsch_r_f_11n3ss1[6]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_5_ (.q (u_kirsch_r_f[5]), .d (
           u_kirsch_r_f_11n3ss1[5]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_4_ (.q (u_kirsch_r_f[4]), .d (
           u_kirsch_r_f_11n3ss1[4]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_3_ (.q (u_kirsch_r_f[3]), .d (
           u_kirsch_r_f_11n3ss1[3]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_2_ (.q (u_kirsch_r_f[2]), .d (
           u_kirsch_r_f_11n3ss1[2]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_1_ (.q (u_kirsch_r_f[1]), .d (
           u_kirsch_r_f_11n3ss1[1]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_f_0_ (.q (u_kirsch_r_f[0]), .d (
           u_kirsch_r_f_11n3ss1[0]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_7_ (.q (u_kirsch_r_i[7]), .d (
           u_kirsch_r_i_11n3ss1[7]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_6_ (.q (u_kirsch_r_i[6]), .d (
           u_kirsch_r_i_11n3ss1[6]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_5_ (.q (u_kirsch_r_i[5]), .d (
           u_kirsch_r_i_11n3ss1[5]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_4_ (.q (u_kirsch_r_i[4]), .d (
           u_kirsch_r_i_11n3ss1[4]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_3_ (.q (u_kirsch_r_i[3]), .d (
           u_kirsch_r_i_11n3ss1[3]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_2_ (.q (u_kirsch_r_i[2]), .d (
           u_kirsch_r_i_11n3ss1[2]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_1_ (.q (u_kirsch_r_i[1]), .d (
           u_kirsch_r_i_11n3ss1[1]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_i_0_ (.q (u_kirsch_r_i[0]), .d (
           u_kirsch_r_i_11n3ss1[0]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_7_ (.q (u_kirsch_r_b[7]), .d (
           u_kirsch_r_b_11n3ss1[7]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_6_ (.q (u_kirsch_r_b[6]), .d (
           u_kirsch_r_b_11n3ss1[6]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_5_ (.q (u_kirsch_r_b[5]), .d (
           u_kirsch_r_b_11n3ss1[5]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_4_ (.q (u_kirsch_r_b[4]), .d (
           u_kirsch_r_b_11n3ss1[4]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_3_ (.q (u_kirsch_r_b[3]), .d (
           u_kirsch_r_b_11n3ss1[3]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_2_ (.q (u_kirsch_r_b[2]), .d (
           u_kirsch_r_b_11n3ss1[2]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_1_ (.q (u_kirsch_r_b[1]), .d (
           u_kirsch_r_b_11n3ss1[1]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_b_0_ (.q (u_kirsch_r_b[0]), .d (
           u_kirsch_r_b_11n3ss1[0]), .clk (clk), .ena (nx25991z1), .clrn (PWR), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_7_ (.q (u_kirsch_r_g[7]), .d (
           u_kirsch_r_g_11n3ss1[7]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_6_ (.q (u_kirsch_r_g[6]), .d (
           u_kirsch_r_g_11n3ss1[6]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_5_ (.q (u_kirsch_r_g[5]), .d (
           u_kirsch_r_g_11n3ss1[5]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_4_ (.q (u_kirsch_r_g[4]), .d (
           u_kirsch_r_g_11n3ss1[4]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_3_ (.q (u_kirsch_r_g[3]), .d (
           u_kirsch_r_g_11n3ss1[3]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_2_ (.q (u_kirsch_r_g[2]), .d (
           u_kirsch_r_g_11n3ss1[2]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_1_ (.q (u_kirsch_r_g[1]), .d (
           u_kirsch_r_g_11n3ss1[1]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_g_0_ (.q (u_kirsch_r_g[0]), .d (
           u_kirsch_r_g_11n3ss1[0]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_7_ (.q (u_kirsch_r_h[7]), .d (
           u_kirsch_r_h_11n3ss1[7]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_6_ (.q (u_kirsch_r_h[6]), .d (
           u_kirsch_r_h_11n3ss1[6]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_5_ (.q (u_kirsch_r_h[5]), .d (
           u_kirsch_r_h_11n3ss1[5]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_4_ (.q (u_kirsch_r_h[4]), .d (
           u_kirsch_r_h_11n3ss1[4]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_3_ (.q (u_kirsch_r_h[3]), .d (
           u_kirsch_r_h_11n3ss1[3]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_2_ (.q (u_kirsch_r_h[2]), .d (
           u_kirsch_r_h_11n3ss1[2]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_1_ (.q (u_kirsch_r_h[1]), .d (
           u_kirsch_r_h_11n3ss1[1]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_h_0_ (.q (u_kirsch_r_h[0]), .d (
           u_kirsch_r_h_11n3ss1[0]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_7_ (.q (u_kirsch_r_a[7]), .d (
           u_kirsch_r_a_11n3ss1[7]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_6_ (.q (u_kirsch_r_a[6]), .d (
           u_kirsch_r_a_11n3ss1[6]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_5_ (.q (u_kirsch_r_a[5]), .d (
           u_kirsch_r_a_11n3ss1[5]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_4_ (.q (u_kirsch_r_a[4]), .d (
           u_kirsch_r_a_11n3ss1[4]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_3_ (.q (u_kirsch_r_a[3]), .d (
           u_kirsch_r_a_11n3ss1[3]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_2_ (.q (u_kirsch_r_a[2]), .d (
           u_kirsch_r_a_11n3ss1[2]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_1_ (.q (u_kirsch_r_a[1]), .d (
           u_kirsch_r_a_11n3ss1[1]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_a_0_ (.q (u_kirsch_r_a[0]), .d (
           u_kirsch_r_a_11n3ss1[0]), .clk (clk), .ena (nx2550z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r1_ty_2_ (.q (u_kirsch_r1_ty[2]), .d (nx46527z6), .clk (
           clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r1_ty_0_ (.q (u_kirsch_r1_ty[0]), .d (nx32900z1), .clk (
           clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_8_ (.q (u_kirsch_r2[8]), .d (u_kirsch_r2_14n0r1[8]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_7_ (.q (u_kirsch_r2[7]), .d (u_kirsch_r2_14n0r1[7]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_6_ (.q (u_kirsch_r2[6]), .d (u_kirsch_r2_14n0r1[6]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_5_ (.q (u_kirsch_r2[5]), .d (u_kirsch_r2_14n0r1[5]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_4_ (.q (u_kirsch_r2[4]), .d (u_kirsch_r2_14n0r1[4]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_3_ (.q (u_kirsch_r2[3]), .d (u_kirsch_r2_14n0r1[3]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_2_ (.q (u_kirsch_r2[2]), .d (u_kirsch_r2_14n0r1[2]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_1_ (.q (u_kirsch_r2[1]), .d (u_kirsch_r2_14n0r1[1]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r2_0_ (.q (u_kirsch_r2[0]), .d (u_kirsch_r2_14n0r1[0]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_9_ (.q (u_kirsch_r4_val[9]), .d (
           u_kirsch_r4_16n0r1[9]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_8_ (.q (u_kirsch_r4_val[8]), .d (
           u_kirsch_r4_16n0r1[8]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_7_ (.q (u_kirsch_r4_val[7]), .d (
           u_kirsch_r4_16n0r1[7]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_6_ (.q (u_kirsch_r4_val[6]), .d (
           u_kirsch_r4_16n0r1[6]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_5_ (.q (u_kirsch_r4_val[5]), .d (
           u_kirsch_r4_16n0r1[5]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_4_ (.q (u_kirsch_r4_val[4]), .d (
           u_kirsch_r4_16n0r1[4]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_3_ (.q (u_kirsch_r4_val[3]), .d (
           u_kirsch_r4_16n0r1[3]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_2_ (.q (u_kirsch_r4_val[2]), .d (
           u_kirsch_r4_16n0r1[2]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_1_ (.q (u_kirsch_r4_val[1]), .d (
           u_kirsch_r4_16n0r1[1]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_val_0_ (.q (u_kirsch_r4_val[0]), .d (
           u_kirsch_r4_16n0r1[0]), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_ty_2_ (.q (u_kirsch_r4_ty[2]), .d (u_kirsch_r1_ty[2])
           , .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_ty_1_ (.q (u_kirsch_r4_ty[1]), .d (u_kirsch_r1_ty[1])
           , .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r4_ty_0_ (.q (u_kirsch_r4_ty[0]), .d (u_kirsch_r1_ty[0])
           , .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_9_ (.q (u_kirsch_r5_val[9]), .d (
           u_kirsch_r4_val[9]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_8_ (.q (u_kirsch_r5_val[8]), .d (
           u_kirsch_r4_val[8]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_7_ (.q (u_kirsch_r5_val[7]), .d (
           u_kirsch_r4_val[7]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_6_ (.q (u_kirsch_r5_val[6]), .d (
           u_kirsch_r4_val[6]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_5_ (.q (u_kirsch_r5_val[5]), .d (
           u_kirsch_r4_val[5]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_4_ (.q (u_kirsch_r5_val[4]), .d (
           u_kirsch_r4_val[4]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_3_ (.q (u_kirsch_r5_val[3]), .d (
           u_kirsch_r4_val[3]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_2_ (.q (u_kirsch_r5_val[2]), .d (
           u_kirsch_r4_val[2]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_1_ (.q (u_kirsch_r5_val[1]), .d (
           u_kirsch_r4_val[1]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_val_0_ (.q (u_kirsch_r5_val[0]), .d (
           u_kirsch_r4_val[0]), .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_ty_2_ (.q (u_kirsch_r5_ty[2]), .d (u_kirsch_r4_ty[2])
           , .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (PWR), .asdata (1'b0
           ), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_ty_1_ (.q (u_kirsch_r5_ty[1]), .d (u_kirsch_r4_ty[1])
           , .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (PWR), .asdata (1'b0
           ), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r5_ty_0_ (.q (u_kirsch_r5_ty[0]), .d (u_kirsch_r4_ty[0])
           , .clk (clk), .ena (nx3238z1), .clrn (PWR), .prn (PWR), .asdata (1'b0
           ), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_12_ (.q (u_kirsch_r6[12]), .d (u_kirsch_r6_18n0r1[12]
           ), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_11_ (.q (u_kirsch_r6[11]), .d (u_kirsch_r6_18n0r1[11]
           ), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_10_ (.q (u_kirsch_r6[10]), .d (u_kirsch_r6_18n0r1[10]
           ), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_9_ (.q (u_kirsch_r6[9]), .d (u_kirsch_r6_18n0r1[9]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_8_ (.q (u_kirsch_r6[8]), .d (u_kirsch_r6_18n0r1[8]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_7_ (.q (u_kirsch_r6[7]), .d (u_kirsch_r6_18n0r1[7]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_6_ (.q (u_kirsch_r6[6]), .d (u_kirsch_r6_18n0r1[6]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_5_ (.q (u_kirsch_r6[5]), .d (u_kirsch_r6_18n0r1[5]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_4_ (.q (u_kirsch_r6[4]), .d (u_kirsch_r6_18n0r1[4]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_3_ (.q (u_kirsch_r6[3]), .d (u_kirsch_r6_18n0r1[3]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_2_ (.q (u_kirsch_r6[2]), .d (u_kirsch_r6_18n0r1[2]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_1_ (.q (u_kirsch_r6[1]), .d (u_kirsch_r6_18n0r1[1]), 
           .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r6_0_ (.q (u_kirsch_r6[0]), .d (u_kirsch_r3[0]), .clk (
           clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_13_ (.q (u_kirsch_r7_val_13_), .d (
           u_kirsch_r7_19n0r1_13_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_12_ (.q (u_kirsch_r7_val_12_), .d (
           u_kirsch_r7_19n0r1_12_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_11_ (.q (u_kirsch_r7_val_11_), .d (
           u_kirsch_r7_19n0r1_11_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_10_ (.q (u_kirsch_r7_val_10_), .d (
           u_kirsch_r7_19n0r1_10_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_9_ (.q (u_kirsch_r7_val_9_), .d (
           u_kirsch_r7_19n0r1_9_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_8_ (.q (u_kirsch_r7_val_8_), .d (
           u_kirsch_r7_19n0r1_8_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_val_7_ (.q (u_kirsch_r7_val_7_), .d (
           u_kirsch_r7_19n0r1_7_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_ty_2_ (.q (u_kirsch_r7_ty[2]), .d (u_kirsch_r5_ty[2])
           , .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_ty_1_ (.q (u_kirsch_r7_ty[1]), .d (u_kirsch_r5_ty[1])
           , .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r7_ty_0_ (.q (u_kirsch_r7_ty[0]), .d (u_kirsch_r5_ty[0])
           , .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_edge (.q (k_o_data_3_), .d (nx22605z1), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_o_valid (.q (k_o_valid), .d (u_kirsch_v[7]), .clk (clk)
           , .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_3_ (.q (u_uart_TxBitCnt[3]), .d (
           nx62428z1), .clk (clk), .ena (nx59437z2), .clrn (nx4364z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_2_ (.q (u_uart_TxBitCnt[2]), .d (
           nx61431z1), .clk (clk), .ena (nx59437z2), .clrn (nx4364z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_1_ (.q (u_uart_TxBitCnt[1]), .d (
           nx60434z1), .clk (clk), .ena (nx59437z2), .clrn (nx4364z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_0_ (.q (u_uart_TxBitCnt[0]), .d (
           nx59437z1), .clk (clk), .ena (nx59437z2), .clrn (nx4364z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_3_ (.q (u_uart_RxBitCnt[3]), .d (
           nx2138z1), .clk (clk), .ena (nx64683z3), .clrn (nx4364z1), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_2_ (.q (u_uart_RxBitCnt[2]), .d (
           nx1141z1), .clk (clk), .ena (nx64683z3), .clrn (nx4364z1), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_1_ (.q (u_uart_RxBitCnt[1]), .d (
           nx144z1), .clk (clk), .ena (nx64683z3), .clrn (nx4364z1), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_0_ (.q (u_uart_RxBitCnt[0]), .d (
           nx64683z1), .clk (clk), .ena (nx64683z3), .clrn (nx4364z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    fiftyfivenm_lcell_comb ix8356z7095 (.combout (nx8356z1), .dataa (1'b1), .datab (
                           u_uart_TopTx), .datac (u_uart_TxFSM[1]), .datad (
                           u_uart_TxFSM[0])) ;
                           defparam ix8356z7095.lut_mask = 16'h3cf0;
    fiftyfivenm_lcell_comb ix49423z7096 (.combout (nx49423z1), .dataa (
                           u_kirsch_r_f[0]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[0])) ;
                           defparam ix49423z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix49423z7095 (.combout (u_kirsch_i3[0]), .dataa (
                           nx49423z1), .datab (b_1_), .datac (u_kirsch_r_b[0]), 
                           .datad (u_kirsch_r_a[0])) ;
                           defparam ix49423z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix18275z7096 (.combout (nx18275z1), .dataa (
                           u_kirsch_r_f[1]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[1])) ;
                           defparam ix18275z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix18275z7095 (.combout (u_kirsch_i3[1]), .dataa (
                           nx18275z1), .datab (b_1_), .datac (u_kirsch_r_b[1]), 
                           .datad (u_kirsch_r_a[1])) ;
                           defparam ix18275z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix30930z7096 (.combout (nx30930z1), .dataa (
                           u_kirsch_r_f[2]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[2])) ;
                           defparam ix30930z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix30930z7095 (.combout (u_kirsch_i3[2]), .dataa (
                           nx30930z1), .datab (b_1_), .datac (u_kirsch_r_b[2]), 
                           .datad (u_kirsch_r_a[2])) ;
                           defparam ix30930z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix3458z7096 (.combout (nx3458z1), .dataa (
                           u_kirsch_r_f[3]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[3])) ;
                           defparam ix3458z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix3458z7095 (.combout (u_kirsch_i3[3]), .dataa (
                           nx3458z1), .datab (b_1_), .datac (u_kirsch_r_b[3]), .datad (
                           u_kirsch_r_a[3])) ;
                           defparam ix3458z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix19789z7096 (.combout (nx19789z1), .dataa (
                           u_kirsch_r_f[4]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[4])) ;
                           defparam ix19789z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix19789z7095 (.combout (u_kirsch_i3[4]), .dataa (
                           nx19789z1), .datab (b_1_), .datac (u_kirsch_r_b[4]), 
                           .datad (u_kirsch_r_a[4])) ;
                           defparam ix19789z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix11359z7096 (.combout (nx11359z1), .dataa (
                           u_kirsch_r_f[5]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[5])) ;
                           defparam ix11359z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix11359z7095 (.combout (u_kirsch_i3[5]), .dataa (
                           nx11359z1), .datab (b_1_), .datac (u_kirsch_r_b[5]), 
                           .datad (u_kirsch_r_a[5])) ;
                           defparam ix11359z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix42507z7096 (.combout (nx42507z1), .dataa (
                           u_kirsch_r_f[6]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[6])) ;
                           defparam ix42507z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix42507z7095 (.combout (u_kirsch_i3[6]), .dataa (
                           nx42507z1), .datab (b_1_), .datac (u_kirsch_r_b[6]), 
                           .datad (u_kirsch_r_a[6])) ;
                           defparam ix42507z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix39360z7096 (.combout (nx39360z1), .dataa (
                           u_kirsch_r_f[7]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_d[7])) ;
                           defparam ix39360z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix39360z7095 (.combout (u_kirsch_i3[7]), .dataa (
                           nx39360z1), .datab (b_1_), .datac (u_kirsch_r_b[7]), 
                           .datad (u_kirsch_r_a[7])) ;
                           defparam ix39360z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix49423z7098 (.combout (nx49423z2), .dataa (
                           u_kirsch_r_g[0]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[0])) ;
                           defparam ix49423z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix49423z7097 (.combout (u_kirsch_i4[0]), .dataa (
                           nx49423z2), .datab (b_1_), .datac (u_kirsch_r_c[0]), 
                           .datad (u_kirsch_r_h[0])) ;
                           defparam ix49423z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix18275z7098 (.combout (nx18275z2), .dataa (
                           u_kirsch_r_g[1]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[1])) ;
                           defparam ix18275z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix18275z7097 (.combout (u_kirsch_i4[1]), .dataa (
                           nx18275z2), .datab (b_1_), .datac (u_kirsch_r_c[1]), 
                           .datad (u_kirsch_r_h[1])) ;
                           defparam ix18275z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix30930z7098 (.combout (nx30930z2), .dataa (
                           u_kirsch_r_g[2]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[2])) ;
                           defparam ix30930z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix30930z7097 (.combout (u_kirsch_i4[2]), .dataa (
                           nx30930z2), .datab (b_1_), .datac (u_kirsch_r_c[2]), 
                           .datad (u_kirsch_r_h[2])) ;
                           defparam ix30930z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix3458z7098 (.combout (nx3458z2), .dataa (
                           u_kirsch_r_g[3]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[3])) ;
                           defparam ix3458z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix3458z7097 (.combout (u_kirsch_i4[3]), .dataa (
                           nx3458z2), .datab (b_1_), .datac (u_kirsch_r_c[3]), .datad (
                           u_kirsch_r_h[3])) ;
                           defparam ix3458z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix19789z7098 (.combout (nx19789z2), .dataa (
                           u_kirsch_r_g[4]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[4])) ;
                           defparam ix19789z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix19789z7097 (.combout (u_kirsch_i4[4]), .dataa (
                           nx19789z2), .datab (b_1_), .datac (u_kirsch_r_c[4]), 
                           .datad (u_kirsch_r_h[4])) ;
                           defparam ix19789z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix11359z7098 (.combout (nx11359z2), .dataa (
                           u_kirsch_r_g[5]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[5])) ;
                           defparam ix11359z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix11359z7097 (.combout (u_kirsch_i4[5]), .dataa (
                           nx11359z2), .datab (b_1_), .datac (u_kirsch_r_c[5]), 
                           .datad (u_kirsch_r_h[5])) ;
                           defparam ix11359z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix42507z7098 (.combout (nx42507z2), .dataa (
                           u_kirsch_r_g[6]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[6])) ;
                           defparam ix42507z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix42507z7097 (.combout (u_kirsch_i4[6]), .dataa (
                           nx42507z2), .datab (b_1_), .datac (u_kirsch_r_c[6]), 
                           .datad (u_kirsch_r_h[6])) ;
                           defparam ix42507z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix39360z7100 (.combout (nx39360z2), .dataa (
                           u_kirsch_r_g[7]), .datab (b_0_), .datac (b_1_), .datad (
                           u_kirsch_r_e[7])) ;
                           defparam ix39360z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix39360z7099 (.combout (u_kirsch_i4[7]), .dataa (
                           nx39360z2), .datab (b_1_), .datac (u_kirsch_r_c[7]), 
                           .datad (u_kirsch_r_h[7])) ;
                           defparam ix39360z7099.lut_mask = 16'hea62;
endmodule


module ram_dq_8_4 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename146;



    altsyncram ix64056z29485 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename146), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename146), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29485.width_a = 8;
               defparam ix64056z29485.widthad_a = 8;
               defparam ix64056z29485.numwords_a = 256;
               defparam ix64056z29485.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29485.address_aclr_a = "NONE";
               defparam ix64056z29485.outdata_aclr_a = "NONE";
               defparam ix64056z29485.indata_aclr_a = "NONE";
               defparam ix64056z29485.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29485.byteena_aclr_a = "NONE";
               defparam ix64056z29485.width_byteena_a = 1;
               defparam ix64056z29485.width_b = 8;
               defparam ix64056z29485.widthad_b = 8;
               defparam ix64056z29485.numwords_b = 256;
               defparam ix64056z29485.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29485.address_reg_b = "CLOCK1";
               defparam ix64056z29485.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29485.outdata_aclr_b = "NONE";
               defparam ix64056z29485.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29485.indata_reg_b = "CLOCK1";
               defparam ix64056z29485.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29485.byteena_reg_b = "CLOCK1";
               defparam ix64056z29485.indata_aclr_b = "NONE";
               defparam ix64056z29485.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29485.byteena_aclr_b = "NONE";
               defparam ix64056z29485.width_byteena_b = 1;
               defparam ix64056z29485.address_aclr_b = "NONE";
               defparam ix64056z29485.operation_mode = "SINGLE_PORT";
               defparam ix64056z29485.byte_size = 8;
               defparam ix64056z29485.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29485.ram_block_type = "AUTO";
               defparam ix64056z29485.init_file = "UNUSED";
               defparam ix64056z29485.init_file_layout = "UNUSED";
               defparam ix64056z29485.maximum_depth = 0;
               defparam ix64056z29485.intended_device_family = "MAX 10";
               defparam ix64056z29485.lpm_hint = "UNUSED";
               defparam ix64056z29485.lpm_type = "altsyncram";
    assign rd_ena1_rename146 = 1'b1 ;
endmodule


module ram_dq_8_3 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename116;



    altsyncram ix64056z29484 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename116), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename116), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29484.width_a = 8;
               defparam ix64056z29484.widthad_a = 8;
               defparam ix64056z29484.numwords_a = 256;
               defparam ix64056z29484.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29484.address_aclr_a = "NONE";
               defparam ix64056z29484.outdata_aclr_a = "NONE";
               defparam ix64056z29484.indata_aclr_a = "NONE";
               defparam ix64056z29484.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29484.byteena_aclr_a = "NONE";
               defparam ix64056z29484.width_byteena_a = 1;
               defparam ix64056z29484.width_b = 8;
               defparam ix64056z29484.widthad_b = 8;
               defparam ix64056z29484.numwords_b = 256;
               defparam ix64056z29484.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29484.address_reg_b = "CLOCK1";
               defparam ix64056z29484.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29484.outdata_aclr_b = "NONE";
               defparam ix64056z29484.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29484.indata_reg_b = "CLOCK1";
               defparam ix64056z29484.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29484.byteena_reg_b = "CLOCK1";
               defparam ix64056z29484.indata_aclr_b = "NONE";
               defparam ix64056z29484.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29484.byteena_aclr_b = "NONE";
               defparam ix64056z29484.width_byteena_b = 1;
               defparam ix64056z29484.address_aclr_b = "NONE";
               defparam ix64056z29484.operation_mode = "SINGLE_PORT";
               defparam ix64056z29484.byte_size = 8;
               defparam ix64056z29484.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29484.ram_block_type = "AUTO";
               defparam ix64056z29484.init_file = "UNUSED";
               defparam ix64056z29484.init_file_layout = "UNUSED";
               defparam ix64056z29484.maximum_depth = 0;
               defparam ix64056z29484.intended_device_family = "MAX 10";
               defparam ix64056z29484.lpm_hint = "UNUSED";
               defparam ix64056z29484.lpm_type = "altsyncram";
    assign rd_ena1_rename116 = 1'b1 ;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename86;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename86), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename86), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29483.width_a = 8;
               defparam ix64056z29483.widthad_a = 8;
               defparam ix64056z29483.numwords_a = 256;
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29483.address_aclr_a = "NONE";
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               defparam ix64056z29483.indata_aclr_a = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               defparam ix64056z29483.width_byteena_a = 1;
               defparam ix64056z29483.width_b = 8;
               defparam ix64056z29483.widthad_b = 8;
               defparam ix64056z29483.numwords_b = 256;
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               defparam ix64056z29483.indata_aclr_b = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               defparam ix64056z29483.width_byteena_b = 1;
               defparam ix64056z29483.address_aclr_b = "NONE";
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               defparam ix64056z29483.byte_size = 8;
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29483.ram_block_type = "AUTO";
               defparam ix64056z29483.init_file = "UNUSED";
               defparam ix64056z29483.init_file_layout = "UNUSED";
               defparam ix64056z29483.maximum_depth = 0;
               defparam ix64056z29483.intended_device_family = "MAX 10";
               defparam ix64056z29483.lpm_hint = "UNUSED";
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign rd_ena1_rename86 = 1'b1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename56;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename56), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename56), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29482.width_a = 8;
               defparam ix64056z29482.widthad_a = 8;
               defparam ix64056z29482.numwords_a = 256;
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29482.address_aclr_a = "NONE";
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               defparam ix64056z29482.indata_aclr_a = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               defparam ix64056z29482.width_byteena_a = 1;
               defparam ix64056z29482.width_b = 8;
               defparam ix64056z29482.widthad_b = 8;
               defparam ix64056z29482.numwords_b = 256;
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               defparam ix64056z29482.indata_aclr_b = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               defparam ix64056z29482.width_byteena_b = 1;
               defparam ix64056z29482.address_aclr_b = "NONE";
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               defparam ix64056z29482.byte_size = 8;
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29482.ram_block_type = "AUTO";
               defparam ix64056z29482.init_file = "UNUSED";
               defparam ix64056z29482.init_file_layout = "UNUSED";
               defparam ix64056z29482.maximum_depth = 0;
               defparam ix64056z29482.intended_device_family = "MAX 10";
               defparam ix64056z29482.lpm_hint = "UNUSED";
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign rd_ena1_rename56 = 1'b1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename26;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename26), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename26), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29481.width_a = 8;
               defparam ix64056z29481.widthad_a = 8;
               defparam ix64056z29481.numwords_a = 256;
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29481.address_aclr_a = "NONE";
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               defparam ix64056z29481.indata_aclr_a = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               defparam ix64056z29481.width_byteena_a = 1;
               defparam ix64056z29481.width_b = 8;
               defparam ix64056z29481.widthad_b = 8;
               defparam ix64056z29481.numwords_b = 256;
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               defparam ix64056z29481.indata_aclr_b = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               defparam ix64056z29481.width_byteena_b = 1;
               defparam ix64056z29481.address_aclr_b = "NONE";
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               defparam ix64056z29481.byte_size = 8;
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29481.ram_block_type = "AUTO";
               defparam ix64056z29481.init_file = "UNUSED";
               defparam ix64056z29481.init_file_layout = "UNUSED";
               defparam ix64056z29481.maximum_depth = 0;
               defparam ix64056z29481.intended_device_family = "MAX 10";
               defparam ix64056z29481.lpm_hint = "UNUSED";
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign rd_ena1_rename26 = 1'b1 ;
endmodule

