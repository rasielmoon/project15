
module b04 ( RESTART, AVERAGE, ENABLE, DATA_IN, DATA_OUT, RESET, CLOCK, 
        test_si1, test_so1, test_si2, test_so2, test_se );
  input [7:0] DATA_IN;
  output [7:0] DATA_OUT;
  input RESTART, AVERAGE, ENABLE, RESET, CLOCK, test_si1, test_si2, test_se;
  output test_so1, test_so2;
  wire   stato_0_, N16, N39, N82, N83, N84, N85, N86, N87, N117, N118, N119,
         N120, N121, N122, N123, N124, N169, U3_U3_Z_0, U3_U3_Z_1, U3_U3_Z_2,
         U3_U3_Z_3, U3_U3_Z_4, U3_U3_Z_5, U3_U3_Z_6, U3_U3_Z_8, U3_U4_Z_0,
         U3_U4_Z_1, U3_U4_Z_2, U3_U4_Z_3, U3_U4_Z_4, U3_U4_Z_5, U3_U4_Z_6,
         U3_U4_Z_8, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         r174_carry_8_, r33_carry_2_, r33_carry_3_, r33_carry_4_, r33_carry_5_,
         r33_carry_6_, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395;

  SDFFARX1 stato_reg_0_ ( .D(N16), .SI(n262), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(stato_0_), .QN(n270) );
  SDFFARX1 stato_reg_1_ ( .D(N169), .SI(stato_0_), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(test_so2) );
  SDFFARX1 RMAX_reg_0_ ( .D(n230), .SI(n293), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n269), .QN(n387) );
  SDFFARX1 RMAX_reg_1_ ( .D(n229), .SI(n269), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n266), .QN(n386) );
  SDFFARX1 RMAX_reg_2_ ( .D(n228), .SI(n266), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n268), .QN(n385) );
  SDFFARX1 RMAX_reg_3_ ( .D(n227), .SI(n268), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n263), .QN(n384) );
  SDFFARX1 RMAX_reg_4_ ( .D(n226), .SI(n263), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n264), .QN(n383) );
  SDFFARX1 RMAX_reg_5_ ( .D(n225), .SI(n264), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n265), .QN(n382) );
  SDFFARX1 RMAX_reg_6_ ( .D(n224), .SI(n265), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n252), .QN(n381) );
  SDFFARX1 RMAX_reg_7_ ( .D(n223), .SI(n252), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n250) );
  SDFFARX1 RMIN_reg_0_ ( .D(n222), .SI(n250), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n267), .QN(n380) );
  SDFFARX1 RMIN_reg_1_ ( .D(n221), .SI(n267), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n255), .QN(n377) );
  SDFFARX1 RMIN_reg_2_ ( .D(n220), .SI(n255), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n253) );
  SDFFARX1 RMIN_reg_3_ ( .D(n219), .SI(n253), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n232) );
  SDFFARX1 RMIN_reg_4_ ( .D(n218), .SI(n232), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n249) );
  SDFFARX1 RMIN_reg_5_ ( .D(n217), .SI(n249), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n231) );
  SDFFARX1 RMIN_reg_6_ ( .D(n216), .SI(n231), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n254), .QN(n378) );
  SDFFARX1 RMIN_reg_7_ ( .D(n215), .SI(n254), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n262), .QN(n379) );
  SDFFARX1 RLAST_reg_7_ ( .D(n214), .SI(n294), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n293) );
  SDFFARX1 RLAST_reg_6_ ( .D(n213), .SI(n271), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n294) );
  SDFFARX1 RLAST_reg_5_ ( .D(n212), .SI(n272), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n271) );
  SDFFARX1 RLAST_reg_4_ ( .D(n211), .SI(n273), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n272) );
  SDFFARX1 RLAST_reg_3_ ( .D(n210), .SI(n274), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n273) );
  SDFFARX1 RLAST_reg_2_ ( .D(n209), .SI(n275), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n274) );
  SDFFARX1 RLAST_reg_1_ ( .D(n208), .SI(n276), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n275) );
  SDFFARX1 RLAST_reg_0_ ( .D(n207), .SI(n233), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n276) );
  SDFFARX1 REG1_reg_7_ ( .D(n206), .SI(n278), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n277) );
  SDFFARX1 REG1_reg_6_ ( .D(n205), .SI(n279), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n278) );
  SDFFARX1 REG1_reg_5_ ( .D(n204), .SI(n280), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n279) );
  SDFFARX1 REG1_reg_4_ ( .D(n203), .SI(n281), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n280) );
  SDFFARX1 REG1_reg_3_ ( .D(n202), .SI(n282), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n281) );
  SDFFARX1 REG1_reg_2_ ( .D(n201), .SI(n283), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n282) );
  SDFFARX1 REG1_reg_1_ ( .D(n200), .SI(n284), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n283) );
  SDFFARX1 REG1_reg_0_ ( .D(n199), .SI(DATA_OUT[7]), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n284) );
  SDFFARX1 REG2_reg_7_ ( .D(n198), .SI(n242), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n241) );
  SDFFARX1 REG2_reg_6_ ( .D(n197), .SI(n243), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n242) );
  SDFFARX1 REG2_reg_5_ ( .D(n196), .SI(n244), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n243) );
  SDFFARX1 REG2_reg_4_ ( .D(n195), .SI(n245), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n244) );
  SDFFARX1 REG2_reg_3_ ( .D(n194), .SI(n246), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n245) );
  SDFFARX1 REG2_reg_2_ ( .D(n193), .SI(n247), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n246) );
  SDFFARX1 REG2_reg_1_ ( .D(n192), .SI(n248), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n247) );
  SDFFARX1 REG2_reg_0_ ( .D(n191), .SI(n277), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n248) );
  SDFFARX1 REG3_reg_7_ ( .D(n190), .SI(n286), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n285) );
  SDFFARX1 REG3_reg_6_ ( .D(n189), .SI(n287), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n286) );
  SDFFARX1 REG3_reg_5_ ( .D(n188), .SI(n288), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n287) );
  SDFFARX1 REG3_reg_4_ ( .D(n187), .SI(n289), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n288) );
  SDFFARX1 REG3_reg_3_ ( .D(n186), .SI(n290), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n289) );
  SDFFARX1 REG3_reg_2_ ( .D(n185), .SI(n291), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n290) );
  SDFFARX1 REG3_reg_1_ ( .D(n184), .SI(n292), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n291) );
  SDFFARX1 REG3_reg_0_ ( .D(n183), .SI(n241), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n292) );
  SDFFARX1 REG4_reg_7_ ( .D(n182), .SI(n234), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n233) );
  SDFFARX1 REG4_reg_6_ ( .D(n181), .SI(n235), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n234) );
  SDFFARX1 REG4_reg_5_ ( .D(n180), .SI(n236), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n235) );
  SDFFARX1 REG4_reg_4_ ( .D(n179), .SI(n237), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n236) );
  SDFFARX1 REG4_reg_3_ ( .D(n178), .SI(n238), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n237) );
  SDFFARX1 REG4_reg_2_ ( .D(n177), .SI(n239), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n238) );
  SDFFARX1 REG4_reg_1_ ( .D(n176), .SI(test_si2), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(n239) );
  SDFFARX1 REG4_reg_0_ ( .D(n175), .SI(n285), .SE(test_se), .CLK(CLOCK), 
        .RSTB(n395), .Q(test_so1) );
  SDFFARX1 DATA_OUT_reg_7_ ( .D(n174), .SI(DATA_OUT[6]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[7]) );
  SDFFARX1 DATA_OUT_reg_6_ ( .D(n173), .SI(DATA_OUT[5]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[6]) );
  SDFFARX1 DATA_OUT_reg_5_ ( .D(n172), .SI(DATA_OUT[4]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[5]) );
  SDFFARX1 DATA_OUT_reg_4_ ( .D(n171), .SI(DATA_OUT[3]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[4]) );
  SDFFARX1 DATA_OUT_reg_3_ ( .D(n170), .SI(DATA_OUT[2]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[3]) );
  SDFFARX1 DATA_OUT_reg_2_ ( .D(n169), .SI(DATA_OUT[1]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[2]) );
  SDFFARX1 DATA_OUT_reg_1_ ( .D(n168), .SI(DATA_OUT[0]), .SE(test_se), .CLK(
        CLOCK), .RSTB(n395), .Q(DATA_OUT[1]) );
  SDFFARX1 DATA_OUT_reg_0_ ( .D(n167), .SI(test_si1), .SE(test_se), .CLK(CLOCK), .RSTB(n395), .Q(DATA_OUT[0]) );
  FADDX1 r174_U1_8 ( .A(U3_U3_Z_8), .B(U3_U4_Z_8), .CI(r174_carry_8_), .S(N39)
         );
  FADDX1 r33_U1_1 ( .A(U3_U3_Z_1), .B(U3_U4_Z_1), .CI(n307), .CO(r33_carry_2_), 
        .S(N82) );
  FADDX1 r33_U1_2 ( .A(U3_U3_Z_2), .B(U3_U4_Z_2), .CI(r33_carry_2_), .CO(
        r33_carry_3_), .S(N83) );
  FADDX1 r33_U1_3 ( .A(U3_U3_Z_3), .B(U3_U4_Z_3), .CI(r33_carry_3_), .CO(
        r33_carry_4_), .S(N84) );
  FADDX1 r33_U1_4 ( .A(U3_U3_Z_4), .B(U3_U4_Z_4), .CI(r33_carry_4_), .CO(
        r33_carry_5_), .S(N85) );
  FADDX1 r33_U1_5 ( .A(U3_U3_Z_5), .B(U3_U4_Z_5), .CI(r33_carry_5_), .CO(
        r33_carry_6_), .S(N86) );
  FADDX1 r33_U1_6 ( .A(U3_U3_Z_6), .B(U3_U4_Z_6), .CI(r33_carry_6_), .S(N87)
         );
  XNOR2X1 U190 ( .IN1(U3_U4_Z_0), .IN2(U3_U3_Z_0), .Q(n251) );
  XNOR2X1 U191 ( .IN1(n394), .IN2(n251), .Q(n256) );
  XNOR2X1 U192 ( .IN1(n393), .IN2(n305), .Q(n257) );
  XNOR2X1 U193 ( .IN1(n392), .IN2(n300), .Q(n258) );
  XNOR2X1 U194 ( .IN1(n391), .IN2(n301), .Q(n259) );
  XNOR2X1 U195 ( .IN1(n390), .IN2(n302), .Q(n260) );
  XNOR2X1 U196 ( .IN1(n389), .IN2(n303), .Q(n261) );
  INVX2 U197 ( .INP(RESET), .ZN(n395) );
  AND2X1 U198 ( .IN1(n258), .IN2(n304), .Q(n295) );
  AND2X1 U199 ( .IN1(n259), .IN2(n295), .Q(n296) );
  AND2X1 U200 ( .IN1(n260), .IN2(n296), .Q(n297) );
  AND2X1 U201 ( .IN1(n261), .IN2(n297), .Q(n298) );
  NAND2X1 U202 ( .IN1(n299), .IN2(n298), .QN(n308) );
  AND2X1 U203 ( .IN1(n389), .IN2(n303), .Q(n299) );
  AND2X1 U204 ( .IN1(n393), .IN2(n305), .Q(n300) );
  AND2X1 U205 ( .IN1(n392), .IN2(n300), .Q(n301) );
  AND2X1 U206 ( .IN1(n391), .IN2(n301), .Q(n302) );
  AND2X1 U207 ( .IN1(n390), .IN2(n302), .Q(n303) );
  AND2X1 U208 ( .IN1(n257), .IN2(n306), .Q(n304) );
  AND2X1 U209 ( .IN1(n394), .IN2(n251), .Q(n305) );
  AND2X1 U210 ( .IN1(n256), .IN2(n388), .Q(n306) );
  AND2X1 U211 ( .IN1(U3_U4_Z_0), .IN2(U3_U3_Z_0), .Q(n307) );
  XNOR2X1 U212 ( .IN1(n299), .IN2(n308), .Q(N124) );
  XOR2X1 U213 ( .IN1(n256), .IN2(n388), .Q(N117) );
  XOR2X1 U214 ( .IN1(n257), .IN2(n306), .Q(N118) );
  XOR2X1 U215 ( .IN1(n258), .IN2(n304), .Q(N119) );
  XOR2X1 U216 ( .IN1(n259), .IN2(n295), .Q(N120) );
  XOR2X1 U217 ( .IN1(n260), .IN2(n296), .Q(N121) );
  XOR2X1 U218 ( .IN1(n261), .IN2(n297), .Q(N122) );
  XOR2X1 U219 ( .IN1(n299), .IN2(n298), .Q(N123) );
  AO22X1 U220 ( .IN1(n309), .IN2(U3_U3_Z_8), .IN3(n310), .IN4(U3_U4_Z_8), .Q(
        r174_carry_8_) );
  OR2X1 U221 ( .IN1(n309), .IN2(U3_U3_Z_8), .Q(n310) );
  AO22X1 U222 ( .IN1(n311), .IN2(U3_U3_Z_6), .IN3(n312), .IN4(U3_U4_Z_6), .Q(
        n309) );
  OR2X1 U223 ( .IN1(n311), .IN2(U3_U3_Z_6), .Q(n312) );
  AO22X1 U224 ( .IN1(n313), .IN2(U3_U3_Z_5), .IN3(n314), .IN4(U3_U4_Z_5), .Q(
        n311) );
  OR2X1 U225 ( .IN1(n313), .IN2(U3_U3_Z_5), .Q(n314) );
  AO22X1 U226 ( .IN1(n315), .IN2(U3_U3_Z_4), .IN3(n316), .IN4(U3_U4_Z_4), .Q(
        n313) );
  OR2X1 U227 ( .IN1(n315), .IN2(U3_U3_Z_4), .Q(n316) );
  AO22X1 U228 ( .IN1(n317), .IN2(U3_U3_Z_3), .IN3(n318), .IN4(U3_U4_Z_3), .Q(
        n315) );
  OR2X1 U229 ( .IN1(n317), .IN2(U3_U3_Z_3), .Q(n318) );
  AO22X1 U230 ( .IN1(n319), .IN2(U3_U3_Z_2), .IN3(n320), .IN4(U3_U4_Z_2), .Q(
        n317) );
  OR2X1 U231 ( .IN1(n319), .IN2(U3_U3_Z_2), .Q(n320) );
  AO22X1 U232 ( .IN1(U3_U3_Z_1), .IN2(U3_U4_Z_1), .IN3(n321), .IN4(n322), .Q(
        n319) );
  OR2X1 U233 ( .IN1(U3_U3_Z_1), .IN2(U3_U4_Z_1), .Q(n322) );
  AND2X1 U234 ( .IN1(U3_U4_Z_0), .IN2(U3_U3_Z_0), .Q(n321) );
  OR3X1 U235 ( .IN1(n299), .IN2(n251), .IN3(n323), .Q(n388) );
  INVX0 U236 ( .INP(N87), .ZN(n389) );
  INVX0 U237 ( .INP(N86), .ZN(n390) );
  INVX0 U238 ( .INP(N85), .ZN(n391) );
  INVX0 U239 ( .INP(N84), .ZN(n392) );
  INVX0 U240 ( .INP(N83), .ZN(n393) );
  INVX0 U241 ( .INP(N82), .ZN(n394) );
  MUX21X1 U242 ( .IN1(n269), .IN2(DATA_IN[0]), .S(n324), .Q(n230) );
  MUX21X1 U243 ( .IN1(n266), .IN2(DATA_IN[1]), .S(n324), .Q(n229) );
  MUX21X1 U244 ( .IN1(n268), .IN2(DATA_IN[2]), .S(n324), .Q(n228) );
  MUX21X1 U245 ( .IN1(n263), .IN2(DATA_IN[3]), .S(n324), .Q(n227) );
  MUX21X1 U246 ( .IN1(n264), .IN2(DATA_IN[4]), .S(n324), .Q(n226) );
  MUX21X1 U247 ( .IN1(n265), .IN2(DATA_IN[5]), .S(n324), .Q(n225) );
  MUX21X1 U248 ( .IN1(n252), .IN2(DATA_IN[6]), .S(n324), .Q(n224) );
  MUX21X1 U249 ( .IN1(n250), .IN2(DATA_IN[7]), .S(n324), .Q(n223) );
  AOI21X1 U250 ( .IN1(n325), .IN2(n326), .IN3(n327), .QN(n324) );
  MUX21X1 U251 ( .IN1(DATA_IN[0]), .IN2(n267), .S(n328), .Q(n222) );
  MUX21X1 U252 ( .IN1(DATA_IN[1]), .IN2(n255), .S(n328), .Q(n221) );
  MUX21X1 U253 ( .IN1(DATA_IN[2]), .IN2(n253), .S(n328), .Q(n220) );
  MUX21X1 U254 ( .IN1(DATA_IN[3]), .IN2(n232), .S(n328), .Q(n219) );
  MUX21X1 U255 ( .IN1(DATA_IN[4]), .IN2(n249), .S(n328), .Q(n218) );
  MUX21X1 U256 ( .IN1(DATA_IN[5]), .IN2(n231), .S(n328), .Q(n217) );
  MUX21X1 U257 ( .IN1(DATA_IN[6]), .IN2(n254), .S(n328), .Q(n216) );
  MUX21X1 U258 ( .IN1(DATA_IN[7]), .IN2(n262), .S(n328), .Q(n215) );
  AND2X1 U259 ( .IN1(n326), .IN2(n329), .Q(n328) );
  NAND3X0 U260 ( .IN1(n325), .IN2(n330), .IN3(n331), .QN(n329) );
  AO21X1 U261 ( .IN1(n379), .IN2(DATA_IN[7]), .IN3(n332), .Q(n330) );
  OA22X1 U262 ( .IN1(DATA_IN[7]), .IN2(n379), .IN3(n333), .IN4(n334), .Q(n332)
         );
  NOR2X0 U263 ( .IN1(n378), .IN2(DATA_IN[6]), .QN(n334) );
  OA221X1 U264 ( .IN1(n335), .IN2(n254), .IN3(n336), .IN4(n231), .IN5(n337), 
        .Q(n333) );
  AO221X1 U265 ( .IN1(n338), .IN2(n249), .IN3(n336), .IN4(n231), .IN5(n339), 
        .Q(n337) );
  OA221X1 U266 ( .IN1(n340), .IN2(n232), .IN3(n338), .IN4(n249), .IN5(n341), 
        .Q(n339) );
  AO222X1 U267 ( .IN1(n342), .IN2(n343), .IN3(n344), .IN4(n253), .IN5(n340), 
        .IN6(n232), .Q(n341) );
  OR2X1 U268 ( .IN1(n342), .IN2(n343), .Q(n344) );
  INVX0 U269 ( .INP(DATA_IN[2]), .ZN(n343) );
  AO22X1 U270 ( .IN1(n345), .IN2(n255), .IN3(n346), .IN4(n347), .Q(n342) );
  NAND2X0 U271 ( .IN1(n377), .IN2(DATA_IN[1]), .QN(n347) );
  NOR2X0 U272 ( .IN1(n380), .IN2(DATA_IN[0]), .QN(n346) );
  INVX0 U273 ( .INP(DATA_IN[1]), .ZN(n345) );
  INVX0 U274 ( .INP(DATA_IN[3]), .ZN(n340) );
  INVX0 U275 ( .INP(DATA_IN[4]), .ZN(n338) );
  INVX0 U276 ( .INP(DATA_IN[5]), .ZN(n336) );
  AOI21X1 U277 ( .IN1(n348), .IN2(n250), .IN3(n349), .QN(n325) );
  OA22X1 U278 ( .IN1(n348), .IN2(n250), .IN3(n350), .IN4(n351), .Q(n349) );
  NOR2X0 U279 ( .IN1(n335), .IN2(n252), .QN(n351) );
  INVX0 U280 ( .INP(DATA_IN[6]), .ZN(n335) );
  OA221X1 U281 ( .IN1(DATA_IN[5]), .IN2(n382), .IN3(DATA_IN[6]), .IN4(n381), 
        .IN5(n352), .Q(n350) );
  AO221X1 U282 ( .IN1(n383), .IN2(DATA_IN[4]), .IN3(n382), .IN4(DATA_IN[5]), 
        .IN5(n353), .Q(n352) );
  OA221X1 U283 ( .IN1(DATA_IN[3]), .IN2(n384), .IN3(DATA_IN[4]), .IN4(n383), 
        .IN5(n354), .Q(n353) );
  AO222X1 U284 ( .IN1(DATA_IN[2]), .IN2(n355), .IN3(n385), .IN4(n356), .IN5(
        n384), .IN6(DATA_IN[3]), .Q(n354) );
  OR2X1 U285 ( .IN1(n355), .IN2(DATA_IN[2]), .Q(n356) );
  AO22X1 U286 ( .IN1(n386), .IN2(DATA_IN[1]), .IN3(n357), .IN4(n387), .Q(n355)
         );
  OA21X1 U287 ( .IN1(DATA_IN[1]), .IN2(n386), .IN3(DATA_IN[0]), .Q(n357) );
  INVX0 U288 ( .INP(DATA_IN[7]), .ZN(n348) );
  AO22X1 U289 ( .IN1(n358), .IN2(n293), .IN3(n359), .IN4(DATA_IN[7]), .Q(n214)
         );
  AO22X1 U290 ( .IN1(n358), .IN2(n294), .IN3(n359), .IN4(DATA_IN[6]), .Q(n213)
         );
  AO22X1 U291 ( .IN1(n358), .IN2(n271), .IN3(n359), .IN4(DATA_IN[5]), .Q(n212)
         );
  AO22X1 U292 ( .IN1(n358), .IN2(n272), .IN3(n359), .IN4(DATA_IN[4]), .Q(n211)
         );
  AO22X1 U293 ( .IN1(n358), .IN2(n273), .IN3(n359), .IN4(DATA_IN[3]), .Q(n210)
         );
  AO22X1 U294 ( .IN1(n358), .IN2(n274), .IN3(n359), .IN4(DATA_IN[2]), .Q(n209)
         );
  AO22X1 U295 ( .IN1(n358), .IN2(n275), .IN3(n359), .IN4(DATA_IN[1]), .Q(n208)
         );
  AO22X1 U296 ( .IN1(n358), .IN2(n276), .IN3(n359), .IN4(DATA_IN[0]), .Q(n207)
         );
  NOR2X0 U297 ( .IN1(n358), .IN2(n360), .QN(n359) );
  AO21X1 U298 ( .IN1(n326), .IN2(n361), .IN3(n327), .Q(n358) );
  AO22X1 U299 ( .IN1(n327), .IN2(n277), .IN3(n331), .IN4(DATA_IN[7]), .Q(n206)
         );
  AO22X1 U300 ( .IN1(n327), .IN2(n278), .IN3(n331), .IN4(DATA_IN[6]), .Q(n205)
         );
  AO22X1 U301 ( .IN1(n327), .IN2(n279), .IN3(n331), .IN4(DATA_IN[5]), .Q(n204)
         );
  AO22X1 U302 ( .IN1(n327), .IN2(n280), .IN3(n331), .IN4(DATA_IN[4]), .Q(n203)
         );
  AO22X1 U303 ( .IN1(n327), .IN2(n281), .IN3(n331), .IN4(DATA_IN[3]), .Q(n202)
         );
  AO22X1 U304 ( .IN1(n327), .IN2(n282), .IN3(n331), .IN4(DATA_IN[2]), .Q(n201)
         );
  AO22X1 U305 ( .IN1(n327), .IN2(n283), .IN3(n331), .IN4(DATA_IN[1]), .Q(n200)
         );
  AO22X1 U306 ( .IN1(n327), .IN2(n284), .IN3(n331), .IN4(DATA_IN[0]), .Q(n199)
         );
  AO22X1 U307 ( .IN1(n327), .IN2(n241), .IN3(n331), .IN4(n277), .Q(n198) );
  AO22X1 U308 ( .IN1(n327), .IN2(n242), .IN3(n331), .IN4(n278), .Q(n197) );
  AO22X1 U309 ( .IN1(n327), .IN2(n243), .IN3(n331), .IN4(n279), .Q(n196) );
  AO22X1 U310 ( .IN1(n327), .IN2(n244), .IN3(n331), .IN4(n280), .Q(n195) );
  AO22X1 U311 ( .IN1(n327), .IN2(n245), .IN3(n331), .IN4(n281), .Q(n194) );
  AO22X1 U312 ( .IN1(n327), .IN2(n246), .IN3(n331), .IN4(n282), .Q(n193) );
  AO22X1 U313 ( .IN1(n327), .IN2(n247), .IN3(n331), .IN4(n283), .Q(n192) );
  AO22X1 U314 ( .IN1(n327), .IN2(n248), .IN3(n331), .IN4(n284), .Q(n191) );
  AO22X1 U315 ( .IN1(n327), .IN2(n285), .IN3(n331), .IN4(n241), .Q(n190) );
  AO22X1 U316 ( .IN1(n327), .IN2(n286), .IN3(n331), .IN4(n242), .Q(n189) );
  AO22X1 U317 ( .IN1(n327), .IN2(n287), .IN3(n331), .IN4(n243), .Q(n188) );
  AO22X1 U318 ( .IN1(n327), .IN2(n288), .IN3(n331), .IN4(n244), .Q(n187) );
  AO22X1 U319 ( .IN1(n327), .IN2(n289), .IN3(n331), .IN4(n245), .Q(n186) );
  AO22X1 U320 ( .IN1(n327), .IN2(n290), .IN3(n331), .IN4(n246), .Q(n185) );
  AO22X1 U321 ( .IN1(n327), .IN2(n291), .IN3(n331), .IN4(n247), .Q(n184) );
  AO22X1 U322 ( .IN1(n327), .IN2(n292), .IN3(n331), .IN4(n248), .Q(n183) );
  AO22X1 U323 ( .IN1(n327), .IN2(n233), .IN3(n331), .IN4(n285), .Q(n182) );
  AO22X1 U324 ( .IN1(n327), .IN2(n234), .IN3(n331), .IN4(n286), .Q(n181) );
  AO22X1 U325 ( .IN1(n327), .IN2(n235), .IN3(n331), .IN4(n287), .Q(n180) );
  AO22X1 U326 ( .IN1(n327), .IN2(n236), .IN3(n331), .IN4(n288), .Q(n179) );
  AO22X1 U327 ( .IN1(n327), .IN2(n237), .IN3(n331), .IN4(n289), .Q(n178) );
  AO22X1 U328 ( .IN1(n327), .IN2(n238), .IN3(n331), .IN4(n290), .Q(n177) );
  AO22X1 U329 ( .IN1(n327), .IN2(n239), .IN3(n331), .IN4(n291), .Q(n176) );
  AO22X1 U330 ( .IN1(n327), .IN2(test_so1), .IN3(n331), .IN4(n292), .Q(n175)
         );
  AO221X1 U331 ( .IN1(n362), .IN2(n233), .IN3(n327), .IN4(DATA_OUT[7]), .IN5(
        n363), .Q(n174) );
  AO22X1 U332 ( .IN1(N124), .IN2(n364), .IN3(n365), .IN4(n293), .Q(n363) );
  AO221X1 U333 ( .IN1(n362), .IN2(n234), .IN3(n327), .IN4(DATA_OUT[6]), .IN5(
        n366), .Q(n173) );
  AO22X1 U334 ( .IN1(N123), .IN2(n364), .IN3(n365), .IN4(n294), .Q(n366) );
  AO221X1 U335 ( .IN1(n362), .IN2(n235), .IN3(n327), .IN4(DATA_OUT[5]), .IN5(
        n367), .Q(n172) );
  AO222X1 U336 ( .IN1(n368), .IN2(N87), .IN3(n365), .IN4(n271), .IN5(N122), 
        .IN6(n364), .Q(n367) );
  AO221X1 U337 ( .IN1(n362), .IN2(n236), .IN3(n327), .IN4(DATA_OUT[4]), .IN5(
        n369), .Q(n171) );
  AO222X1 U338 ( .IN1(n368), .IN2(N86), .IN3(n365), .IN4(n272), .IN5(N121), 
        .IN6(n364), .Q(n369) );
  AO221X1 U339 ( .IN1(n362), .IN2(n237), .IN3(n327), .IN4(DATA_OUT[3]), .IN5(
        n370), .Q(n170) );
  AO222X1 U340 ( .IN1(n368), .IN2(N85), .IN3(n365), .IN4(n273), .IN5(N120), 
        .IN6(n364), .Q(n370) );
  AO221X1 U341 ( .IN1(n362), .IN2(n238), .IN3(n327), .IN4(DATA_OUT[2]), .IN5(
        n371), .Q(n169) );
  AO222X1 U342 ( .IN1(n368), .IN2(N84), .IN3(n365), .IN4(n274), .IN5(N119), 
        .IN6(n364), .Q(n371) );
  AO221X1 U343 ( .IN1(n362), .IN2(n239), .IN3(n327), .IN4(DATA_OUT[1]), .IN5(
        n372), .Q(n168) );
  AO222X1 U344 ( .IN1(n368), .IN2(N83), .IN3(n365), .IN4(n275), .IN5(N118), 
        .IN6(n364), .Q(n372) );
  AO221X1 U345 ( .IN1(n362), .IN2(test_so1), .IN3(n327), .IN4(DATA_OUT[0]), 
        .IN5(n373), .Q(n167) );
  AO222X1 U346 ( .IN1(n368), .IN2(N82), .IN3(n365), .IN4(n276), .IN5(N117), 
        .IN6(n364), .Q(n373) );
  NOR3X0 U347 ( .IN1(n360), .IN2(n323), .IN3(n374), .QN(n364) );
  INVX0 U348 ( .INP(N39), .ZN(n374) );
  NOR3X0 U349 ( .IN1(ENABLE), .IN2(RESTART), .IN3(n360), .QN(n365) );
  NOR3X0 U350 ( .IN1(n323), .IN2(N39), .IN3(n360), .QN(n368) );
  OA21X1 U351 ( .IN1(n361), .IN2(AVERAGE), .IN3(n375), .Q(n323) );
  INVX0 U352 ( .INP(N169), .ZN(n327) );
  AND4X1 U353 ( .IN1(AVERAGE), .IN2(n331), .IN3(ENABLE), .IN4(n375), .Q(n362)
         );
  INVX0 U354 ( .INP(RESTART), .ZN(n375) );
  INVX0 U355 ( .INP(n360), .ZN(n331) );
  AO22X1 U356 ( .IN1(RESTART), .IN2(n262), .IN3(n376), .IN4(n233), .Q(
        U3_U4_Z_8) );
  AO22X1 U357 ( .IN1(RESTART), .IN2(n254), .IN3(n376), .IN4(n234), .Q(
        U3_U4_Z_6) );
  AO22X1 U358 ( .IN1(RESTART), .IN2(n231), .IN3(n376), .IN4(n235), .Q(
        U3_U4_Z_5) );
  AO22X1 U359 ( .IN1(RESTART), .IN2(n249), .IN3(n376), .IN4(n236), .Q(
        U3_U4_Z_4) );
  AO22X1 U360 ( .IN1(RESTART), .IN2(n232), .IN3(n376), .IN4(n237), .Q(
        U3_U4_Z_3) );
  AO22X1 U361 ( .IN1(RESTART), .IN2(n253), .IN3(n376), .IN4(n238), .Q(
        U3_U4_Z_2) );
  AO22X1 U362 ( .IN1(RESTART), .IN2(n255), .IN3(n376), .IN4(n239), .Q(
        U3_U4_Z_1) );
  AO22X1 U363 ( .IN1(RESTART), .IN2(n267), .IN3(n376), .IN4(test_so1), .Q(
        U3_U4_Z_0) );
  AO22X1 U364 ( .IN1(RESTART), .IN2(n250), .IN3(DATA_IN[7]), .IN4(n376), .Q(
        U3_U3_Z_8) );
  AO22X1 U365 ( .IN1(RESTART), .IN2(n252), .IN3(DATA_IN[6]), .IN4(n376), .Q(
        U3_U3_Z_6) );
  AO22X1 U366 ( .IN1(RESTART), .IN2(n265), .IN3(DATA_IN[5]), .IN4(n376), .Q(
        U3_U3_Z_5) );
  AO22X1 U367 ( .IN1(RESTART), .IN2(n264), .IN3(DATA_IN[4]), .IN4(n376), .Q(
        U3_U3_Z_4) );
  AO22X1 U368 ( .IN1(RESTART), .IN2(n263), .IN3(DATA_IN[3]), .IN4(n376), .Q(
        U3_U3_Z_3) );
  AO22X1 U369 ( .IN1(RESTART), .IN2(n268), .IN3(DATA_IN[2]), .IN4(n376), .Q(
        U3_U3_Z_2) );
  AO22X1 U370 ( .IN1(RESTART), .IN2(n266), .IN3(DATA_IN[1]), .IN4(n376), .Q(
        U3_U3_Z_1) );
  AO22X1 U371 ( .IN1(RESTART), .IN2(n269), .IN3(DATA_IN[0]), .IN4(n376), .Q(
        U3_U3_Z_0) );
  NOR3X0 U372 ( .IN1(AVERAGE), .IN2(RESTART), .IN3(n361), .QN(n376) );
  INVX0 U373 ( .INP(ENABLE), .ZN(n361) );
  NAND2X0 U374 ( .IN1(n360), .IN2(n326), .QN(N169) );
  OR2X1 U375 ( .IN1(n270), .IN2(test_so2), .Q(n326) );
  NAND2X0 U376 ( .IN1(test_so2), .IN2(n270), .QN(n360) );
  NOR2X0 U377 ( .IN1(test_so2), .IN2(stato_0_), .QN(N16) );
endmodule

