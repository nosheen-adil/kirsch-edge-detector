//
// Verilog description for cell kirsch, 
// Sat Mar 30 21:17:31 2019
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module kirsch ( clk, reset, i_valid, i_pixel, o_valid, o_edge, o_dir, o_mode, 
                o_row, o_col ) ;

    input clk ;
    input reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    output [7:0]o_col ;

    wire [7:0]r_a;
    wire [7:0]r_b;
    wire [7:0]r_c;
    wire [7:0]r_d;
    wire [7:0]r_e;
    wire [7:0]r_f;
    wire [7:0]r_g;
    wire [7:0]r_h;
    wire [7:0]r_i;
    wire [8:0]r2;
    wire [11:0]r3;
    wire [12:0]r6;
    wire [0:2]wr_en;
    wire [1:7]v;
    wire [8:0]r2_14n0r1;
    wire [8:0]r3_15n1ss1;
    wire [9:0]r4_16n0r1;
    wire [12:1]r6_18n0r1;
    wire r7_19n0r1_12_, r7_19n0r1_11_, r7_19n0r1_10_, r7_19n0r1_9_, r7_19n0r1_8_, 
         r7_19n0r1_7_, nx20795z1;
    wire [7:0]M_out_2_;
    wire [7:0]M_out_1_;
    wire [7:0]M_out_0_;
    wire [2:0]r1_ty;
    wire [7:0]r1_val;
    wire [2:0]r4_ty;
    wire [9:0]r4_val;
    wire [2:0]r5_ty;
    wire [9:0]r5_val;
    wire [2:0]r7_ty;
    wire r7_val_13_, r7_val_12_, r7_val_11_, r7_val_10_, r7_val_9_, r7_val_8_, 
         r7_val_7_, nx29699z1, nx30696z1, nx39324z1, inc_d_0_, inc_d_1_, 
         inc_d_2_, inc_d_3_, inc_d_4_, inc_d_5_, inc_d_6_, inc_d_7_, nx52268z1, 
         nx54262z2, nx54262z1, nx56256z2, nx56256z1, nx58250z2, nx58250z1, 
         inc_d_0__dup_1994, inc_d_1__dup_1995, inc_d_2__dup_1996, 
         inc_d_3__dup_1997, inc_d_4__dup_1998, inc_d_5__dup_1999, 
         inc_d_6__dup_2000, inc_d_7__dup_2001, nx12707z1, nx8437z3, nx8437z2, 
         nx35955z2, nx35955z1, nx50725z2, nx50725z1, nx7245z8, nx7245z7, 
         nx7245z6, nx7245z5, nx7245z4, nx7245z3, nx7245z2, nx40514z8, nx40514z7, 
         nx40514z6, nx40514z5, nx40514z4, nx40514z3, nx40514z2, nx40514z1, 
         nx20432z10, nx20432z9, nx20432z8, nx20432z7, nx20432z6, nx20432z5, 
         nx20432z4, nx20432z3, nx20432z2, nx20432z1, nx22789z21, nx22789z20, 
         nx22789z19, nx22789z18, nx22789z17, nx22789z16, nx22789z15, nx22789z14, 
         nx22789z13, nx22789z12, nx22789z11, nx22789z10, nx22789z9, nx22789z8, 
         nx22789z7, nx22789z6, nx22789z5, nx22789z4, nx22789z3, nx22789z2, 
         nx22789z1, nx21792z2, nx21792z1, nx30696z11, nx30696z10, nx30696z9, 
         nx30696z8, nx30696z7, nx30696z6, nx30696z5, nx30696z4, nx30696z3, 
         nx30696z2, nx29699z2;
    wire [7:0]M_b;
    wire [7:0]i3;
    wire [7:0]i4;
    wire GND, PWR, nx10173z2, nx23707z2, nx47148z2, nx62709z1, r7_19n0r1_13_, 
         nx1448z1, nx41057z1, nx10173z4, nx43221z2, nx34903z2;
    wire [7:0]i1_val;
    wire [7:0]i2_val;
    wire nx26839z1, nx25842z1, nx24845z1, nx41459z2, NOT_r6_0_, nx8309z2, 
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
         nx10173z3, nx41459z4, nx41459z5, nx2532_repl, nx35226z1, wr_en_0__repl, 
         nx24573z1, nx25867z1, nx39033z1, nx7245z1, nx34903z4, nx43221z1, 
         NOT_GND;
    wire [2257:0] xmplr_dummy ;




    ram_dq_8_0 mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               M_out_0_[7],M_out_0_[6],M_out_0_[5],M_out_0_[4],M_out_0_[3],
               M_out_0_[2],M_out_0_[1],M_out_0_[0]}), .addr1 ({o_col[7],o_col[6]
               ,o_col[5],o_col[4],o_col[3],o_col[2],o_col[1],o_col[0]}), .wr_clk1 (
               clk), .wr_ena1 (wr_en[0])) ;
    ram_dq_8_1 mem_0 (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               M_out_1_[7],M_out_1_[6],M_out_1_[5],M_out_1_[4],M_out_1_[3],
               M_out_1_[2],M_out_1_[1],M_out_1_[0]}), .addr1 ({o_col[7],o_col[6]
               ,o_col[5],o_col[4],o_col[3],o_col[2],o_col[1],o_col[0]}), .wr_clk1 (
               clk), .wr_ena1 (wr_en[1])) ;
    ram_dq_8_2 mem_1 (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               M_out_2_[7],M_out_2_[6],M_out_2_[5],M_out_2_[4],M_out_2_[3],
               M_out_2_[2],M_out_2_[1],M_out_2_[0]}), .addr1 ({o_col[7],o_col[6]
               ,o_col[5],o_col[4],o_col[3],o_col[2],o_col[1],o_col[0]}), .wr_clk1 (
               clk), .wr_ena1 (wr_en[2])) ;
    assign nx22789z21 = ~r6[1] ;
    assign nx22789z19 = ~r6[2] ;
    assign nx22789z17 = ~r6[3] ;
    assign nx22789z15 = ~r6[4] ;
    assign nx22789z13 = ~r6[5] ;
    assign nx22789z11 = ~r6[6] ;
    assign nx22789z9 = ~r6[7] ;
    assign nx22789z7 = ~r6[8] ;
    assign nx22789z5 = ~r6[9] ;
    assign nx22789z3 = ~r6[10] ;
    assign nx22789z1 = ~r6[11] ;
    assign nx21792z1 = ~r6[12] ;
    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    assign r7_19n0r1_13_ = ~nx20795z1 ;
    assign NOT_r6_0_ = ~r6[0] ;
    assign o_mode[0] = ~nx34903z4 ;
    assign NOT_GND = ~GND ;
    stratixiv_lcell_comb ix52268z17675 (.sumout (inc_d_0_), .cout (nx52268z1), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[0])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (PWR
                         ), .sharein (1'b0)) ;
                         defparam ix52268z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix52268z17674 (.sumout (inc_d_1_), .cout (nx54262z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[1])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx52268z1), .sharein (1'b0)) ;
                         defparam ix52268z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix54262z17675 (.sumout (inc_d_2_), .cout (nx54262z1), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[2])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx54262z2), .sharein (1'b0)) ;
                         defparam ix54262z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix54262z17674 (.sumout (inc_d_3_), .cout (nx56256z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[3])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx54262z1), .sharein (1'b0)) ;
                         defparam ix54262z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix56256z17675 (.sumout (inc_d_4_), .cout (nx56256z1), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[4])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx56256z2), .sharein (1'b0)) ;
                         defparam ix56256z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix56256z17674 (.sumout (inc_d_5_), .cout (nx58250z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[5])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx56256z1), .sharein (1'b0)) ;
                         defparam ix56256z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix58250z17675 (.sumout (inc_d_6_), .cout (nx58250z1), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_col[6])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx58250z2), .sharein (1'b0)) ;
                         defparam ix58250z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix58250z17674 (.sumout (inc_d_7_), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_col[7]), .datae (1'b1)
                         , .dataf (GND), .datag (1'b1), .cin (nx58250z1), .sharein (
                         1'b0)) ;
                         defparam ix58250z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix12707z17675 (.sumout (inc_d_0__dup_1994), .cout (
                         nx12707z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[0]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (PWR), .sharein (1'b0)) ;
                         defparam ix12707z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix12707z17674 (.sumout (inc_d_1__dup_1995), .cout (
                         nx8437z3), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[1]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx12707z1), .sharein (1'b0)) ;
                         defparam ix12707z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix8437z17675 (.sumout (inc_d_2__dup_1996), .cout (
                         nx8437z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[2]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx8437z3), .sharein (1'b0)) ;
                         defparam ix8437z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix8437z17674 (.sumout (inc_d_3__dup_1997), .cout (
                         nx35955z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[3]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx8437z2), .sharein (1'b0)) ;
                         defparam ix8437z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix35955z17675 (.sumout (inc_d_4__dup_1998), .cout (
                         nx35955z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[4]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx35955z2), .sharein (1'b0)) ;
                         defparam ix35955z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix35955z17674 (.sumout (inc_d_5__dup_1999), .cout (
                         nx50725z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[5]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx35955z1), .sharein (1'b0)) ;
                         defparam ix35955z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix50725z17675 (.sumout (inc_d_6__dup_2000), .cout (
                         nx50725z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (o_row[6]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx50725z2), .sharein (1'b0)) ;
                         defparam ix50725z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix50725z17674 (.sumout (inc_d_7__dup_2001), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (o_row[7])
                         , .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx50725z1), .sharein (1'b0)) ;
                         defparam ix50725z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17695 (.sumout (r2_14n0r1[0]), .cout (
                         nx7245z8), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[0]), .datae (1'b1), .dataf (i4[0]), .datag (
                         1'b1), .cin (GND), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17695.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17692 (.sumout (r2_14n0r1[1]), .cout (
                         nx7245z7), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[1]), .datae (1'b1), .dataf (i4[1]), .datag (
                         1'b1), .cin (nx7245z8), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17692.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17689 (.sumout (r2_14n0r1[2]), .cout (
                         nx7245z6), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[2]), .datae (1'b1), .dataf (i4[2]), .datag (
                         1'b1), .cin (nx7245z7), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17689.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17686 (.sumout (r2_14n0r1[3]), .cout (
                         nx7245z5), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[3]), .datae (1'b1), .dataf (i4[3]), .datag (
                         1'b1), .cin (nx7245z6), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17686.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17683 (.sumout (r2_14n0r1[4]), .cout (
                         nx7245z4), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[4]), .datae (1'b1), .dataf (i4[4]), .datag (
                         1'b1), .cin (nx7245z5), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17683.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17680 (.sumout (r2_14n0r1[5]), .cout (
                         nx7245z3), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[5]), .datae (1'b1), .dataf (i4[5]), .datag (
                         1'b1), .cin (nx7245z4), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17677 (.sumout (r2_14n0r1[6]), .cout (
                         nx7245z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[6]), .datae (1'b1), .dataf (i4[6]), .datag (
                         1'b1), .cin (nx7245z3), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17677.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix7245z17674 (.sumout (r2_14n0r1[7]), .cout (
                         nx7245z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (i3[7]), .datae (1'b1), .dataf (i4[7]), .datag (
                         1'b1), .cin (nx7245z2), .sharein (1'b0)) ;
                         defparam r2_add8_14i1_ix7245z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17682 (.sumout (r4_16n0r1[0]), .cout (
                         nx40514z8), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[0]), .datae (1'b1), .dataf (r2[0]), .datag (
                         1'b1), .cin (GND), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17682.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17681 (.sumout (r4_16n0r1[1]), .cout (
                         nx40514z7), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[1]), .datae (1'b1), .dataf (r2[1]), .datag (
                         1'b1), .cin (nx40514z8), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17681.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17680 (.sumout (r4_16n0r1[2]), .cout (
                         nx40514z6), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[2]), .datae (1'b1), .dataf (r2[2]), .datag (
                         1'b1), .cin (nx40514z7), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17679 (.sumout (r4_16n0r1[3]), .cout (
                         nx40514z5), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[3]), .datae (1'b1), .dataf (r2[3]), .datag (
                         1'b1), .cin (nx40514z6), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17679.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17678 (.sumout (r4_16n0r1[4]), .cout (
                         nx40514z4), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[4]), .datae (1'b1), .dataf (r2[4]), .datag (
                         1'b1), .cin (nx40514z5), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17678.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17677 (.sumout (r4_16n0r1[5]), .cout (
                         nx40514z3), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[5]), .datae (1'b1), .dataf (r2[5]), .datag (
                         1'b1), .cin (nx40514z4), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17677.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17676 (.sumout (r4_16n0r1[6]), .cout (
                         nx40514z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[6]), .datae (1'b1), .dataf (r2[6]), .datag (
                         1'b1), .cin (nx40514z3), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17675 (.sumout (r4_16n0r1[7]), .cout (
                         nx40514z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r1_val[7]), .datae (1'b1), .dataf (r2[7]), .datag (
                         1'b1), .cin (nx40514z2), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix40514z17674 (.sumout (r4_16n0r1[8]), .cout (
                         nx39033z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (GND), .datae (1'b1), .dataf (r2[8]), .datag (
                         1'b1), .cin (nx40514z1), .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix40514z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r4_add9_16i1_ix109_buf (.sumout (r4_16n0r1[9]), .dataa (
                         1'b1), .datab (1'b1), .datac (GND), .datad (1'b1), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx39033z1), 
                         .sharein (1'b0)) ;
                         defparam r4_add9_16i1_ix109_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17684 (.sumout (r6_18n0r1[1]), .cout (
                         nx20432z10), .dataa (r3[1]), .datab (1'b1), .datac (
                         1'b1), .datad (r3[0]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (GND), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17684.lut_mask = 64'h000055550000ff00;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17683 (.sumout (r6_18n0r1[2]), .cout (
                         nx20432z9), .dataa (r3[1]), .datab (1'b1), .datac (1'b1
                         ), .datad (1'b1), .datae (1'b1), .dataf (r3[2]), .datag (
                         1'b1), .cin (nx20432z10), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17683.lut_mask = 64'h000000ff0000aaaa;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17682 (.sumout (r6_18n0r1[3]), .cout (
                         nx20432z8), .dataa (r3[3]), .datab (1'b1), .datac (1'b1
                         ), .datad (r3[2]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx20432z9), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17682.lut_mask = 64'h000055550000ff00;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17681 (.sumout (r6_18n0r1[4]), .cout (
                         nx20432z7), .dataa (r3[3]), .datab (1'b1), .datac (1'b1
                         ), .datad (1'b1), .datae (1'b1), .dataf (r3[4]), .datag (
                         1'b1), .cin (nx20432z8), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17681.lut_mask = 64'h000000ff0000aaaa;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17680 (.sumout (r6_18n0r1[5]), .cout (
                         nx20432z6), .dataa (r3[5]), .datab (1'b1), .datac (1'b1
                         ), .datad (r3[4]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx20432z7), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17680.lut_mask = 64'h000055550000ff00;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17679 (.sumout (r6_18n0r1[6]), .cout (
                         nx20432z5), .dataa (r3[5]), .datab (1'b1), .datac (1'b1
                         ), .datad (1'b1), .datae (1'b1), .dataf (r3[6]), .datag (
                         1'b1), .cin (nx20432z6), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17679.lut_mask = 64'h000000ff0000aaaa;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17678 (.sumout (r6_18n0r1[7]), .cout (
                         nx20432z4), .dataa (r3[7]), .datab (1'b1), .datac (1'b1
                         ), .datad (r3[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx20432z5), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17678.lut_mask = 64'h000055550000ff00;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17677 (.sumout (r6_18n0r1[8]), .cout (
                         nx20432z3), .dataa (r3[7]), .datab (1'b1), .datac (1'b1
                         ), .datad (1'b1), .datae (1'b1), .dataf (r3[8]), .datag (
                         1'b1), .cin (nx20432z4), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17677.lut_mask = 64'h000000ff0000aaaa;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17676 (.sumout (r6_18n0r1[9]), .cout (
                         nx20432z2), .dataa (r3[9]), .datab (1'b1), .datac (1'b1
                         ), .datad (r3[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx20432z3), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17676.lut_mask = 64'h000055550000ff00;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17675 (.sumout (r6_18n0r1[10]), .cout (
                         nx20432z1), .dataa (r3[9]), .datab (1'b1), .datac (1'b1
                         ), .datad (1'b1), .datae (1'b1), .dataf (r3[10]), .datag (
                         1'b1), .cin (nx20432z2), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17675.lut_mask = 64'h000000ff0000aaaa;
    stratixiv_lcell_comb r6_add11_18i1_ix20432z17674 (.sumout (r6_18n0r1[11]), .cout (
                         nx25867z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r3[10]), .datae (1'b1), .dataf (r3[11]), .datag (
                         1'b1), .cin (nx20432z1), .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix20432z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r6_add11_18i1_ix124_buf (.sumout (r6_18n0r1[12]), .dataa (
                         1'b1), .datab (1'b1), .datac (GND), .datad (1'b1), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx25867z1), 
                         .sharein (1'b0)) ;
                         defparam r6_add11_18i1_ix124_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17694 (.cout (nx22789z20), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (GND), .datae (
                         1'b1), .dataf (nx22789z21), .datag (1'b1), .cin (
                         NOT_r6_0_), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17694.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17692 (.cout (nx22789z18), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (GND), .datae (
                         1'b1), .dataf (nx22789z19), .datag (1'b1), .cin (
                         nx22789z20), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17692.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17690 (.cout (nx22789z16), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (r5_val[0])
                         , .datae (1'b1), .dataf (nx22789z17), .datag (1'b1), .cin (
                         nx22789z18), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17690.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17688 (.cout (nx22789z14), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (r5_val[1])
                         , .datae (1'b1), .dataf (nx22789z15), .datag (1'b1), .cin (
                         nx22789z16), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17688.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17686 (.cout (nx22789z12), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (r5_val[2])
                         , .datae (1'b1), .dataf (nx22789z13), .datag (1'b1), .cin (
                         nx22789z14), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17686.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17684 (.cout (nx22789z10), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (r5_val[3])
                         , .datae (1'b1), .dataf (nx22789z11), .datag (1'b1), .cin (
                         nx22789z12), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17684.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17682 (.sumout (r7_19n0r1_7_), .cout (
                         nx22789z8), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r5_val[4]), .datae (1'b1), .dataf (nx22789z9)
                         , .datag (1'b1), .cin (nx22789z10), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17682.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17680 (.sumout (r7_19n0r1_8_), .cout (
                         nx22789z6), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r5_val[5]), .datae (1'b1), .dataf (nx22789z7)
                         , .datag (1'b1), .cin (nx22789z8), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17678 (.sumout (r7_19n0r1_9_), .cout (
                         nx22789z4), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r5_val[6]), .datae (1'b1), .dataf (nx22789z5)
                         , .datag (1'b1), .cin (nx22789z6), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17678.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17676 (.sumout (r7_19n0r1_10_), .cout (
                         nx22789z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r5_val[7]), .datae (1'b1), .dataf (nx22789z3)
                         , .datag (1'b1), .cin (nx22789z4), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix22789z17674 (.sumout (r7_19n0r1_11_), .cout (
                         nx21792z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r5_val[8]), .datae (1'b1), .dataf (nx22789z1)
                         , .datag (1'b1), .cin (nx22789z2), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix22789z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix21792z17674 (.sumout (r7_19n0r1_12_), .cout (
                         nx24573z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (r5_val[9]), .datae (1'b1), .dataf (nx21792z1)
                         , .datag (1'b1), .cin (nx21792z2), .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix21792z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb r7_sub13_19i1_ix123_buf (.sumout (nx20795z1), .dataa (
                         1'b1), .datab (1'b1), .datac (GND), .datad (1'b1), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx24573z1), 
                         .sharein (1'b0)) ;
                         defparam r7_sub13_19i1_ix123_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17684 (.sumout (
                         r3_15n1ss1[0]), .cout (nx30696z11), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[0]), .datae (1'b1), .dataf (
                         r3[0]), .datag (1'b1), .cin (GND), .sharein (1'b0)) ;
                         defparam ix1363_modgen_add_3_ix30696z17684.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17683 (.sumout (
                         r3_15n1ss1[1]), .cout (nx30696z10), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[1]), .datae (1'b1), .dataf (
                         r3[1]), .datag (1'b1), .cin (nx30696z11), .sharein (
                         1'b0)) ;
                         defparam ix1363_modgen_add_3_ix30696z17683.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17682 (.sumout (
                         r3_15n1ss1[2]), .cout (nx30696z9), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[2]), .datae (1'b1), .dataf (
                         r3[2]), .datag (1'b1), .cin (nx30696z10), .sharein (
                         1'b0)) ;
                         defparam ix1363_modgen_add_3_ix30696z17682.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17681 (.sumout (
                         r3_15n1ss1[3]), .cout (nx30696z8), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[3]), .datae (1'b1), .dataf (
                         r3[3]), .datag (1'b1), .cin (nx30696z9), .sharein (1'b0
                         )) ;
                         defparam ix1363_modgen_add_3_ix30696z17681.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17680 (.sumout (
                         r3_15n1ss1[4]), .cout (nx30696z7), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[4]), .datae (1'b1), .dataf (
                         r3[4]), .datag (1'b1), .cin (nx30696z8), .sharein (1'b0
                         )) ;
                         defparam ix1363_modgen_add_3_ix30696z17680.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17679 (.sumout (
                         r3_15n1ss1[5]), .cout (nx30696z6), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[5]), .datae (1'b1), .dataf (
                         r3[5]), .datag (1'b1), .cin (nx30696z7), .sharein (1'b0
                         )) ;
                         defparam ix1363_modgen_add_3_ix30696z17679.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17678 (.sumout (
                         r3_15n1ss1[6]), .cout (nx30696z5), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[6]), .datae (1'b1), .dataf (
                         r3[6]), .datag (1'b1), .cin (nx30696z6), .sharein (1'b0
                         )) ;
                         defparam ix1363_modgen_add_3_ix30696z17678.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17677 (.sumout (
                         r3_15n1ss1[7]), .cout (nx30696z4), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[7]), .datae (1'b1), .dataf (
                         r3[7]), .datag (1'b1), .cin (nx30696z5), .sharein (1'b0
                         )) ;
                         defparam ix1363_modgen_add_3_ix30696z17677.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17676 (.sumout (
                         r3_15n1ss1[8]), .cout (nx30696z3), .dataa (v[1]), .datab (
                         1'b1), .datac (1'b1), .datad (r2[8]), .datae (1'b1), .dataf (
                         r3[8]), .datag (1'b1), .cin (nx30696z4), .sharein (1'b0
                         )) ;
                         defparam ix1363_modgen_add_3_ix30696z17676.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17675 (.sumout (nx39324z1)
                         , .cout (nx30696z2), .dataa (v[1]), .datab (1'b1), .datac (
                         1'b1), .datad (GND), .datae (1'b1), .dataf (r3[9]), .datag (
                         1'b1), .cin (nx30696z3), .sharein (1'b0)) ;
                         defparam ix1363_modgen_add_3_ix30696z17675.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix30696z17674 (.sumout (nx30696z1)
                         , .cout (nx29699z2), .dataa (v[1]), .datab (1'b1), .datac (
                         1'b1), .datad (GND), .datae (1'b1), .dataf (r3[10]), .datag (
                         1'b1), .cin (nx30696z2), .sharein (1'b0)) ;
                         defparam ix1363_modgen_add_3_ix30696z17674.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb ix1363_modgen_add_3_ix29699z17674 (.sumout (nx29699z1)
                         , .dataa (v[1]), .datab (1'b1), .datac (1'b1), .datad (
                         GND), .datae (1'b1), .dataf (r3[11]), .datag (1'b1), .cin (
                         nx29699z2), .sharein (1'b0)) ;
                         defparam ix1363_modgen_add_3_ix29699z17674.lut_mask = 64'h0000aaff0000ff00;
    stratixiv_lcell_comb r2_add8_14i1_ix98_buf (.sumout (r2_14n0r1[8]), .dataa (
                         1'b1), .datab (1'b1), .datac (GND), .datad (1'b1), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx7245z1), .sharein (
                         1'b0)) ;
                         defparam r2_add8_14i1_ix98_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb ix7245z17675 (.combout (i3[7]), .dataa (r_f[7]), .datab (
                         r_d[7]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[7]), .datag (r_a[7]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17675.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17675.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17678 (.combout (i3[6]), .dataa (r_f[6]), .datab (
                         r_d[6]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[6]), .datag (r_a[6]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17678.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17678.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17681 (.combout (i3[5]), .dataa (r_f[5]), .datab (
                         r_d[5]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[5]), .datag (r_a[5]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17681.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17681.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17684 (.combout (i3[4]), .dataa (r_f[4]), .datab (
                         r_d[4]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[4]), .datag (r_a[4]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17684.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17684.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17687 (.combout (i3[3]), .dataa (r_f[3]), .datab (
                         r_d[3]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[3]), .datag (r_a[3]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17687.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17687.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17690 (.combout (i3[2]), .dataa (r_f[2]), .datab (
                         r_d[2]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[2]), .datag (r_a[2]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17690.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17690.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17693 (.combout (i3[1]), .dataa (r_f[1]), .datab (
                         r_d[1]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[1]), .datag (r_a[1]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17693.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17693.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17696 (.combout (i3[0]), .dataa (r_f[0]), .datab (
                         r_d[0]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_b[0]), .datag (r_a[0]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17696.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17696.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17676 (.combout (i4[7]), .dataa (r_g[7]), .datab (
                         r_e[7]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[7]), .datag (r_h[7]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17676.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17676.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17679 (.combout (i4[6]), .dataa (r_g[6]), .datab (
                         r_e[6]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[6]), .datag (r_h[6]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17679.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17679.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17682 (.combout (i4[5]), .dataa (r_g[5]), .datab (
                         r_e[5]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[5]), .datag (r_h[5]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17682.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17682.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17685 (.combout (i4[4]), .dataa (r_g[4]), .datab (
                         r_e[4]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[4]), .datag (r_h[4]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17685.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17685.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17688 (.combout (i4[3]), .dataa (r_g[3]), .datab (
                         r_e[3]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[3]), .datag (r_h[3]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17688.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17688.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17691 (.combout (i4[2]), .dataa (r_g[2]), .datab (
                         r_e[2]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[2]), .datag (r_h[2]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17691.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17691.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17694 (.combout (i4[1]), .dataa (r_g[1]), .datab (
                         r_e[1]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[1]), .datag (r_h[1]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17694.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17694.extended_lut = "on";
    stratixiv_lcell_comb ix7245z17697 (.combout (i4[0]), .dataa (r_g[0]), .datab (
                         r_e[0]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_c[0]), .datag (r_h[0]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix7245z17697.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix7245z17697.extended_lut = "on";
    stratixiv_lcell_comb ix40462z17676 (.combout (i1_val[7]), .dataa (r_h[7]), .datab (
                         r_f[7]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[7]), .datag (r_b[7]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix40462z17676.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix40462z17676.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17679 (.combout (i1_val[6]), .dataa (r_h[6]), .datab (
                         r_f[6]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[6]), .datag (r_b[6]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17679.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17679.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17677 (.combout (i1_val[5]), .dataa (r_h[5]), .datab (
                         r_f[5]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[5]), .datag (r_b[5]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17677.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17677.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17692 (.combout (i1_val[4]), .dataa (r_h[4]), .datab (
                         r_f[4]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[4]), .datag (r_b[4]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17692.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17692.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17682 (.combout (i1_val[3]), .dataa (r_h[3]), .datab (
                         r_f[3]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[3]), .datag (r_b[3]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17682.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17682.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17690 (.combout (i1_val[2]), .dataa (r_h[2]), .datab (
                         r_f[2]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[2]), .datag (r_b[2]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17690.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17690.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17687 (.combout (i1_val[1]), .dataa (r_h[1]), .datab (
                         r_f[1]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[1]), .datag (r_b[1]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17687.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17687.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17688 (.combout (i1_val[0]), .dataa (r_h[0]), .datab (
                         r_f[0]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_d[0]), .datag (r_b[0]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17688.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17688.extended_lut = "on";
    stratixiv_lcell_comb ix40462z17675 (.combout (i2_val[7]), .dataa (r_e[7]), .datab (
                         r_c[7]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[7]), .datag (r_g[7]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix40462z17675.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix40462z17675.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17680 (.combout (i2_val[6]), .dataa (r_e[6]), .datab (
                         r_c[6]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[6]), .datag (r_g[6]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17680.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17680.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17676 (.combout (i2_val[5]), .dataa (r_e[5]), .datab (
                         r_c[5]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[5]), .datag (r_g[5]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17676.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17676.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17683 (.combout (i2_val[4]), .dataa (r_e[4]), .datab (
                         r_c[4]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[4]), .datag (r_g[4]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17683.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17683.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17691 (.combout (i2_val[3]), .dataa (r_e[3]), .datab (
                         r_c[3]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[3]), .datag (r_g[3]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17691.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17691.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17689 (.combout (i2_val[2]), .dataa (r_e[2]), .datab (
                         r_c[2]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[2]), .datag (r_g[2]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17689.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17689.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17686 (.combout (i2_val[1]), .dataa (r_e[1]), .datab (
                         r_c[1]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[1]), .datag (r_g[1]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17686.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17686.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17685 (.combout (i2_val[0]), .dataa (r_e[0]), .datab (
                         r_c[0]), .datac (v[1]), .datad (v[2]), .datae (i_valid)
                         , .dataf (r_a[0]), .datag (r_g[0]), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17685.lut_mask = 64'hf0f0fcfaf0f00c0a;
                         defparam ix41459z17685.extended_lut = "on";
    stratixiv_lcell_comb ix41459z17675 (.combout (nx41459z2), .dataa (i1_val[7])
                         , .datab (i2_val[7]), .datac (i2_val[5]), .datad (
                         i1_val[5]), .datae (nx41459z3), .dataf (nx41459z4), .datag (
                         i1_val[6]), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix41459z17675.lut_mask = 64'hb2b2bb2bb2b22b22;
                         defparam ix41459z17675.extended_lut = "on";
    dffeas reg_r_d_7_ (.q (r_d[7]), .d (nx1550z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[7]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_6_ (.q (r_d[6]), .d (nx2547z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[6]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_5_ (.q (r_d[5]), .d (nx3544z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[5]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_4_ (.q (r_d[4]), .d (nx4541z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[4]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_3_ (.q (r_d[3]), .d (nx5538z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[3]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_2_ (.q (r_d[2]), .d (nx6535z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[2]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_1_ (.q (r_d[1]), .d (nx7532z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[1]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_d_0_ (.q (r_d[0]), .d (nx8529z1), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_2_[0]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_c_7_ (.q (r_c[7]), .d (nx15288z2), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[7]), .sclr (
           1'b0), .sload (wr_en_0__repl)) ;
    dffeas reg_r_c_6_ (.q (r_c[6]), .d (nx14291z2), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[6]), .sclr (
           1'b0), .sload (wr_en_0__repl)) ;
    dffeas reg_r_c_5_ (.q (r_c[5]), .d (nx13294z2), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[5]), .sclr (
           1'b0), .sload (wr_en_0__repl)) ;
    dffeas reg_r_c_4_ (.q (r_c[4]), .d (nx12297z2), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[4]), .sclr (
           1'b0), .sload (wr_en_0__repl)) ;
    dffeas reg_r_c_3_ (.q (r_c[3]), .d (nx11300z2), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[3]), .sclr (
           1'b0), .sload (wr_en_0__repl)) ;
    dffeas reg_r_c_2_ (.q (r_c[2]), .d (nx10303z2), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[2]), .sclr (
           1'b0), .sload (wr_en_0__repl)) ;
    dffeas reg_r_c_1_ (.q (r_c[1]), .d (nx9306z2), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[1]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_c_0_ (.q (r_c[0]), .d (nx8309z2), .clk (clk), .ena (nx2532_repl
           ), .clrn (PWR), .prn (PWR), .asdata (M_out_1_[0]), .sclr (1'b0), .sload (
           wr_en_0__repl)) ;
    dffeas reg_r_h_7_ (.q (r_h[7]), .d (M_b[7]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[7]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_6_ (.q (r_h[6]), .d (M_b[6]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[6]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_5_ (.q (r_h[5]), .d (M_b[5]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[5]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_4_ (.q (r_h[4]), .d (M_b[4]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[4]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_3_ (.q (r_h[3]), .d (M_b[3]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[3]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_2_ (.q (r_h[2]), .d (M_b[2]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[2]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_1_ (.q (r_h[1]), .d (M_b[1]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[1]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r_h_0_ (.q (r_h[0]), .d (M_b[0]), .clk (clk), .ena (nx23707z2), .clrn (
           PWR), .prn (PWR), .asdata (r_i[0]), .sclr (1'b0), .sload (nx35226z1)
           ) ;
    dffeas reg_r1_val_7_ (.q (r1_val[7]), .d (nx40462z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_6_ (.q (r1_val[6]), .d (nx41459z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_5_ (.q (r1_val[5]), .d (nx42456z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_4_ (.q (r1_val[4]), .d (nx43453z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_3_ (.q (r1_val[3]), .d (nx44450z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_2_ (.q (r1_val[2]), .d (nx45447z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_1_ (.q (r1_val[1]), .d (nx46444z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r1_val_0_ (.q (r1_val[0]), .d (nx47441z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_7_ (.q (r_f[7]), .d (nx47148z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_7_ (.q (r_i[7]), .d (nx21891z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_6_ (.q (r_f[6]), .d (nx46151z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_6_ (.q (r_i[6]), .d (nx20894z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_5_ (.q (r_f[5]), .d (nx45154z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_5_ (.q (r_i[5]), .d (nx19897z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_4_ (.q (r_f[4]), .d (nx44157z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_4_ (.q (r_i[4]), .d (nx18900z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_3_ (.q (r_f[3]), .d (nx43160z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_3_ (.q (r_i[3]), .d (nx17903z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_2_ (.q (r_f[2]), .d (nx42163z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_2_ (.q (r_i[2]), .d (nx16906z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_1_ (.q (r_f[1]), .d (nx41166z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_1_ (.q (r_i[1]), .d (nx15909z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_f_0_ (.q (r_f[0]), .d (nx40169z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_i_0_ (.q (r_i[0]), .d (nx14912z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_7_ (.q (r_b[7]), .d (nx15288z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_6_ (.q (r_b[6]), .d (nx14291z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_5_ (.q (r_b[5]), .d (nx13294z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_4_ (.q (r_b[4]), .d (nx12297z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_3_ (.q (r_b[3]), .d (nx11300z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_2_ (.q (r_b[2]), .d (nx10303z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_1_ (.q (r_b[1]), .d (nx9306z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_b_0_ (.q (r_b[0]), .d (nx8309z1), .clk (clk), .ena (nx47148z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_7_ (.q (r_g[7]), .d (nx26807z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_7_ (.q (r_a[7]), .d (nx23707z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_6_ (.q (r_g[6]), .d (nx27804z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_6_ (.q (r_a[6]), .d (nx22710z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_5_ (.q (r_g[5]), .d (nx28801z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_5_ (.q (r_a[5]), .d (nx21713z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_4_ (.q (r_g[4]), .d (nx29798z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_4_ (.q (r_a[4]), .d (nx20716z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_3_ (.q (r_g[3]), .d (nx30795z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_3_ (.q (r_a[3]), .d (nx19719z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_2_ (.q (r_g[2]), .d (nx31792z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_2_ (.q (r_a[2]), .d (nx18722z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_1_ (.q (r_g[1]), .d (nx32789z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_1_ (.q (r_a[1]), .d (nx17725z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_g_0_ (.q (r_g[0]), .d (nx33786z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r_a_0_ (.q (r_a[0]), .d (nx16728z1), .clk (clk), .ena (nx23707z2)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_o_mode_1_ (.q (o_mode[1]), .d (nx44218z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_o_mode_0_ (.q (nx34903z4), .d (nx43221z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (NOT_GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_o_dir_2_ (.q (o_dir[2]), .d (nx33317z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_o_dir_1_ (.q (o_dir[1]), .d (nx32320z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_o_dir_0_ (.q (o_dir[0]), .d (nx31323z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_q_7_ (.q (o_col[7]), .d (inc_d_7_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_6_ (.q (o_col[6]), .d (inc_d_6_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_5_ (.q (o_col[5]), .d (inc_d_5_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_4_ (.q (o_col[4]), .d (inc_d_4_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_3_ (.q (o_col[3]), .d (inc_d_3_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_2_ (.q (o_col[2]), .d (inc_d_2_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_1_ (.q (o_col[1]), .d (inc_d_1_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_0_ (.q (o_col[0]), .d (inc_d_0_), .clk (clk), .ena (nx51271z1)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_q_7__dup_0 (.q (o_row[7]), .d (inc_d_7__dup_2001), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_6__dup_1 (.q (o_row[6]), .d (inc_d_6__dup_2000), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_5__dup_2 (.q (o_row[5]), .d (inc_d_5__dup_1999), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_4__dup_3 (.q (o_row[4]), .d (inc_d_4__dup_1998), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_3__dup_4 (.q (o_row[3]), .d (inc_d_3__dup_1997), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_2__dup_5 (.q (o_row[2]), .d (inc_d_2__dup_1996), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_1__dup_6 (.q (o_row[1]), .d (inc_d_1__dup_1995), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_q_0__dup_7 (.q (o_row[0]), .d (inc_d_0__dup_1994), .clk (clk), .ena (
           nx34903z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (
           GND)) ;
    dffeas reg_v_7_ (.q (v[7]), .d (v[6]), .clk (clk), .ena (PWR), .clrn (PWR), 
           .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_v_6_ (.q (v[6]), .d (v[5]), .clk (clk), .ena (PWR), .clrn (PWR), 
           .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_v_5_ (.q (v[5]), .d (v[4]), .clk (clk), .ena (PWR), .clrn (PWR), 
           .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_v_4_ (.q (v[4]), .d (v[3]), .clk (clk), .ena (PWR), .clrn (PWR), 
           .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_v_3_ (.q (v[3]), .d (v[2]), .clk (clk), .ena (PWR), .clrn (PWR), 
           .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_v_2_ (.q (v[2]), .d (v[1]), .clk (clk), .ena (PWR), .clrn (PWR), 
           .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_v_1_ (.q (v[1]), .d (nx10173z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_r3_11_ (.q (r3[11]), .d (nx29699z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_10_ (.q (r3[10]), .d (nx30696z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_9_ (.q (r3[9]), .d (nx39324z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r1_ty_1_ (.q (r1_ty[1]), .d (nx42054z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_wr_en_2_ (.q (wr_en[2]), .d (nx26839z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_wr_en_1_ (.q (wr_en[1]), .d (nx25842z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    stratixiv_lcell_comb ix35226z17674 (.combout (M_b[7]), .dataa (1'b1), .datab (
                         M_out_1_[7]), .datac (M_out_2_[7]), .datad (M_out_0_[7]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix35226z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix36223z17674 (.combout (M_b[6]), .dataa (1'b1), .datab (
                         M_out_1_[6]), .datac (M_out_2_[6]), .datad (M_out_0_[6]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix36223z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix37220z17674 (.combout (M_b[5]), .dataa (1'b1), .datab (
                         M_out_1_[5]), .datac (M_out_2_[5]), .datad (M_out_0_[5]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix37220z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix38217z17674 (.combout (M_b[4]), .dataa (1'b1), .datab (
                         M_out_1_[4]), .datac (M_out_2_[4]), .datad (M_out_0_[4]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix38217z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix39214z17674 (.combout (M_b[3]), .dataa (1'b1), .datab (
                         M_out_1_[3]), .datac (M_out_2_[3]), .datad (M_out_0_[3]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix39214z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix40211z17674 (.combout (M_b[2]), .dataa (1'b1), .datab (
                         M_out_1_[2]), .datac (M_out_2_[2]), .datad (M_out_0_[2]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix40211z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix41208z17674 (.combout (M_b[1]), .dataa (1'b1), .datab (
                         M_out_1_[1]), .datac (M_out_2_[1]), .datad (M_out_0_[1]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix41208z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix42205z17674 (.combout (M_b[0]), .dataa (1'b1), .datab (
                         M_out_1_[0]), .datac (M_out_2_[0]), .datad (M_out_0_[0]
                         ), .datae (wr_en[1]), .dataf (wr_en[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix42205z17674.lut_mask = 64'hf0f0f0f0ff00cccc;
    stratixiv_lcell_comb ix10173z17675 (.combout (nx10173z2), .dataa (1'b1), .datab (
                         o_row[3]), .datac (nx10173z3), .datad (o_row[1]), .datae (
                         o_row[2]), .dataf (i_valid), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix10173z17675.lut_mask = 64'h00000003ffffffff;
    stratixiv_lcell_comb ix23707z17675 (.combout (nx23707z2), .dataa (1'b1), .datab (
                         1'b1), .datac (nx10173z2), .datad (nx10173z4), .datae (
                         v[3]), .dataf (o_col[0]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix23707z17675.lut_mask = 64'hf0f00000f0ff000f;
    stratixiv_lcell_comb ix47148z17675 (.combout (nx47148z2), .dataa (1'b1), .datab (
                         1'b1), .datac (nx10173z2), .datad (nx10173z4), .datae (
                         v[3]), .dataf (o_col[0]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix47148z17675.lut_mask = 64'hf0ff000ff0f00000;
    stratixiv_lcell_comb ix62709z17674 (.combout (nx62709z1), .dataa (1'b1), .datab (
                         r4_val[9]), .datac (v[2]), .datad (nx62709z2), .datae (
                         r5_val[9]), .dataf (nx62709z7), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17674.lut_mask = 64'hfffffffff0fffcff;
    stratixiv_lcell_comb ix1448z17674 (.combout (nx1448z1), .dataa (1'b1), .datab (
                         r7_val_11_), .datac (r7_val_12_), .datad (nx1448z2), .datae (
                         r7_val_10_), .dataf (r7_val_13_), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1448z17674.lut_mask = 64'h00000000fffffffc;
    stratixiv_lcell_comb ix41057z17674 (.combout (nx41057z1), .dataa (1'b1), .datab (
                         1'b1), .datac (v[1]), .datad (nx41459z2), .datae (
                         i_valid), .dataf (v[2]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41057z17674.lut_mask = 64'h00ff0f0000ff0f0f;
    stratixiv_lcell_comb ix10173z17677 (.combout (nx10173z4), .dataa (1'b1), .datab (
                         1'b1), .datac (o_col[7]), .datad (nx10173z5), .datae (
                         o_col[1]), .dataf (o_col[6]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix10173z17677.lut_mask = 64'hfffffffffffffff0;
    stratixiv_lcell_comb ix43221z17675 (.combout (nx43221z2), .dataa (1'b1), .datab (
                         o_col[1]), .datac (o_col[3]), .datad (o_col[2]), .datae (
                         o_col[0]), .dataf (nx43221z3), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix43221z17675.lut_mask = 64'hffffffff3fffffff;
    stratixiv_lcell_comb ix34903z17675 (.combout (nx34903z2), .dataa (1'b1), .datab (
                         o_row[1]), .datac (o_row[3]), .datad (o_row[2]), .datae (
                         o_row[0]), .dataf (nx34903z3), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix34903z17675.lut_mask = 64'hffffffff3fffffff;
    stratixiv_lcell_comb ix26839z17674 (.combout (nx26839z1), .dataa (1'b1), .datab (
                         nx34903z2), .datac (wr_en[1]), .datad (nx43221z2), .datae (
                         i_valid), .dataf (wr_en[2]), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix26839z17674.lut_mask = 64'hfff3ffff00c00000;
    stratixiv_lcell_comb ix25842z17674 (.combout (nx25842z1), .dataa (1'b1), .datab (
                         nx34903z2), .datac (wr_en[0]), .datad (nx43221z2), .datae (
                         i_valid), .dataf (wr_en[1]), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix25842z17674.lut_mask = 64'hfff3ffff00c00000;
    stratixiv_lcell_comb ix24845z17674 (.combout (nx24845z1), .dataa (nx34903z2)
                         , .datab (nx43221z2), .datac (wr_en[2]), .datad (
                         wr_en[0]), .datae (i_valid), .dataf (reset), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix24845z17674.lut_mask = 64'hfffffffffd20ff00;
    stratixiv_lcell_comb ix8309z17675 (.combout (nx8309z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[0]), .datae (
                         M_out_2_[0]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix8309z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix9306z17675 (.combout (nx9306z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[1]), .datae (
                         M_out_2_[1]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix9306z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix10303z17675 (.combout (nx10303z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[2]), .datae (
                         M_out_2_[2]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix10303z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix11300z17675 (.combout (nx11300z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[3]), .datae (
                         M_out_2_[3]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix11300z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix12297z17675 (.combout (nx12297z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[4]), .datae (
                         M_out_2_[4]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix12297z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix13294z17675 (.combout (nx13294z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[5]), .datae (
                         M_out_2_[5]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix13294z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix14291z17675 (.combout (nx14291z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[6]), .datae (
                         M_out_2_[6]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix14291z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix15288z17675 (.combout (nx15288z2), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[7]), .datae (
                         M_out_2_[7]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix15288z17675.lut_mask = 64'hff0ff000ff00ff00;
    stratixiv_lcell_comb ix8529z17674 (.combout (nx8529z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[0]), .datae (
                         M_out_1_[0]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix8529z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix7532z17674 (.combout (nx7532z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[1]), .datae (
                         M_out_1_[1]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix7532z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix6535z17674 (.combout (nx6535z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[2]), .datae (
                         M_out_1_[2]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix6535z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix5538z17674 (.combout (nx5538z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[3]), .datae (
                         M_out_1_[3]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix5538z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix4541z17674 (.combout (nx4541z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[4]), .datae (
                         M_out_1_[4]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix4541z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix3544z17674 (.combout (nx3544z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[5]), .datae (
                         M_out_1_[5]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix3544z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix2547z17674 (.combout (nx2547z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[6]), .datae (
                         M_out_1_[6]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix2547z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix1550z17674 (.combout (nx1550z1), .dataa (1'b1), .datab (
                         1'b1), .datac (wr_en[0]), .datad (M_out_0_[7]), .datae (
                         M_out_1_[7]), .dataf (wr_en[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1550z17674.lut_mask = 64'hfff00f00ffff0000;
    stratixiv_lcell_comb ix47148z17674 (.combout (nx47148z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[7]), .dataf (r_e[7]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix47148z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix21891z17674 (.combout (nx21891z1), .dataa (1'b1), .datab (
                         nx1550z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[7]), .dataf (r_d[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix21891z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix46151z17674 (.combout (nx46151z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[6]), .dataf (r_e[6]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix46151z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix20894z17674 (.combout (nx20894z1), .dataa (1'b1), .datab (
                         nx2547z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[6]), .dataf (r_d[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix20894z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix45154z17674 (.combout (nx45154z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[5]), .dataf (r_e[5]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix45154z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix19897z17674 (.combout (nx19897z1), .dataa (1'b1), .datab (
                         nx3544z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[5]), .dataf (r_d[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix19897z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix44157z17674 (.combout (nx44157z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[4]), .dataf (r_e[4]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix44157z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix18900z17674 (.combout (nx18900z1), .dataa (1'b1), .datab (
                         nx4541z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[4]), .dataf (r_d[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix18900z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix43160z17674 (.combout (nx43160z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[3]), .dataf (r_e[3]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix43160z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix17903z17674 (.combout (nx17903z1), .dataa (1'b1), .datab (
                         nx5538z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[3]), .dataf (r_d[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix17903z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix42163z17674 (.combout (nx42163z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[2]), .dataf (r_e[2]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix42163z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix16906z17674 (.combout (nx16906z1), .dataa (1'b1), .datab (
                         nx6535z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[2]), .dataf (r_d[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix16906z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix41166z17674 (.combout (nx41166z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[1]), .dataf (r_e[1]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix41166z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix15909z17674 (.combout (nx15909z1), .dataa (1'b1), .datab (
                         nx7532z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[1]), .dataf (r_d[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix15909z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix40169z17674 (.combout (nx40169z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[0]), .dataf (r_e[0]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix40169z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix14912z17674 (.combout (nx14912z1), .dataa (1'b1), .datab (
                         nx8529z1), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_2_[0]), .dataf (r_d[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix14912z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix15288z17674 (.combout (nx15288z1), .dataa (1'b1), .datab (
                         nx15288z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[7]), .dataf (r_c[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix15288z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix14291z17674 (.combout (nx14291z1), .dataa (1'b1), .datab (
                         nx14291z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[6]), .dataf (r_c[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix14291z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix13294z17674 (.combout (nx13294z1), .dataa (1'b1), .datab (
                         nx13294z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[5]), .dataf (r_c[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix13294z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix12297z17674 (.combout (nx12297z1), .dataa (1'b1), .datab (
                         nx12297z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[4]), .dataf (r_c[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix12297z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix11300z17674 (.combout (nx11300z1), .dataa (1'b1), .datab (
                         nx11300z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[3]), .dataf (r_c[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix11300z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix10303z17674 (.combout (nx10303z1), .dataa (1'b1), .datab (
                         nx10303z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[2]), .dataf (r_c[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix10303z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix9306z17674 (.combout (nx9306z1), .dataa (1'b1), .datab (
                         nx9306z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[1]), .dataf (r_c[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix9306z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix8309z17674 (.combout (nx8309z1), .dataa (1'b1), .datab (
                         nx8309z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[0]), .dataf (r_c[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix8309z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix26807z17674 (.combout (nx26807z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[7]), .dataf (r_f[7]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix26807z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix23707z17674 (.combout (nx23707z1), .dataa (1'b1), .datab (
                         nx15288z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[7]), .dataf (r_b[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix23707z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix27804z17674 (.combout (nx27804z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[6]), .dataf (r_f[6]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix27804z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix22710z17674 (.combout (nx22710z1), .dataa (1'b1), .datab (
                         nx14291z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[6]), .dataf (r_b[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix22710z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix28801z17674 (.combout (nx28801z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[5]), .dataf (r_f[5]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix28801z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix21713z17674 (.combout (nx21713z1), .dataa (1'b1), .datab (
                         nx13294z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[5]), .dataf (r_b[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix21713z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix29798z17674 (.combout (nx29798z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[4]), .dataf (r_f[4]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix29798z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix20716z17674 (.combout (nx20716z1), .dataa (1'b1), .datab (
                         nx12297z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[4]), .dataf (r_b[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix20716z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix30795z17674 (.combout (nx30795z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[3]), .dataf (r_f[3]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix30795z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix19719z17674 (.combout (nx19719z1), .dataa (1'b1), .datab (
                         nx11300z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[3]), .dataf (r_b[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix19719z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix31792z17674 (.combout (nx31792z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[2]), .dataf (r_f[2]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix31792z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix18722z17674 (.combout (nx18722z1), .dataa (1'b1), .datab (
                         nx10303z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[2]), .dataf (r_b[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix18722z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix32789z17674 (.combout (nx32789z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[1]), .dataf (r_f[1]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix32789z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix17725z17674 (.combout (nx17725z1), .dataa (1'b1), .datab (
                         nx9306z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[1]), .dataf (r_b[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix17725z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix33786z17674 (.combout (nx33786z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx10173z2), .datae (
                         i_pixel[0]), .dataf (r_f[0]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix33786z17674.lut_mask = 64'hffffff0000ff0000;
    stratixiv_lcell_comb ix16728z17674 (.combout (nx16728z1), .dataa (1'b1), .datab (
                         nx8309z2), .datac (nx10173z2), .datad (wr_en[0]), .datae (
                         M_out_1_[0]), .dataf (r_b[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix16728z17674.lut_mask = 64'hfffcf0fc0f0c000c;
    stratixiv_lcell_comb ix43221z17674 (.combout (nx43221z1), .dataa (1'b1), .datab (
                         nx34903z2), .datac (i_valid), .datad (o_mode[1]), .datae (
                         nx43221z2), .dataf (nx34903z4), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix43221z17674.lut_mask = 64'h0f0f0f0f000f300f;
    stratixiv_lcell_comb ix44218z17674 (.combout (nx44218z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (i_valid), .datae (
                         nx34903z4), .dataf (o_mode[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix44218z17674.lut_mask = 64'hffffffffff00ffff;
    stratixiv_lcell_comb ix51271z17674 (.combout (nx51271z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (reset), .dataf (
                         i_valid), .datag (1'b1), .cin (1'b0), .sharein (1'b0)
                         ) ;
                         defparam ix51271z17674.lut_mask = 64'hffffffffffff0000;
    stratixiv_lcell_comb ix34903z17674 (.combout (nx34903z1), .dataa (nx34903z2)
                         , .datab (nx34903z4), .datac (nx43221z2), .datad (
                         o_mode[1]), .datae (i_valid), .dataf (reset), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix34903z17674.lut_mask = 64'hffffffff4e0a0000;
    stratixiv_lcell_comb ix41459z17678 (.combout (nx41459z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (i1_val[6])
                         , .dataf (i2_val[6]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix41459z17678.lut_mask = 64'h0000ffffffff0000;
    stratixiv_lcell_comb ix33317z17674 (.combout (nx33317z1), .dataa (1'b1), .datab (
                         1'b1), .datac (r7_val_12_), .datad (r7_ty[2]), .datae (
                         r7_val_13_), .dataf (nx33317z2), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix33317z17674.lut_mask = 64'h0000ff000000f000;
    stratixiv_lcell_comb ix32320z17674 (.combout (nx32320z1), .dataa (1'b1), .datab (
                         1'b1), .datac (r7_val_12_), .datad (r7_ty[1]), .datae (
                         r7_val_13_), .dataf (nx33317z2), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix32320z17674.lut_mask = 64'h0000ff000000f000;
    stratixiv_lcell_comb ix31323z17674 (.combout (nx31323z1), .dataa (1'b1), .datab (
                         1'b1), .datac (r7_val_12_), .datad (r7_ty[0]), .datae (
                         r7_val_13_), .dataf (nx33317z2), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix31323z17674.lut_mask = 64'h0000ff000000f000;
    stratixiv_lcell_comb ix10173z17674 (.combout (nx10173z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx10173z2)
                         , .dataf (nx10173z4), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix10173z17674.lut_mask = 64'h0000ffff00000000;
    stratixiv_lcell_comb ix42054z17674 (.combout (nx42054z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (v[1]), .datae (v[2]), .dataf (
                         i_valid), .datag (1'b1), .cin (1'b0), .sharein (1'b0)
                         ) ;
                         defparam ix42054z17674.lut_mask = 64'h00000000ff00ffff;
    stratixiv_lcell_comb ix62709z17677 (.combout (nx62709z4), .dataa (1'b1), .datab (
                         1'b1), .datac (r4_val[0]), .datad (r4_val[1]), .datae (
                         r5_val[1]), .dataf (r5_val[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17677.lut_mask = 64'h0000ff00f000fff0;
    stratixiv_lcell_comb ix62709z17679 (.combout (nx62709z6), .dataa (1'b1), .datab (
                         1'b1), .datac (r4_val[9]), .datad (r4_val[8]), .datae (
                         r5_val[8]), .dataf (r5_val[9]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17679.lut_mask = 64'h0fffff0ff0fffff0;
    stratixiv_lcell_comb ix62709z17681 (.combout (nx62709z8), .dataa (r4_val[9])
                         , .datab (r4_val[8]), .datac (r5_val[8]), .datad (
                         r5_val[9]), .datae (r5_val[7]), .dataf (r4_val[7]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17681.lut_mask = 64'h7dbeffffffff7dbe;
    stratixiv_lcell_comb ix62709z17678 (.combout (nx62709z5), .dataa (1'b1), .datab (
                         r4_val[7]), .datac (r5_val[6]), .datad (nx62709z6), .datae (
                         r5_val[7]), .dataf (r4_val[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17678.lut_mask = 64'hff3fffcffff3fffc;
    stratixiv_lcell_comb ix62709z17676 (.combout (nx62709z3), .dataa (1'b1), .datab (
                         r4_val[2]), .datac (r4_val[3]), .datad (r5_val[3]), .datae (
                         r5_val[2]), .dataf (nx62709z4), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17676.lut_mask = 64'hc0fcf0ff00f0c0fc;
    stratixiv_lcell_comb ix40462z17674 (.combout (nx40462z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (i2_val[7])
                         , .dataf (i1_val[7]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix40462z17674.lut_mask = 64'hffffffffffff0000;
    stratixiv_lcell_comb ix41459z17674 (.combout (nx41459z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx41459z2), .datae (
                         i1_val[6]), .dataf (i2_val[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41459z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix42456z17674 (.combout (nx42456z1), .dataa (nx41459z3)
                         , .datab (i2_val[5]), .datac (i2_val[7]), .datad (
                         i1_val[5]), .datae (i1_val[6]), .dataf (i1_val[7]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix42456z17674.lut_mask = 64'hff40dfc0cfc4cdcc;
    stratixiv_lcell_comb ix43453z17674 (.combout (nx43453z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx41459z2), .datae (
                         i1_val[4]), .dataf (i2_val[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix43453z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix44450z17674 (.combout (nx44450z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx41459z2), .datae (
                         i1_val[3]), .dataf (i2_val[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix44450z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix45447z17674 (.combout (nx45447z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx41459z2), .datae (
                         i1_val[2]), .dataf (i2_val[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix45447z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix46444z17674 (.combout (nx46444z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx41459z2), .datae (
                         i1_val[1]), .dataf (i2_val[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix46444z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix47441z17674 (.combout (nx47441z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx41459z2), .datae (
                         i1_val[0]), .dataf (i2_val[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix47441z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix62709z17675 (.combout (nx62709z2), .dataa (r4_val[4])
                         , .datab (r5_val[5]), .datac (nx62709z3), .datad (
                         r5_val[4]), .datae (r4_val[5]), .dataf (nx62709z5), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17675.lut_mask = 64'hffffffff7f37dfcd;
    stratixiv_lcell_comb ix62709z17680 (.combout (nx62709z7), .dataa (r5_val[6])
                         , .datab (r4_val[5]), .datac (r4_val[6]), .datad (
                         r5_val[5]), .datae (nx62709z8), .dataf (nx62709z9), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17680.lut_mask = 64'hffffffff000050d4;
    stratixiv_lcell_comb ix62709z17682 (.combout (nx62709z9), .dataa (r5_val[8])
                         , .datab (r5_val[9]), .datac (r4_val[8]), .datad (
                         r5_val[7]), .datae (r4_val[9]), .dataf (r4_val[7]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix62709z17682.lut_mask = 64'h40c4103140401010;
    stratixiv_lcell_comb ix33317z17675 (.combout (nx33317z2), .dataa (1'b1), .datab (
                         r7_val_8_), .datac (r7_val_11_), .datad (r7_val_10_), .datae (
                         r7_val_7_), .dataf (r7_val_9_), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix33317z17675.lut_mask = 64'hfffffffffffcfff0;
    stratixiv_lcell_comb ix1448z17675 (.combout (nx1448z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (r7_val_8_), .datae (
                         r7_val_7_), .dataf (r7_val_9_), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1448z17675.lut_mask = 64'hffffffffff000000;
    stratixiv_lcell_comb ix43221z17676 (.combout (nx43221z3), .dataa (1'b1), .datab (
                         1'b1), .datac (o_col[5]), .datad (o_col[7]), .datae (
                         o_col[6]), .dataf (o_col[4]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix43221z17676.lut_mask = 64'h0fffffffffffffff;
    stratixiv_lcell_comb ix34903z17676 (.combout (nx34903z3), .dataa (1'b1), .datab (
                         1'b1), .datac (o_row[5]), .datad (o_row[7]), .datae (
                         o_row[6]), .dataf (o_row[4]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix34903z17676.lut_mask = 64'h0fffffffffffffff;
    stratixiv_lcell_comb ix10173z17678 (.combout (nx10173z5), .dataa (1'b1), .datab (
                         1'b1), .datac (o_col[3]), .datad (o_col[5]), .datae (
                         o_col[4]), .dataf (o_col[2]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix10173z17678.lut_mask = 64'hfffffffffffffff0;
    stratixiv_lcell_comb ix10173z17676 (.combout (nx10173z3), .dataa (1'b1), .datab (
                         1'b1), .datac (o_row[5]), .datad (o_row[7]), .datae (
                         o_row[6]), .dataf (o_row[4]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix10173z17676.lut_mask = 64'hfffffffffffffff0;
    stratixiv_lcell_comb ix41459z17681 (.combout (nx41459z4), .dataa (1'b1), .datab (
                         i1_val[3]), .datac (i2_val[4]), .datad (nx41459z5), .datae (
                         i2_val[3]), .dataf (i1_val[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41459z17681.lut_mask = 64'hcf0fffcf0c000f0c;
    stratixiv_lcell_comb ix41459z17684 (.combout (nx41459z5), .dataa (i2_val[0])
                         , .datab (i2_val[1]), .datac (i1_val[1]), .datad (
                         i1_val[0]), .datae (i2_val[2]), .dataf (i1_val[2]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix41459z17684.lut_mask = 64'h7130ffff00007130;
    dffeas reg_r_e_7_ (.q (r_e[7]), .d (i_pixel[7]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_6_ (.q (r_e[6]), .d (i_pixel[6]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_5_ (.q (r_e[5]), .d (i_pixel[5]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_4_ (.q (r_e[4]), .d (i_pixel[4]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_3_ (.q (r_e[3]), .d (i_pixel[3]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_2_ (.q (r_e[2]), .d (i_pixel[2]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_1_ (.q (r_e[1]), .d (i_pixel[1]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r_e_0_ (.q (r_e[0]), .d (i_pixel[0]), .clk (clk), .ena (
           nx2532_repl), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_r1_ty_2_ (.q (r1_ty[2]), .d (nx41459z2), .clk (clk), .ena (1'b1)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_r1_ty_0_ (.q (r1_ty[0]), .d (nx41057z1), .clk (clk), .ena (1'b1)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_r2_8_ (.q (r2[8]), .d (r2_14n0r1[8]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_7_ (.q (r2[7]), .d (r2_14n0r1[7]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_6_ (.q (r2[6]), .d (r2_14n0r1[6]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_5_ (.q (r2[5]), .d (r2_14n0r1[5]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_4_ (.q (r2[4]), .d (r2_14n0r1[4]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_3_ (.q (r2[3]), .d (r2_14n0r1[3]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_2_ (.q (r2[2]), .d (r2_14n0r1[2]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_1_ (.q (r2[1]), .d (r2_14n0r1[1]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r2_0_ (.q (r2[0]), .d (r2_14n0r1[0]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_8_ (.q (r3[8]), .d (r3_15n1ss1[8]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_7_ (.q (r3[7]), .d (r3_15n1ss1[7]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_6_ (.q (r3[6]), .d (r3_15n1ss1[6]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_5_ (.q (r3[5]), .d (r3_15n1ss1[5]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_4_ (.q (r3[4]), .d (r3_15n1ss1[4]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_3_ (.q (r3[3]), .d (r3_15n1ss1[3]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_2_ (.q (r3[2]), .d (r3_15n1ss1[2]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_1_ (.q (r3[1]), .d (r3_15n1ss1[1]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r3_0_ (.q (r3[0]), .d (r3_15n1ss1[0]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r4_val_9_ (.q (r4_val[9]), .d (r4_16n0r1[9]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_8_ (.q (r4_val[8]), .d (r4_16n0r1[8]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_7_ (.q (r4_val[7]), .d (r4_16n0r1[7]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_6_ (.q (r4_val[6]), .d (r4_16n0r1[6]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_5_ (.q (r4_val[5]), .d (r4_16n0r1[5]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_4_ (.q (r4_val[4]), .d (r4_16n0r1[4]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_3_ (.q (r4_val[3]), .d (r4_16n0r1[3]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_2_ (.q (r4_val[2]), .d (r4_16n0r1[2]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_1_ (.q (r4_val[1]), .d (r4_16n0r1[1]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_val_0_ (.q (r4_val[0]), .d (r4_16n0r1[0]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r4_ty_2_ (.q (r4_ty[2]), .d (r1_ty[2]), .clk (clk), .ena (1'b1), 
           .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r4_ty_1_ (.q (r4_ty[1]), .d (r1_ty[1]), .clk (clk), .ena (1'b1), 
           .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r4_ty_0_ (.q (r4_ty[0]), .d (r1_ty[0]), .clk (clk), .ena (1'b1), 
           .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r5_val_9_ (.q (r5_val[9]), .d (r4_val[9]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_8_ (.q (r5_val[8]), .d (r4_val[8]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_7_ (.q (r5_val[7]), .d (r4_val[7]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_6_ (.q (r5_val[6]), .d (r4_val[6]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_5_ (.q (r5_val[5]), .d (r4_val[5]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_4_ (.q (r5_val[4]), .d (r4_val[4]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_3_ (.q (r5_val[3]), .d (r4_val[3]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_2_ (.q (r5_val[2]), .d (r4_val[2]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_1_ (.q (r5_val[1]), .d (r4_val[1]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_val_0_ (.q (r5_val[0]), .d (r4_val[0]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_ty_2_ (.q (r5_ty[2]), .d (r4_ty[2]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_ty_1_ (.q (r5_ty[1]), .d (r4_ty[1]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r5_ty_0_ (.q (r5_ty[0]), .d (r4_ty[0]), .clk (clk), .ena (
           nx62709z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r6_12_ (.q (r6[12]), .d (r6_18n0r1[12]), .clk (clk), .ena (1'b1)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_r6_11_ (.q (r6[11]), .d (r6_18n0r1[11]), .clk (clk), .ena (1'b1)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_r6_10_ (.q (r6[10]), .d (r6_18n0r1[10]), .clk (clk), .ena (1'b1)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_r6_9_ (.q (r6[9]), .d (r6_18n0r1[9]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_8_ (.q (r6[8]), .d (r6_18n0r1[8]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_7_ (.q (r6[7]), .d (r6_18n0r1[7]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_6_ (.q (r6[6]), .d (r6_18n0r1[6]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_5_ (.q (r6[5]), .d (r6_18n0r1[5]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_4_ (.q (r6[4]), .d (r6_18n0r1[4]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_3_ (.q (r6[3]), .d (r6_18n0r1[3]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_2_ (.q (r6[2]), .d (r6_18n0r1[2]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_1_ (.q (r6[1]), .d (r6_18n0r1[1]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r6_0_ (.q (r6[0]), .d (r3[0]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_r7_val_13_ (.q (r7_val_13_), .d (r7_19n0r1_13_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_val_12_ (.q (r7_val_12_), .d (r7_19n0r1_12_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_val_11_ (.q (r7_val_11_), .d (r7_19n0r1_11_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_val_10_ (.q (r7_val_10_), .d (r7_19n0r1_10_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_val_9_ (.q (r7_val_9_), .d (r7_19n0r1_9_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_val_8_ (.q (r7_val_8_), .d (r7_19n0r1_8_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_val_7_ (.q (r7_val_7_), .d (r7_19n0r1_7_), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r7_ty_2_ (.q (r7_ty[2]), .d (r5_ty[2]), .clk (clk), .ena (1'b1), 
           .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r7_ty_1_ (.q (r7_ty[1]), .d (r5_ty[1]), .clk (clk), .ena (1'b1), 
           .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_r7_ty_0_ (.q (r7_ty[0]), .d (r5_ty[0]), .clk (clk), .ena (1'b1), 
           .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_o_edge (.q (o_edge), .d (nx1448z1), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_o_valid (.q (o_valid), .d (v[7]), .clk (clk), .ena (1'b1), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_wr_en_0_ (.q (wr_en[0]), .d (nx24845z1), .clk (clk), .ena (1'b1)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    stratixiv_lcell_comb ix2414_repl (.combout (nx2532_repl), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (nx10173z2)
                         , .dataf (nx10173z4), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix2414_repl.lut_mask = 64'h0000ffff00000000;
    stratixiv_lcell_comb ix2307_repl (.combout (nx35226z1), .dataa (1'b1), .datab (
                         o_row[3]), .datac (nx10173z3), .datad (o_row[1]), .datae (
                         o_row[2]), .dataf (i_valid), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix2307_repl.lut_mask = 64'h00000003ffffffff;
    dffeas reg_wr_en_0__repl (.q (wr_en_0__repl), .d (nx24845z1), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
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
               defparam ix64056z29483.intended_device_family = "Stratix IV";
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
               defparam ix64056z29482.intended_device_family = "Stratix IV";
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
               defparam ix64056z29481.intended_device_family = "Stratix IV";
               defparam ix64056z29481.lpm_hint = "UNUSED";
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign rd_ena1_rename26 = 1'b1 ;
endmodule

