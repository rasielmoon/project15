
module b12 ( clock, reset, start, k, nloss, nl, speaker, test_si1, test_so1, 
        test_si2, test_so2, test_se );
  input [3:0] k;
  output [3:0] nl;
  input clock, reset, start, test_si1, test_si2, test_se;
  output nloss, speaker, test_so1, test_so2;
  wire   play, N162, N213, N214, N215, N220, memory_31__1_, memory_31__0_,
         memory_30__1_, memory_30__0_, memory_29__1_, memory_29__0_,
         memory_28__1_, memory_28__0_, memory_27__1_, memory_27__0_,
         memory_26__1_, memory_26__0_, memory_25__1_, memory_25__0_,
         memory_24__1_, memory_24__0_, memory_23__1_, memory_23__0_,
         memory_22__1_, memory_22__0_, memory_21__1_, memory_21__0_,
         memory_20__1_, memory_20__0_, memory_19__1_, memory_19__0_,
         memory_18__1_, memory_18__0_, memory_17__1_, memory_17__0_,
         memory_16__1_, memory_16__0_, memory_15__1_, memory_15__0_,
         memory_14__1_, memory_13__1_, memory_13__0_, memory_12__1_,
         memory_12__0_, memory_11__1_, memory_11__0_, memory_10__1_,
         memory_10__0_, memory_9__1_, memory_9__0_, memory_8__1_, memory_8__0_,
         memory_7__1_, memory_7__0_, memory_6__1_, memory_6__0_, memory_5__1_,
         memory_5__0_, memory_4__1_, memory_4__0_, memory_3__1_, memory_3__0_,
         memory_2__1_, memory_2__0_, memory_1__1_, memory_1__0_, memory_0__1_,
         memory_0__0_, N286, N287, count_5_, count_4_, count_3_, count_2_,
         count_1_1, count_0_1, N657, N660, N661, N662, N663, N758, N759, N760,
         N761, N763, N764, N765, N766, N767, N911, N912, N913, N914, N915,
         n147, n148, n149, n150, n151, n156, n158, n199, n200, n207, n208,
         n209, n210, n211, n212, n213, n232, n233, n234, n235, n236, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, r197_carry_2_,
         r197_carry_3_, r197_carry_4_, r196_carry_2_, r196_carry_3_,
         r196_carry_4_, r194_SUM_1_, r194_SUM_2_, r194_SUM_3_, r194_SUM_4_,
         r194_SUM_5_, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n844;
  wire   [1:0] counter;
  wire   [2:0] sound;
  wire   [1:0] count;
  wire   [1:0] num;
  wire   [1:0] data_out;
  wire   [4:0] address;
  wire   [1:0] data_in;
  wire   [4:0] scan;
  wire   [4:0] max;
  wire   [1:0] ind;
  wire   [5:0] timebase;
  wire   [4:0] gamma;

  AO22X1 U306 ( .IN1(n242), .IN2(n243), .IN3(nl[3]), .IN4(n750), .Q(n508) );
  NAND3X0 U307 ( .IN1(n244), .IN2(n245), .IN3(n246), .QN(n242) );
  NAND3X0 U308 ( .IN1(ind[0]), .IN2(n247), .IN3(ind[1]), .QN(n245) );
  NAND3X0 U309 ( .IN1(data_out[0]), .IN2(n248), .IN3(data_out[1]), .QN(n244)
         );
  AO22X1 U310 ( .IN1(n249), .IN2(n243), .IN3(nl[2]), .IN4(n749), .Q(n509) );
  NAND3X0 U311 ( .IN1(n250), .IN2(n251), .IN3(n246), .QN(n249) );
  NAND3X0 U312 ( .IN1(n247), .IN2(n200), .IN3(ind[1]), .QN(n251) );
  NAND3X0 U313 ( .IN1(n248), .IN2(n158), .IN3(data_out[1]), .QN(n250) );
  AO22X1 U314 ( .IN1(n252), .IN2(n243), .IN3(nl[1]), .IN4(n748), .Q(n510) );
  NAND3X0 U315 ( .IN1(n253), .IN2(n254), .IN3(n246), .QN(n252) );
  NAND3X0 U316 ( .IN1(n247), .IN2(n199), .IN3(ind[0]), .QN(n254) );
  NAND3X0 U317 ( .IN1(n248), .IN2(n156), .IN3(data_out[0]), .QN(n253) );
  AO22X1 U318 ( .IN1(n255), .IN2(n243), .IN3(nl[0]), .IN4(n747), .Q(n511) );
  OR4X1 U319 ( .IN1(n247), .IN2(n256), .IN3(n257), .IN4(n762), .Q(n243) );
  NAND3X0 U320 ( .IN1(n258), .IN2(n259), .IN3(n246), .QN(n255) );
  NAND3X0 U321 ( .IN1(n200), .IN2(n199), .IN3(n247), .QN(n259) );
  NAND3X0 U322 ( .IN1(n158), .IN2(n156), .IN3(n248), .QN(n258) );
  AO22X1 U323 ( .IN1(ind[1]), .IN2(n262), .IN3(n767), .IN4(n263), .Q(n512) );
  AO22X1 U324 ( .IN1(ind[0]), .IN2(n262), .IN3(n264), .IN4(n767), .Q(n513) );
  NAND3X0 U325 ( .IN1(play), .IN2(n823), .IN3(speaker), .QN(n266) );
  AO21X1 U326 ( .IN1(play), .IN2(n267), .IN3(n150), .Q(n268) );
  NAND3X0 U327 ( .IN1(n267), .IN2(n150), .IN3(play), .QN(n265) );
  NAND3X0 U328 ( .IN1(n269), .IN2(n270), .IN3(n271), .QN(n267) );
  OA222X1 U329 ( .IN1(n272), .IN2(n273), .IN3(n274), .IN4(n275), .IN5(n276), 
        .IN6(n277), .Q(n271) );
  NAND3X0 U330 ( .IN1(counter[0]), .IN2(n828), .IN3(n278), .QN(n270) );
  OA22X1 U331 ( .IN1(n279), .IN2(n147), .IN3(n280), .IN4(n148), .Q(n269) );
  AO22X1 U332 ( .IN1(n745), .IN2(sound[2]), .IN3(n282), .IN4(n283), .Q(n516)
         );
  AO22X1 U333 ( .IN1(n745), .IN2(sound[1]), .IN3(n284), .IN4(n283), .Q(n517)
         );
  AO21X1 U334 ( .IN1(data_out[1]), .IN2(n257), .IN3(n285), .Q(n284) );
  AO22X1 U335 ( .IN1(n745), .IN2(sound[0]), .IN3(n286), .IN4(n283), .Q(n518)
         );
  AO221X1 U336 ( .IN1(n264), .IN2(n768), .IN3(data_out[0]), .IN4(n257), .IN5(
        n256), .Q(n286) );
  AO22X1 U337 ( .IN1(n744), .IN2(play), .IN3(n288), .IN4(n289), .Q(n519) );
  NAND3X0 U338 ( .IN1(n751), .IN2(n290), .IN3(n758), .QN(n288) );
  NAND3X0 U339 ( .IN1(n292), .IN2(n262), .IN3(n746), .QN(n283) );
  NAND3X0 U340 ( .IN1(n293), .IN2(n294), .IN3(n751), .QN(n248) );
  OR2X1 U341 ( .IN1(n295), .IN2(n780), .Q(n293) );
  NAND3X0 U342 ( .IN1(n296), .IN2(n780), .IN3(n768), .QN(n262) );
  OR4X1 U343 ( .IN1(k[0]), .IN2(k[1]), .IN3(k[2]), .IN4(k[3]), .Q(n296) );
  OR2X1 U344 ( .IN1(n780), .IN2(n297), .Q(n292) );
  AO22X1 U345 ( .IN1(n768), .IN2(n298), .IN3(nloss), .IN4(n753), .Q(n520) );
  NAND3X0 U346 ( .IN1(n299), .IN2(n300), .IN3(n754), .QN(n298) );
  AO222X1 U347 ( .IN1(max[3]), .IN2(n302), .IN3(scan[3]), .IN4(n303), .IN5(
        address[3]), .IN6(n304), .Q(n521) );
  AO222X1 U348 ( .IN1(max[2]), .IN2(n302), .IN3(scan[2]), .IN4(n303), .IN5(
        address[2]), .IN6(n304), .Q(n522) );
  AO222X1 U349 ( .IN1(max[1]), .IN2(n302), .IN3(scan[1]), .IN4(n303), .IN5(
        address[1]), .IN6(n304), .Q(n523) );
  AO222X1 U350 ( .IN1(max[0]), .IN2(n302), .IN3(scan[0]), .IN4(n303), .IN5(
        address[0]), .IN6(n304), .Q(n524) );
  AO22X1 U351 ( .IN1(n757), .IN2(scan[3]), .IN3(N662), .IN4(n305), .Q(n525) );
  AO22X1 U352 ( .IN1(n757), .IN2(scan[2]), .IN3(N661), .IN4(n305), .Q(n526) );
  AO22X1 U353 ( .IN1(n757), .IN2(scan[1]), .IN3(N660), .IN4(n305), .Q(n527) );
  AO22X1 U354 ( .IN1(n757), .IN2(scan[0]), .IN3(n786), .IN4(n305), .Q(n528) );
  AO22X1 U355 ( .IN1(timebase[4]), .IN2(n755), .IN3(N766), .IN4(n306), .Q(n529) );
  AO22X1 U356 ( .IN1(timebase[3]), .IN2(n755), .IN3(N765), .IN4(n306), .Q(n530) );
  AO22X1 U357 ( .IN1(timebase[2]), .IN2(n755), .IN3(N764), .IN4(n306), .Q(n531) );
  AO22X1 U358 ( .IN1(timebase[1]), .IN2(n755), .IN3(N763), .IN4(n306), .Q(n532) );
  AO221X1 U359 ( .IN1(n782), .IN2(n306), .IN3(timebase[0]), .IN4(n755), .IN5(
        n307), .Q(n533) );
  NAND3X0 U360 ( .IN1(n754), .IN2(n310), .IN3(test_so2), .QN(n309) );
  AO22X1 U361 ( .IN1(n736), .IN2(n812), .IN3(memory_31__0_), .IN4(n311), .Q(
        n535) );
  AO22X1 U362 ( .IN1(n819), .IN2(n736), .IN3(memory_30__0_), .IN4(n312), .Q(
        n536) );
  AO22X1 U363 ( .IN1(n818), .IN2(n736), .IN3(memory_29__0_), .IN4(n313), .Q(
        n537) );
  AO22X1 U364 ( .IN1(n817), .IN2(n736), .IN3(memory_28__0_), .IN4(n314), .Q(
        n538) );
  AO22X1 U365 ( .IN1(n816), .IN2(n736), .IN3(memory_27__0_), .IN4(n315), .Q(
        n539) );
  AO22X1 U366 ( .IN1(n815), .IN2(n736), .IN3(memory_26__0_), .IN4(n316), .Q(
        n540) );
  AO22X1 U367 ( .IN1(n814), .IN2(n736), .IN3(memory_25__0_), .IN4(n317), .Q(
        n541) );
  AO22X1 U368 ( .IN1(n813), .IN2(n736), .IN3(memory_24__0_), .IN4(n318), .Q(
        n542) );
  AO22X1 U369 ( .IN1(n795), .IN2(n737), .IN3(memory_23__0_), .IN4(n319), .Q(
        n543) );
  AO22X1 U370 ( .IN1(n794), .IN2(n736), .IN3(memory_22__0_), .IN4(n320), .Q(
        n544) );
  AO22X1 U371 ( .IN1(n793), .IN2(n736), .IN3(memory_21__0_), .IN4(n321), .Q(
        n545) );
  AO22X1 U372 ( .IN1(n792), .IN2(n737), .IN3(memory_20__0_), .IN4(n322), .Q(
        n546) );
  AO22X1 U373 ( .IN1(n791), .IN2(n737), .IN3(memory_19__0_), .IN4(n323), .Q(
        n547) );
  AO22X1 U374 ( .IN1(n790), .IN2(n737), .IN3(memory_18__0_), .IN4(n324), .Q(
        n548) );
  AO22X1 U375 ( .IN1(n789), .IN2(n737), .IN3(memory_17__0_), .IN4(n325), .Q(
        n549) );
  AO22X1 U376 ( .IN1(n788), .IN2(n737), .IN3(memory_16__0_), .IN4(n326), .Q(
        n550) );
  AO22X1 U377 ( .IN1(n803), .IN2(n737), .IN3(memory_15__0_), .IN4(n327), .Q(
        n551) );
  AO22X1 U378 ( .IN1(n802), .IN2(n737), .IN3(test_so1), .IN4(n328), .Q(n552)
         );
  AO22X1 U379 ( .IN1(n801), .IN2(n737), .IN3(memory_13__0_), .IN4(n329), .Q(
        n553) );
  AO22X1 U380 ( .IN1(n800), .IN2(n737), .IN3(memory_12__0_), .IN4(n330), .Q(
        n554) );
  AO22X1 U381 ( .IN1(n799), .IN2(n737), .IN3(memory_11__0_), .IN4(n331), .Q(
        n555) );
  AO22X1 U382 ( .IN1(n798), .IN2(n737), .IN3(memory_10__0_), .IN4(n332), .Q(
        n556) );
  AO22X1 U383 ( .IN1(n797), .IN2(n738), .IN3(memory_9__0_), .IN4(n333), .Q(
        n557) );
  AO22X1 U384 ( .IN1(n796), .IN2(n738), .IN3(memory_8__0_), .IN4(n334), .Q(
        n558) );
  AO22X1 U385 ( .IN1(n811), .IN2(n738), .IN3(memory_7__0_), .IN4(n335), .Q(
        n559) );
  AO22X1 U386 ( .IN1(n810), .IN2(n738), .IN3(memory_6__0_), .IN4(n336), .Q(
        n560) );
  AO22X1 U387 ( .IN1(n809), .IN2(n738), .IN3(memory_5__0_), .IN4(n337), .Q(
        n561) );
  AO22X1 U388 ( .IN1(n808), .IN2(n738), .IN3(memory_4__0_), .IN4(n338), .Q(
        n562) );
  AO22X1 U389 ( .IN1(n807), .IN2(n738), .IN3(memory_3__0_), .IN4(n339), .Q(
        n563) );
  AO22X1 U390 ( .IN1(n806), .IN2(n738), .IN3(memory_2__0_), .IN4(n340), .Q(
        n564) );
  AO22X1 U391 ( .IN1(n805), .IN2(n738), .IN3(memory_1__0_), .IN4(n341), .Q(
        n565) );
  AO22X1 U392 ( .IN1(n804), .IN2(n736), .IN3(memory_0__0_), .IN4(n342), .Q(
        n566) );
  AO22X1 U393 ( .IN1(n736), .IN2(n308), .IN3(num[0]), .IN4(n769), .Q(n567) );
  AO22X1 U394 ( .IN1(n741), .IN2(n819), .IN3(memory_30__1_), .IN4(n312), .Q(
        n568) );
  AO22X1 U395 ( .IN1(n741), .IN2(n818), .IN3(memory_29__1_), .IN4(n313), .Q(
        n569) );
  AO22X1 U396 ( .IN1(n741), .IN2(n817), .IN3(memory_28__1_), .IN4(n314), .Q(
        n570) );
  AO22X1 U397 ( .IN1(n741), .IN2(n816), .IN3(memory_27__1_), .IN4(n315), .Q(
        n571) );
  AO22X1 U398 ( .IN1(n741), .IN2(n815), .IN3(memory_26__1_), .IN4(n316), .Q(
        n572) );
  AO22X1 U399 ( .IN1(n741), .IN2(n814), .IN3(memory_25__1_), .IN4(n317), .Q(
        n573) );
  AO22X1 U400 ( .IN1(n741), .IN2(n813), .IN3(memory_24__1_), .IN4(n318), .Q(
        n574) );
  AO22X1 U401 ( .IN1(n741), .IN2(n795), .IN3(memory_23__1_), .IN4(n319), .Q(
        n575) );
  AO22X1 U402 ( .IN1(n741), .IN2(n794), .IN3(memory_22__1_), .IN4(n320), .Q(
        n576) );
  AO22X1 U403 ( .IN1(n740), .IN2(n793), .IN3(memory_21__1_), .IN4(n321), .Q(
        n577) );
  AO22X1 U404 ( .IN1(n740), .IN2(n792), .IN3(memory_20__1_), .IN4(n322), .Q(
        n578) );
  AO22X1 U405 ( .IN1(n740), .IN2(n791), .IN3(memory_19__1_), .IN4(n323), .Q(
        n579) );
  AO22X1 U406 ( .IN1(n740), .IN2(n790), .IN3(memory_18__1_), .IN4(n324), .Q(
        n580) );
  AO22X1 U407 ( .IN1(n740), .IN2(n789), .IN3(memory_17__1_), .IN4(n325), .Q(
        n581) );
  AO22X1 U408 ( .IN1(n740), .IN2(n788), .IN3(memory_16__1_), .IN4(n326), .Q(
        n582) );
  AND2X1 U409 ( .IN1(n353), .IN2(test_so2), .Q(n351) );
  AO22X1 U410 ( .IN1(n740), .IN2(n803), .IN3(memory_15__1_), .IN4(n327), .Q(
        n583) );
  AO22X1 U411 ( .IN1(n740), .IN2(n802), .IN3(memory_14__1_), .IN4(n328), .Q(
        n584) );
  AO22X1 U412 ( .IN1(n740), .IN2(n801), .IN3(memory_13__1_), .IN4(n329), .Q(
        n585) );
  AO22X1 U413 ( .IN1(n740), .IN2(n800), .IN3(memory_12__1_), .IN4(n330), .Q(
        n586) );
  AO22X1 U414 ( .IN1(n740), .IN2(n799), .IN3(memory_11__1_), .IN4(n331), .Q(
        n587) );
  AO22X1 U415 ( .IN1(n740), .IN2(n798), .IN3(memory_10__1_), .IN4(n332), .Q(
        n588) );
  AO22X1 U416 ( .IN1(n739), .IN2(n797), .IN3(memory_9__1_), .IN4(n333), .Q(
        n589) );
  AO22X1 U417 ( .IN1(n739), .IN2(n796), .IN3(memory_8__1_), .IN4(n334), .Q(
        n590) );
  AND2X1 U418 ( .IN1(n355), .IN2(test_so2), .Q(n354) );
  AO22X1 U419 ( .IN1(n739), .IN2(n811), .IN3(memory_7__1_), .IN4(n335), .Q(
        n591) );
  AO22X1 U420 ( .IN1(n739), .IN2(n810), .IN3(memory_6__1_), .IN4(n336), .Q(
        n592) );
  AO22X1 U421 ( .IN1(n739), .IN2(n809), .IN3(memory_5__1_), .IN4(n337), .Q(
        n593) );
  AO22X1 U422 ( .IN1(n739), .IN2(n808), .IN3(memory_4__1_), .IN4(n338), .Q(
        n594) );
  AO22X1 U423 ( .IN1(n739), .IN2(n807), .IN3(memory_3__1_), .IN4(n339), .Q(
        n595) );
  AO22X1 U424 ( .IN1(n739), .IN2(n806), .IN3(memory_2__1_), .IN4(n340), .Q(
        n596) );
  AO22X1 U425 ( .IN1(n739), .IN2(n805), .IN3(memory_1__1_), .IN4(n341), .Q(
        n597) );
  AO22X1 U426 ( .IN1(n739), .IN2(n804), .IN3(memory_0__1_), .IN4(n342), .Q(
        n598) );
  AND2X1 U427 ( .IN1(n357), .IN2(test_so2), .Q(n356) );
  AO22X1 U428 ( .IN1(n739), .IN2(n308), .IN3(num[1]), .IN4(n769), .Q(n599) );
  AO22X1 U429 ( .IN1(count_4_), .IN2(n743), .IN3(n358), .IN4(n359), .Q(n600)
         );
  AO22X1 U430 ( .IN1(r194_SUM_4_), .IN2(n360), .IN3(timebase[4]), .IN4(n361), 
        .Q(n358) );
  AO22X1 U431 ( .IN1(n362), .IN2(n359), .IN3(count_3_), .IN4(n743), .Q(n601)
         );
  AO222X1 U432 ( .IN1(r194_SUM_3_), .IN2(n363), .IN3(n364), .IN4(n365), .IN5(
        timebase[3]), .IN6(n361), .Q(n362) );
  NAND4X0 U433 ( .IN1(n761), .IN2(n367), .IN3(n758), .IN4(n368), .QN(n363) );
  AO22X1 U434 ( .IN1(count_2_), .IN2(n743), .IN3(n370), .IN4(n359), .Q(n602)
         );
  AO22X1 U435 ( .IN1(r194_SUM_2_), .IN2(n360), .IN3(timebase[2]), .IN4(n361), 
        .Q(n370) );
  AO22X1 U436 ( .IN1(count_1_1), .IN2(n743), .IN3(n371), .IN4(n359), .Q(n603)
         );
  AO22X1 U437 ( .IN1(r194_SUM_1_), .IN2(n360), .IN3(timebase[1]), .IN4(n361), 
        .Q(n371) );
  AO22X1 U438 ( .IN1(n372), .IN2(n359), .IN3(count_0_1), .IN4(n743), .Q(n604)
         );
  AO221X1 U439 ( .IN1(timebase[0]), .IN2(n361), .IN3(n820), .IN4(n360), .IN5(
        n760), .Q(n372) );
  AO22X1 U440 ( .IN1(n373), .IN2(max[3]), .IN3(N760), .IN4(n374), .Q(n605) );
  AO22X1 U441 ( .IN1(n373), .IN2(max[2]), .IN3(N759), .IN4(n374), .Q(n606) );
  AO22X1 U442 ( .IN1(n373), .IN2(max[1]), .IN3(N758), .IN4(n374), .Q(n607) );
  AO22X1 U443 ( .IN1(n373), .IN2(max[0]), .IN3(n787), .IN4(n374), .Q(n608) );
  AO22X1 U444 ( .IN1(n373), .IN2(max[4]), .IN3(N761), .IN4(n374), .Q(n609) );
  AOI21X1 U445 ( .IN1(n364), .IN2(n376), .IN3(n377), .QN(n373) );
  AO21X1 U446 ( .IN1(N657), .IN2(n774), .IN3(n378), .Q(n376) );
  AO22X1 U447 ( .IN1(n379), .IN2(n359), .IN3(count_5_), .IN4(n743), .Q(n610)
         );
  NAND4X0 U448 ( .IN1(n297), .IN2(n380), .IN3(n291), .IN4(n381), .QN(n359) );
  NOR3X0 U449 ( .IN1(n382), .IN2(n383), .IN3(n760), .QN(n381) );
  AND2X1 U450 ( .IN1(n780), .IN2(n378), .Q(n382) );
  AO221X1 U451 ( .IN1(timebase[5]), .IN2(n361), .IN3(r194_SUM_5_), .IN4(n360), 
        .IN5(n760), .Q(n379) );
  NAND3X0 U452 ( .IN1(n386), .IN2(n384), .IN3(n367), .QN(n360) );
  AOI21X1 U453 ( .IN1(n775), .IN2(n285), .IN3(n387), .QN(n367) );
  AO21X1 U454 ( .IN1(n291), .IN2(n758), .IN3(n364), .Q(n386) );
  AND2X1 U455 ( .IN1(n388), .IN2(n366), .Q(n291) );
  AO221X1 U456 ( .IN1(n768), .IN2(n777), .IN3(n364), .IN4(n756), .IN5(n389), 
        .Q(n361) );
  AO21X1 U457 ( .IN1(n285), .IN2(n390), .IN3(n257), .Q(n389) );
  AO221X1 U458 ( .IN1(N767), .IN2(n306), .IN3(timebase[5]), .IN4(n755), .IN5(
        n307), .Q(n611) );
  AO22X1 U459 ( .IN1(n739), .IN2(n812), .IN3(memory_31__1_), .IN4(n311), .Q(
        n612) );
  AND2X1 U460 ( .IN1(n393), .IN2(test_so2), .Q(n344) );
  AO222X1 U461 ( .IN1(max[4]), .IN2(n302), .IN3(scan[4]), .IN4(n303), .IN5(
        address[4]), .IN6(n304), .Q(n613) );
  AO22X1 U462 ( .IN1(scan[4]), .IN2(n757), .IN3(N663), .IN4(n305), .Q(n614) );
  AND2X1 U463 ( .IN1(n395), .IN2(n396), .Q(n305) );
  AO21X1 U464 ( .IN1(n387), .IN2(N657), .IN3(n759), .Q(n395) );
  AO21X1 U465 ( .IN1(n364), .IN2(n397), .IN3(n769), .Q(n396) );
  AO21X1 U466 ( .IN1(N657), .IN2(n759), .IN3(n387), .Q(n397) );
  NAND4X0 U467 ( .IN1(n398), .IN2(n399), .IN3(n400), .IN4(n401), .QN(N915) );
  NOR4X0 U468 ( .IN1(n771), .IN2(n402), .IN3(n256), .IN4(n369), .QN(n401) );
  NOR3X0 U469 ( .IN1(n392), .IN2(N657), .IN3(n404), .QN(n385) );
  AND3X1 U470 ( .IN1(n260), .IN2(n300), .IN3(n406), .Q(n400) );
  NAND4X0 U471 ( .IN1(n407), .IN2(n764), .IN3(n408), .IN4(n409), .QN(N914) );
  AND4X1 U472 ( .IN1(n410), .IN2(n260), .IN3(n411), .IN4(n394), .Q(n409) );
  NAND3X0 U473 ( .IN1(n364), .IN2(n781), .IN3(n387), .QN(n413) );
  NAND4X0 U474 ( .IN1(n380), .IN2(n764), .IN3(n414), .IN4(n415), .QN(N913) );
  NOR4X0 U475 ( .IN1(n772), .IN2(n770), .IN3(n416), .IN4(n391), .QN(n415) );
  AND3X1 U476 ( .IN1(n768), .IN2(n780), .IN3(n301), .Q(n416) );
  AO221X1 U477 ( .IN1(n417), .IN2(n158), .IN3(n263), .IN4(n418), .IN5(n419), 
        .Q(n301) );
  AO22X1 U478 ( .IN1(k[0]), .IN2(data_out[0]), .IN3(data_out[1]), .IN4(n777), 
        .Q(n419) );
  OAI222X1 U479 ( .IN1(n775), .IN2(data_out[1]), .IN3(n420), .IN4(data_out[0]), 
        .IN5(n776), .IN6(n158), .QN(n418) );
  AO21X1 U480 ( .IN1(n421), .IN2(n423), .IN3(n765), .Q(n247) );
  AND4X1 U481 ( .IN1(n751), .IN2(n425), .IN3(n426), .IN4(n295), .Q(n380) );
  OR2X1 U482 ( .IN1(n375), .IN2(n364), .Q(n426) );
  NAND4X0 U483 ( .IN1(n429), .IN2(n407), .IN3(n430), .IN4(n431), .QN(N912) );
  NOR4X0 U484 ( .IN1(n432), .IN2(n302), .IN3(n773), .IN4(n383), .QN(n431) );
  NAND3X0 U485 ( .IN1(n364), .IN2(n781), .IN3(n774), .QN(n294) );
  NAND3X0 U486 ( .IN1(n434), .IN2(n752), .IN3(gamma[2]), .QN(n427) );
  AND3X1 U487 ( .IN1(n755), .IN2(n435), .IN3(n436), .Q(n430) );
  AO21X1 U488 ( .IN1(n412), .IN2(n759), .IN3(n307), .Q(n377) );
  AO21X1 U489 ( .IN1(n434), .IN2(n234), .IN3(start), .Q(n307) );
  NOR4X0 U490 ( .IN1(n236), .IN2(gamma[1]), .IN3(gamma[3]), .IN4(gamma[4]), 
        .QN(n434) );
  AND3X1 U491 ( .IN1(n404), .IN2(n781), .IN3(n364), .Q(n412) );
  NAND4X0 U492 ( .IN1(max[4]), .IN2(max[3]), .IN3(n437), .IN4(max[2]), .QN(
        n404) );
  AND2X1 U493 ( .IN1(max[0]), .IN2(max[1]), .Q(n437) );
  AOI22X1 U494 ( .IN1(n421), .IN2(n438), .IN3(n439), .IN4(n780), .QN(n407) );
  NAND4X0 U495 ( .IN1(n429), .IN2(n414), .IN3(n441), .IN4(n442), .QN(N911) );
  NOR4X0 U496 ( .IN1(n760), .IN2(n443), .IN3(n444), .IN4(n445), .QN(n442) );
  NOR3X0 U497 ( .IN1(n290), .IN2(data_out[1]), .IN3(n446), .QN(n445) );
  AOI22X1 U498 ( .IN1(data_out[0]), .IN2(n417), .IN3(n158), .IN4(k[0]), .QN(
        n446) );
  AND3X1 U499 ( .IN1(n285), .IN2(n447), .IN3(data_out[1]), .Q(n444) );
  OAI22X1 U500 ( .IN1(n158), .IN2(n420), .IN3(data_out[0]), .IN4(n776), .QN(
        n447) );
  OA222X1 U501 ( .IN1(n403), .IN2(n781), .IN3(n449), .IN4(n780), .IN5(n364), 
        .IN6(n758), .Q(n441) );
  NAND3X0 U502 ( .IN1(n260), .IN2(n295), .IN3(n375), .QN(n282) );
  NAND3X0 U503 ( .IN1(gamma[4]), .IN2(n451), .IN3(n421), .QN(n260) );
  NAND3X0 U504 ( .IN1(gamma[4]), .IN2(n451), .IN3(n448), .QN(n410) );
  NAND3X0 U505 ( .IN1(n411), .IN2(n435), .IN3(n399), .QN(n391) );
  AND2X1 U506 ( .IN1(n451), .IN2(n232), .Q(n438) );
  NOR3X0 U507 ( .IN1(gamma[1]), .IN2(start), .IN3(n233), .QN(n451) );
  AND2X1 U508 ( .IN1(n453), .IN2(n235), .Q(n433) );
  AOI221X1 U509 ( .IN1(n454), .IN2(n455), .IN3(n766), .IN4(n780), .IN5(n383), 
        .QN(n414) );
  AND2X1 U510 ( .IN1(n387), .IN2(n780), .Q(n383) );
  OR3X1 U512 ( .IN1(count_3_), .IN2(count_5_), .IN3(count_4_), .Q(n456) );
  NOR3X0 U513 ( .IN1(gamma[3]), .IN2(start), .IN3(gamma[4]), .QN(n455) );
  AND2X1 U514 ( .IN1(n235), .IN2(n452), .Q(n454) );
  AND3X1 U515 ( .IN1(n405), .IN2(n424), .IN3(n457), .Q(n429) );
  AND2X1 U516 ( .IN1(n422), .IN2(n450), .Q(n387) );
  AND2X1 U517 ( .IN1(n458), .IN2(n233), .Q(n422) );
  AND2X1 U518 ( .IN1(gamma[3]), .IN2(n458), .Q(n423) );
  NOR3X0 U519 ( .IN1(gamma[4]), .IN2(start), .IN3(n235), .QN(n458) );
  AND2X1 U520 ( .IN1(n453), .IN2(gamma[1]), .Q(n428) );
  NOR3X0 U521 ( .IN1(gamma[3]), .IN2(start), .IN3(n232), .QN(n453) );
  AO221X1 U522 ( .IN1(n353), .IN2(n459), .IN3(n393), .IN4(n460), .IN5(n461), 
        .Q(N287) );
  AO22X1 U523 ( .IN1(n355), .IN2(n462), .IN3(n357), .IN4(n463), .Q(n461) );
  NAND4X0 U524 ( .IN1(n464), .IN2(n465), .IN3(n466), .IN4(n467), .QN(n463) );
  AOI22X1 U525 ( .IN1(n350), .IN2(memory_0__0_), .IN3(n349), .IN4(memory_1__0_), .QN(n467) );
  AOI22X1 U526 ( .IN1(n348), .IN2(memory_2__0_), .IN3(n347), .IN4(memory_3__0_), .QN(n466) );
  AOI22X1 U527 ( .IN1(n346), .IN2(memory_4__0_), .IN3(n345), .IN4(memory_5__0_), .QN(n465) );
  AOI22X1 U528 ( .IN1(n343), .IN2(memory_6__0_), .IN3(n352), .IN4(memory_7__0_), .QN(n464) );
  NAND4X0 U529 ( .IN1(n468), .IN2(n469), .IN3(n470), .IN4(n471), .QN(n462) );
  AOI22X1 U530 ( .IN1(n350), .IN2(memory_8__0_), .IN3(n349), .IN4(memory_9__0_), .QN(n471) );
  AOI22X1 U531 ( .IN1(n348), .IN2(memory_10__0_), .IN3(n347), .IN4(
        memory_11__0_), .QN(n470) );
  AOI22X1 U532 ( .IN1(n346), .IN2(memory_12__0_), .IN3(n345), .IN4(
        memory_13__0_), .QN(n469) );
  AOI22X1 U533 ( .IN1(n343), .IN2(test_so1), .IN3(n352), .IN4(memory_15__0_), 
        .QN(n468) );
  NAND4X0 U534 ( .IN1(n472), .IN2(n473), .IN3(n474), .IN4(n475), .QN(n460) );
  AOI22X1 U535 ( .IN1(n350), .IN2(memory_24__0_), .IN3(n349), .IN4(
        memory_25__0_), .QN(n475) );
  AOI22X1 U536 ( .IN1(n348), .IN2(memory_26__0_), .IN3(n347), .IN4(
        memory_27__0_), .QN(n474) );
  AOI22X1 U537 ( .IN1(n346), .IN2(memory_28__0_), .IN3(n345), .IN4(
        memory_29__0_), .QN(n473) );
  AOI22X1 U538 ( .IN1(n343), .IN2(memory_30__0_), .IN3(n352), .IN4(
        memory_31__0_), .QN(n472) );
  NAND4X0 U539 ( .IN1(n476), .IN2(n477), .IN3(n478), .IN4(n479), .QN(n459) );
  AOI22X1 U540 ( .IN1(n350), .IN2(memory_16__0_), .IN3(n349), .IN4(
        memory_17__0_), .QN(n479) );
  AOI22X1 U541 ( .IN1(n348), .IN2(memory_18__0_), .IN3(n347), .IN4(
        memory_19__0_), .QN(n478) );
  AOI22X1 U542 ( .IN1(n346), .IN2(memory_20__0_), .IN3(n345), .IN4(
        memory_21__0_), .QN(n477) );
  AOI22X1 U543 ( .IN1(n343), .IN2(memory_22__0_), .IN3(n352), .IN4(
        memory_23__0_), .QN(n476) );
  AO221X1 U544 ( .IN1(n353), .IN2(n480), .IN3(n393), .IN4(n481), .IN5(n482), 
        .Q(N286) );
  AO22X1 U545 ( .IN1(n355), .IN2(n483), .IN3(n357), .IN4(n484), .Q(n482) );
  NAND4X0 U546 ( .IN1(n485), .IN2(n486), .IN3(n487), .IN4(n488), .QN(n484) );
  AOI22X1 U547 ( .IN1(n350), .IN2(memory_0__1_), .IN3(n349), .IN4(memory_1__1_), .QN(n488) );
  AOI22X1 U548 ( .IN1(n348), .IN2(memory_2__1_), .IN3(n347), .IN4(memory_3__1_), .QN(n487) );
  AOI22X1 U549 ( .IN1(n346), .IN2(memory_4__1_), .IN3(n345), .IN4(memory_5__1_), .QN(n486) );
  AOI22X1 U550 ( .IN1(n343), .IN2(memory_6__1_), .IN3(n352), .IN4(memory_7__1_), .QN(n485) );
  NAND4X0 U551 ( .IN1(n489), .IN2(n490), .IN3(n491), .IN4(n492), .QN(n483) );
  AOI22X1 U552 ( .IN1(n350), .IN2(memory_8__1_), .IN3(n349), .IN4(memory_9__1_), .QN(n492) );
  AOI22X1 U553 ( .IN1(n348), .IN2(memory_10__1_), .IN3(n347), .IN4(
        memory_11__1_), .QN(n491) );
  AOI22X1 U554 ( .IN1(n346), .IN2(memory_12__1_), .IN3(n345), .IN4(
        memory_13__1_), .QN(n490) );
  AOI22X1 U555 ( .IN1(n343), .IN2(memory_14__1_), .IN3(n352), .IN4(
        memory_15__1_), .QN(n489) );
  NAND4X0 U556 ( .IN1(n493), .IN2(n494), .IN3(n495), .IN4(n496), .QN(n481) );
  AOI22X1 U557 ( .IN1(n350), .IN2(memory_24__1_), .IN3(n349), .IN4(
        memory_25__1_), .QN(n496) );
  AOI22X1 U558 ( .IN1(n348), .IN2(memory_26__1_), .IN3(n347), .IN4(
        memory_27__1_), .QN(n495) );
  AOI22X1 U559 ( .IN1(n346), .IN2(memory_28__1_), .IN3(n345), .IN4(
        memory_29__1_), .QN(n494) );
  AOI22X1 U560 ( .IN1(n343), .IN2(memory_30__1_), .IN3(n352), .IN4(
        memory_31__1_), .QN(n493) );
  NAND4X0 U561 ( .IN1(n497), .IN2(n498), .IN3(n499), .IN4(n500), .QN(n480) );
  AOI22X1 U562 ( .IN1(n350), .IN2(memory_16__1_), .IN3(n349), .IN4(
        memory_17__1_), .QN(n500) );
  NOR3X0 U564 ( .IN1(address[1]), .IN2(address[2]), .IN3(address[0]), .QN(n350) );
  AOI22X1 U565 ( .IN1(n348), .IN2(memory_18__1_), .IN3(n347), .IN4(
        memory_19__1_), .QN(n499) );
  NOR3X0 U567 ( .IN1(address[0]), .IN2(address[2]), .IN3(n212), .QN(n348) );
  AOI22X1 U568 ( .IN1(n346), .IN2(memory_20__1_), .IN3(n345), .IN4(
        memory_21__1_), .QN(n498) );
  AND3X1 U569 ( .IN1(address[2]), .IN2(n212), .IN3(address[0]), .Q(n345) );
  AND3X1 U570 ( .IN1(n213), .IN2(n212), .IN3(address[2]), .Q(n346) );
  AOI22X1 U571 ( .IN1(n343), .IN2(memory_22__1_), .IN3(n352), .IN4(
        memory_23__1_), .QN(n497) );
  AND3X1 U572 ( .IN1(address[1]), .IN2(address[2]), .IN3(address[0]), .Q(n352)
         );
  AND3X1 U573 ( .IN1(address[2]), .IN2(n213), .IN3(address[1]), .Q(n343) );
  XOR2X1 U574 ( .IN1(count[1]), .IN2(count[0]), .Q(N220) );
  XOR2X1 U575 ( .IN1(n503), .IN2(N162), .Q(n501) );
  XOR2X1 U576 ( .IN1(n149), .IN2(counter[1]), .Q(n504) );
  AO221X1 U577 ( .IN1(n276), .IN2(n825), .IN3(n272), .IN4(n824), .IN5(n506), 
        .Q(n505) );
  AO221X1 U578 ( .IN1(n507), .IN2(n147), .IN3(n826), .IN4(n274), .IN5(n278), 
        .Q(n506) );
  NOR3X0 U579 ( .IN1(sound[0]), .IN2(sound[1]), .IN3(n207), .QN(n278) );
  NAND3X0 U580 ( .IN1(sound[0]), .IN2(n207), .IN3(sound[1]), .QN(n275) );
  AO21X1 U581 ( .IN1(n827), .IN2(n148), .IN3(n281), .Q(n507) );
  NOR3X0 U582 ( .IN1(sound[1]), .IN2(sound[2]), .IN3(n209), .QN(n281) );
  NAND3X0 U583 ( .IN1(sound[0]), .IN2(n208), .IN3(sound[2]), .QN(n280) );
  NAND3X0 U584 ( .IN1(n208), .IN2(n207), .IN3(n209), .QN(n273) );
  NAND3X0 U585 ( .IN1(n209), .IN2(n207), .IN3(sound[1]), .QN(n277) );
  HADDX1 r197_U1_1_1 ( .A0(max[1]), .B0(max[0]), .C1(r197_carry_2_), .SO(N758)
         );
  HADDX1 r197_U1_1_2 ( .A0(max[2]), .B0(r197_carry_2_), .C1(r197_carry_3_), 
        .SO(N759) );
  HADDX1 r197_U1_1_3 ( .A0(max[3]), .B0(r197_carry_3_), .C1(r197_carry_4_), 
        .SO(N760) );
  HADDX1 r196_U1_1_1 ( .A0(scan[1]), .B0(scan[0]), .C1(r196_carry_2_), .SO(
        N660) );
  HADDX1 r196_U1_1_2 ( .A0(scan[2]), .B0(r196_carry_2_), .C1(r196_carry_3_), 
        .SO(N661) );
  HADDX1 r196_U1_1_3 ( .A0(scan[3]), .B0(r196_carry_3_), .C1(r196_carry_4_), 
        .SO(N662) );
  SDFFARX1 s_reg ( .D(n515), .SI(play), .SE(test_se), .CLK(clock), .RSTB(n742), 
        .Q(n844), .QN(n150) );
  SDFFARX1 count_reg_0_ ( .D(n151), .SI(count_5_), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count[0]), .QN(n151) );
  SDFFARX1 counter_reg_2_ ( .D(N215), .SI(counter[1]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(N162), .QN(n147) );
  SDFFARX1 counter_reg_1_ ( .D(N214), .SI(counter[0]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(counter[1]), .QN(n148) );
  SDFFARX1 counter_reg_0_ ( .D(N213), .SI(count[1]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(counter[0]), .QN(n149) );
  SDFFARX1 data_out_reg_1_ ( .D(N286), .SI(data_out[0]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(data_out[1]), .QN(n156) );
  SDFFARX1 data_out_reg_0_ ( .D(N287), .SI(data_in[1]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(data_out[0]), .QN(n158) );
  SDFFARX1 address_reg_4_ ( .D(n613), .SI(address[3]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(address[4]), .QN(n210) );
  SDFFARX1 address_reg_3_ ( .D(n521), .SI(address[2]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(address[3]), .QN(n211) );
  SDFFARX1 address_reg_1_ ( .D(n523), .SI(address[0]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(address[1]), .QN(n212) );
  SDFFARX1 address_reg_0_ ( .D(n524), .SI(test_si1), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(address[0]), .QN(n213) );
  SDFFARX1 gamma_reg_4_ ( .D(N915), .SI(gamma[3]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(gamma[4]), .QN(n232) );
  SDFFARX1 gamma_reg_3_ ( .D(N914), .SI(gamma[2]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(gamma[3]), .QN(n233) );
  SDFFARX1 ind_reg_1_ ( .D(n512), .SI(ind[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(ind[1]), .QN(n199) );
  SDFFARX1 ind_reg_0_ ( .D(n513), .SI(gamma[4]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(ind[0]), .QN(n200) );
  SDFFARX1 gamma_reg_0_ ( .D(N911), .SI(data_out[1]), .SE(test_se), .CLK(clock), .RSTB(n742), .Q(gamma[0]), .QN(n236) );
  SDFFARX1 gamma_reg_2_ ( .D(N913), .SI(gamma[1]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(gamma[2]), .QN(n234) );
  SDFFARX1 gamma_reg_1_ ( .D(N912), .SI(gamma[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(gamma[1]), .QN(n235) );
  SDFFARX1 sound_reg_2_ ( .D(n516), .SI(sound[1]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(sound[2]), .QN(n207) );
  SDFFARX1 sound_reg_1_ ( .D(n517), .SI(sound[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(sound[1]), .QN(n208) );
  SDFFARX1 sound_reg_0_ ( .D(n518), .SI(scan[4]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(sound[0]), .QN(n209) );
  SDFFARX1 num_reg_0_ ( .D(n151), .SI(nloss), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(num[0]) );
  SDFFARX1 num_reg_1_ ( .D(N220), .SI(num[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(num[1]) );
  SDFFARX1 count_reg_1_ ( .D(N220), .SI(count[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count[1]) );
  SDFFARX1 memory_reg_30__0_ ( .D(n536), .SI(memory_29__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_30__0_) );
  SDFFARX1 memory_reg_30__1_ ( .D(n568), .SI(memory_30__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_30__1_) );
  SDFFARX1 memory_reg_29__0_ ( .D(n537), .SI(memory_28__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_29__0_) );
  SDFFARX1 memory_reg_28__0_ ( .D(n538), .SI(memory_27__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_28__0_) );
  SDFFARX1 memory_reg_29__1_ ( .D(n569), .SI(memory_29__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_29__1_) );
  SDFFARX1 memory_reg_28__1_ ( .D(n570), .SI(memory_28__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_28__1_) );
  SDFFARX1 memory_reg_31__1_ ( .D(n612), .SI(memory_31__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_31__1_) );
  SDFFARX1 memory_reg_31__0_ ( .D(n535), .SI(memory_30__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_31__0_) );
  SDFFARX1 memory_reg_15__1_ ( .D(n583), .SI(memory_15__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_15__1_) );
  SDFFARX1 memory_reg_14__1_ ( .D(n584), .SI(test_si2), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_14__1_) );
  SDFFARX1 memory_reg_13__1_ ( .D(n585), .SI(memory_13__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_13__1_) );
  SDFFARX1 memory_reg_12__1_ ( .D(n586), .SI(memory_12__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_12__1_) );
  SDFFARX1 memory_reg_7__1_ ( .D(n591), .SI(memory_7__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_7__1_) );
  SDFFARX1 memory_reg_6__1_ ( .D(n592), .SI(memory_6__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_6__1_) );
  SDFFARX1 memory_reg_5__1_ ( .D(n593), .SI(memory_5__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_5__1_) );
  SDFFARX1 memory_reg_4__1_ ( .D(n594), .SI(memory_4__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_4__1_) );
  SDFFARX1 memory_reg_15__0_ ( .D(n551), .SI(memory_14__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_15__0_) );
  SDFFARX1 memory_reg_14__0_ ( .D(n552), .SI(memory_13__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(test_so1) );
  SDFFARX1 memory_reg_13__0_ ( .D(n553), .SI(memory_12__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_13__0_) );
  SDFFARX1 memory_reg_12__0_ ( .D(n554), .SI(memory_11__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_12__0_) );
  SDFFARX1 memory_reg_7__0_ ( .D(n559), .SI(memory_6__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_7__0_) );
  SDFFARX1 memory_reg_6__0_ ( .D(n560), .SI(memory_5__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_6__0_) );
  SDFFARX1 memory_reg_5__0_ ( .D(n561), .SI(memory_4__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_5__0_) );
  SDFFARX1 memory_reg_4__0_ ( .D(n562), .SI(memory_3__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_4__0_) );
  SDFFARX1 memory_reg_23__1_ ( .D(n575), .SI(memory_23__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_23__1_) );
  SDFFARX1 memory_reg_22__1_ ( .D(n576), .SI(memory_22__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_22__1_) );
  SDFFARX1 memory_reg_21__1_ ( .D(n577), .SI(memory_21__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_21__1_) );
  SDFFARX1 memory_reg_20__1_ ( .D(n578), .SI(memory_20__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_20__1_) );
  SDFFARX1 memory_reg_23__0_ ( .D(n543), .SI(memory_22__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_23__0_) );
  SDFFARX1 memory_reg_22__0_ ( .D(n544), .SI(memory_21__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_22__0_) );
  SDFFARX1 memory_reg_21__0_ ( .D(n545), .SI(memory_20__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_21__0_) );
  SDFFARX1 memory_reg_20__0_ ( .D(n546), .SI(memory_19__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_20__0_) );
  SDFFARX1 wr_reg ( .D(n534), .SI(timebase[5]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(test_so2) );
  SDFFARX1 data_in_reg_1_ ( .D(n599), .SI(data_in[0]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(data_in[1]) );
  SDFFARX1 data_in_reg_0_ ( .D(n567), .SI(N162), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(data_in[0]) );
  SDFFARX1 memory_reg_18__1_ ( .D(n580), .SI(memory_18__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_18__1_) );
  SDFFARX1 memory_reg_16__1_ ( .D(n582), .SI(memory_16__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_16__1_) );
  SDFFARX1 memory_reg_10__1_ ( .D(n588), .SI(memory_10__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_10__1_) );
  SDFFARX1 memory_reg_8__1_ ( .D(n590), .SI(memory_8__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_8__1_) );
  SDFFARX1 memory_reg_2__1_ ( .D(n596), .SI(memory_2__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_2__1_) );
  SDFFARX1 memory_reg_0__1_ ( .D(n598), .SI(memory_0__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_0__1_) );
  SDFFARX1 memory_reg_18__0_ ( .D(n548), .SI(memory_17__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_18__0_) );
  SDFFARX1 memory_reg_16__0_ ( .D(n550), .SI(memory_15__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_16__0_) );
  SDFFARX1 memory_reg_10__0_ ( .D(n556), .SI(memory_9__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_10__0_) );
  SDFFARX1 memory_reg_8__0_ ( .D(n558), .SI(memory_7__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_8__0_) );
  SDFFARX1 memory_reg_2__0_ ( .D(n564), .SI(memory_1__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_2__0_) );
  SDFFARX1 memory_reg_0__0_ ( .D(n566), .SI(max[4]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(memory_0__0_) );
  SDFFARX1 memory_reg_26__1_ ( .D(n572), .SI(memory_26__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_26__1_) );
  SDFFARX1 memory_reg_24__1_ ( .D(n574), .SI(memory_24__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_24__1_) );
  SDFFARX1 memory_reg_19__1_ ( .D(n579), .SI(memory_19__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_19__1_) );
  SDFFARX1 memory_reg_17__1_ ( .D(n581), .SI(memory_17__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_17__1_) );
  SDFFARX1 memory_reg_11__1_ ( .D(n587), .SI(memory_11__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_11__1_) );
  SDFFARX1 memory_reg_9__1_ ( .D(n589), .SI(memory_9__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_9__1_) );
  SDFFARX1 memory_reg_3__1_ ( .D(n595), .SI(memory_3__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_3__1_) );
  SDFFARX1 memory_reg_1__1_ ( .D(n597), .SI(memory_1__0_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_1__1_) );
  SDFFARX1 memory_reg_26__0_ ( .D(n540), .SI(memory_25__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_26__0_) );
  SDFFARX1 memory_reg_24__0_ ( .D(n542), .SI(memory_23__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_24__0_) );
  SDFFARX1 memory_reg_19__0_ ( .D(n547), .SI(memory_18__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_19__0_) );
  SDFFARX1 memory_reg_17__0_ ( .D(n549), .SI(memory_16__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_17__0_) );
  SDFFARX1 memory_reg_11__0_ ( .D(n555), .SI(memory_10__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_11__0_) );
  SDFFARX1 memory_reg_9__0_ ( .D(n557), .SI(memory_8__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_9__0_) );
  SDFFARX1 memory_reg_3__0_ ( .D(n563), .SI(memory_2__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_3__0_) );
  SDFFARX1 memory_reg_1__0_ ( .D(n565), .SI(memory_0__1_), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(memory_1__0_) );
  SDFFARX1 memory_reg_27__1_ ( .D(n571), .SI(memory_27__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_27__1_) );
  SDFFARX1 memory_reg_25__1_ ( .D(n573), .SI(memory_25__0_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_25__1_) );
  SDFFARX1 memory_reg_27__0_ ( .D(n539), .SI(memory_26__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_27__0_) );
  SDFFARX1 memory_reg_25__0_ ( .D(n541), .SI(memory_24__1_), .SE(test_se), 
        .CLK(clock), .RSTB(n742), .Q(memory_25__0_) );
  SDFFARX1 speaker_reg ( .D(n514), .SI(sound[2]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(speaker) );
  SDFFARX1 address_reg_2_ ( .D(n522), .SI(address[1]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(address[2]) );
  SDFFARX1 nloss_reg ( .D(n520), .SI(nl[3]), .SE(test_se), .CLK(clock), .RSTB(
        n742), .Q(nloss) );
  SDFFARX1 scan_reg_4_ ( .D(n614), .SI(scan[3]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(scan[4]) );
  SDFFARX1 scan_reg_3_ ( .D(n525), .SI(scan[2]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(scan[3]) );
  SDFFARX1 scan_reg_2_ ( .D(n526), .SI(scan[1]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(scan[2]) );
  SDFFARX1 scan_reg_1_ ( .D(n527), .SI(scan[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(scan[1]) );
  SDFFARX1 scan_reg_0_ ( .D(n528), .SI(n844), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(scan[0]), .QN(n786) );
  SDFFARX1 max_reg_4_ ( .D(n609), .SI(max[3]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(max[4]) );
  SDFFARX1 max_reg_3_ ( .D(n605), .SI(max[2]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(max[3]) );
  SDFFARX1 max_reg_2_ ( .D(n606), .SI(max[1]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(max[2]) );
  SDFFARX1 max_reg_1_ ( .D(n607), .SI(max[0]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(max[1]) );
  SDFFARX1 max_reg_0_ ( .D(n608), .SI(ind[1]), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(max[0]), .QN(n787) );
  SDFFARX1 timebase_reg_4_ ( .D(n529), .SI(timebase[3]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(timebase[4]) );
  SDFFARX1 timebase_reg_3_ ( .D(n530), .SI(timebase[2]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(timebase[3]) );
  SDFFARX1 timebase_reg_2_ ( .D(n531), .SI(timebase[1]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(timebase[2]) );
  SDFFARX1 timebase_reg_1_ ( .D(n532), .SI(timebase[0]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(timebase[1]) );
  SDFFARX1 timebase_reg_5_ ( .D(n611), .SI(timebase[4]), .SE(test_se), .CLK(
        clock), .RSTB(n742), .Q(timebase[5]) );
  SDFFARX1 timebase_reg_0_ ( .D(n533), .SI(speaker), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(timebase[0]), .QN(n782) );
  SDFFARX1 nl_reg_0_ ( .D(n511), .SI(memory_31__1_), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(nl[0]) );
  SDFFARX1 nl_reg_3_ ( .D(n508), .SI(nl[2]), .SE(test_se), .CLK(clock), .RSTB(
        n742), .Q(nl[3]) );
  SDFFARX1 nl_reg_2_ ( .D(n509), .SI(nl[1]), .SE(test_se), .CLK(clock), .RSTB(
        n742), .Q(nl[2]) );
  SDFFARX1 nl_reg_1_ ( .D(n510), .SI(nl[0]), .SE(test_se), .CLK(clock), .RSTB(
        n742), .Q(nl[1]) );
  SDFFARX1 count_reg2_5_ ( .D(n610), .SI(count_4_), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count_5_) );
  SDFFARX1 count_reg2_3_ ( .D(n601), .SI(count_2_), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count_3_) );
  SDFFARX1 count_reg2_0_ ( .D(n604), .SI(address[4]), .SE(test_se), .CLK(clock), .RSTB(n742), .Q(count_0_1), .QN(n820) );
  SDFFARX1 count_reg2_4_ ( .D(n600), .SI(count_3_), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count_4_) );
  SDFFARX1 count_reg2_2_ ( .D(n602), .SI(count_1_1), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count_2_) );
  SDFFARX1 count_reg2_1_ ( .D(n603), .SI(count_0_1), .SE(test_se), .CLK(clock), 
        .RSTB(n742), .Q(count_1_1) );
  SDFFARX1 play_reg ( .D(n519), .SI(num[1]), .SE(test_se), .CLK(clock), .RSTB(
        n742), .Q(play) );
  INVX4 U586 ( .INP(reset), .ZN(n742) );
  INVX0 U708 ( .INP(n388), .ZN(n756) );
  INVX0 U709 ( .INP(n359), .ZN(n743) );
  NOR2X0 U710 ( .IN1(n303), .IN2(n302), .QN(n304) );
  NOR2X0 U711 ( .IN1(n759), .IN2(n774), .QN(n375) );
  NOR2X0 U712 ( .IN1(n391), .IN2(n766), .QN(n388) );
  NOR2X0 U713 ( .IN1(n391), .IN2(n369), .QN(n449) );
  NAND2X1 U714 ( .IN1(n758), .IN2(n366), .QN(n365) );
  INVX0 U715 ( .INP(n369), .ZN(n761) );
  INVX0 U716 ( .INP(n290), .ZN(n768) );
  INVX0 U717 ( .INP(n377), .ZN(n755) );
  NAND2X1 U718 ( .IN1(n398), .IN2(n308), .QN(n302) );
  INVX0 U719 ( .INP(n282), .ZN(n758) );
  INVX0 U720 ( .INP(n403), .ZN(n774) );
  NOR2X0 U721 ( .IN1(n392), .IN2(n755), .QN(n306) );
  INVX0 U722 ( .INP(n283), .ZN(n745) );
  NAND2X1 U723 ( .IN1(n310), .IN2(n394), .QN(n303) );
  NOR2X0 U724 ( .IN1(n772), .IN2(n762), .QN(n366) );
  NOR2X0 U725 ( .IN1(n373), .IN2(n375), .QN(n374) );
  NOR2X0 U726 ( .IN1(n777), .IN2(n290), .QN(n285) );
  NAND2X1 U727 ( .IN1(n366), .IN2(n384), .QN(n369) );
  INVX0 U728 ( .INP(n394), .ZN(n760) );
  INVX0 U729 ( .INP(n392), .ZN(n759) );
  NAND2X1 U730 ( .IN1(n403), .IN2(n295), .QN(n256) );
  INVX0 U731 ( .INP(n308), .ZN(n769) );
  INVX0 U732 ( .INP(n440), .ZN(n766) );
  NAND2X1 U733 ( .IN1(n756), .IN2(n780), .QN(n368) );
  INVX0 U734 ( .INP(n396), .ZN(n757) );
  INVX0 U735 ( .INP(n257), .ZN(n751) );
  INVX0 U736 ( .INP(n318), .ZN(n813) );
  INVX0 U737 ( .INP(n316), .ZN(n815) );
  OA21X1 U738 ( .IN1(n780), .IN2(n291), .IN3(n754), .Q(n261) );
  INVX0 U739 ( .INP(n436), .ZN(n772) );
  INVX0 U740 ( .INP(n247), .ZN(n764) );
  INVX0 U741 ( .INP(n334), .ZN(n796) );
  INVX0 U742 ( .INP(n332), .ZN(n798) );
  INVX0 U743 ( .INP(n342), .ZN(n804) );
  INVX0 U744 ( .INP(n340), .ZN(n806) );
  INVX0 U745 ( .INP(n326), .ZN(n788) );
  INVX0 U746 ( .INP(n324), .ZN(n790) );
  NAND2X1 U747 ( .IN1(n290), .IN2(n384), .QN(n378) );
  INVX0 U748 ( .INP(n294), .ZN(n773) );
  NAND2X1 U749 ( .IN1(n308), .IN2(n300), .QN(n443) );
  INVX0 U750 ( .INP(n325), .ZN(n789) );
  INVX0 U751 ( .INP(n323), .ZN(n791) );
  INVX0 U752 ( .INP(n322), .ZN(n792) );
  INVX0 U753 ( .INP(n321), .ZN(n793) );
  INVX0 U754 ( .INP(n320), .ZN(n794) );
  INVX0 U755 ( .INP(n319), .ZN(n795) );
  INVX0 U756 ( .INP(n333), .ZN(n797) );
  INVX0 U757 ( .INP(n331), .ZN(n799) );
  INVX0 U758 ( .INP(n330), .ZN(n800) );
  INVX0 U759 ( .INP(n329), .ZN(n801) );
  INVX0 U760 ( .INP(n328), .ZN(n802) );
  INVX0 U761 ( .INP(n327), .ZN(n803) );
  INVX0 U762 ( .INP(n341), .ZN(n805) );
  INVX0 U763 ( .INP(n339), .ZN(n807) );
  INVX0 U764 ( .INP(n338), .ZN(n808) );
  INVX0 U765 ( .INP(n337), .ZN(n809) );
  INVX0 U766 ( .INP(n336), .ZN(n810) );
  INVX0 U767 ( .INP(n335), .ZN(n811) );
  INVX0 U768 ( .INP(n313), .ZN(n818) );
  INVX0 U769 ( .INP(n311), .ZN(n812) );
  INVX0 U770 ( .INP(n312), .ZN(n819) );
  INVX0 U771 ( .INP(n314), .ZN(n817) );
  INVX0 U772 ( .INP(n317), .ZN(n814) );
  INVX0 U773 ( .INP(n315), .ZN(n816) );
  INVX0 U774 ( .INP(n390), .ZN(n775) );
  INVX0 U775 ( .INP(n364), .ZN(n780) );
  INVX0 U776 ( .INP(n248), .ZN(n746) );
  NAND2X1 U777 ( .IN1(n350), .IN2(n344), .QN(n318) );
  NAND2X1 U778 ( .IN1(n348), .IN2(n344), .QN(n316) );
  INVX0 U779 ( .INP(n405), .ZN(n771) );
  NAND2X1 U780 ( .IN1(n354), .IN2(n348), .QN(n332) );
  NAND2X1 U781 ( .IN1(n356), .IN2(n348), .QN(n340) );
  NAND2X1 U782 ( .IN1(n351), .IN2(n348), .QN(n324) );
  NAND2X1 U783 ( .IN1(n354), .IN2(n350), .QN(n334) );
  NAND2X1 U784 ( .IN1(n356), .IN2(n350), .QN(n342) );
  NAND2X1 U785 ( .IN1(n351), .IN2(n350), .QN(n326) );
  INVX0 U786 ( .INP(N657), .ZN(n781) );
  NAND2X1 U787 ( .IN1(n448), .IN2(n423), .QN(n290) );
  NAND2X1 U788 ( .IN1(n448), .IN2(n422), .QN(n308) );
  INVX0 U789 ( .INP(n310), .ZN(n770) );
  INVX0 U790 ( .INP(n424), .ZN(n765) );
  NAND2X1 U791 ( .IN1(n428), .IN2(n450), .QN(n295) );
  NOR2X0 U792 ( .IN1(n763), .IN2(n385), .QN(n297) );
  INVX0 U793 ( .INP(n260), .ZN(n763) );
  NAND2X1 U794 ( .IN1(n352), .IN2(n344), .QN(n311) );
  NAND2X1 U795 ( .IN1(n349), .IN2(n344), .QN(n317) );
  NAND2X1 U796 ( .IN1(n347), .IN2(n344), .QN(n315) );
  NAND2X1 U797 ( .IN1(n346), .IN2(n344), .QN(n314) );
  NAND2X1 U798 ( .IN1(n345), .IN2(n344), .QN(n313) );
  NAND2X1 U799 ( .IN1(n343), .IN2(n344), .QN(n312) );
  NAND2X1 U800 ( .IN1(n354), .IN2(n345), .QN(n329) );
  NAND2X1 U801 ( .IN1(n354), .IN2(n352), .QN(n327) );
  NAND2X1 U802 ( .IN1(n356), .IN2(n345), .QN(n337) );
  NAND2X1 U803 ( .IN1(n356), .IN2(n352), .QN(n335) );
  NAND2X1 U804 ( .IN1(n351), .IN2(n345), .QN(n321) );
  NAND2X1 U805 ( .IN1(n351), .IN2(n352), .QN(n319) );
  NAND2X1 U806 ( .IN1(n438), .IN2(n450), .QN(n392) );
  NAND2X1 U807 ( .IN1(n448), .IN2(n433), .QN(n384) );
  NAND2X1 U808 ( .IN1(n427), .IN2(n406), .QN(n257) );
  NAND2X1 U809 ( .IN1(n354), .IN2(n346), .QN(n330) );
  NAND2X1 U810 ( .IN1(n356), .IN2(n346), .QN(n338) );
  NAND2X1 U811 ( .IN1(n351), .IN2(n346), .QN(n322) );
  NAND2X1 U812 ( .IN1(n354), .IN2(n343), .QN(n328) );
  NAND2X1 U813 ( .IN1(n356), .IN2(n343), .QN(n336) );
  NAND2X1 U814 ( .IN1(n351), .IN2(n343), .QN(n320) );
  NAND2X1 U815 ( .IN1(n768), .IN2(n364), .QN(n300) );
  NAND2X1 U816 ( .IN1(n354), .IN2(n349), .QN(n333) );
  NAND2X1 U817 ( .IN1(n354), .IN2(n347), .QN(n331) );
  NAND2X1 U818 ( .IN1(n356), .IN2(n349), .QN(n341) );
  NAND2X1 U819 ( .IN1(n356), .IN2(n347), .QN(n339) );
  NAND2X1 U820 ( .IN1(n351), .IN2(n349), .QN(n325) );
  NAND2X1 U821 ( .IN1(n351), .IN2(n347), .QN(n323) );
  NAND2X1 U822 ( .IN1(n433), .IN2(n450), .QN(n403) );
  NAND2X1 U823 ( .IN1(n448), .IN2(n438), .QN(n394) );
  NAND2X1 U824 ( .IN1(n421), .IN2(n422), .QN(n310) );
  NOR2X0 U825 ( .IN1(n827), .IN2(n281), .QN(n279) );
  NAND2X1 U826 ( .IN1(n423), .IN2(n450), .QN(n440) );
  INVX0 U827 ( .INP(n410), .ZN(n762) );
  NAND2X1 U828 ( .IN1(n421), .IN2(n433), .QN(n398) );
  NAND2X1 U829 ( .IN1(n421), .IN2(n428), .QN(n406) );
  NAND2X1 U830 ( .IN1(n428), .IN2(n448), .QN(n405) );
  NAND2X1 U831 ( .IN1(n428), .IN2(n452), .QN(n436) );
  NAND2X1 U832 ( .IN1(n433), .IN2(n452), .QN(n399) );
  OA21X1 U833 ( .IN1(n260), .IN2(n780), .IN3(n261), .Q(n246) );
  NAND2X1 U834 ( .IN1(n438), .IN2(n452), .QN(n411) );
  INVX0 U835 ( .INP(n831), .ZN(n779) );
  INVX0 U836 ( .INP(n280), .ZN(n827) );
  INVX0 U837 ( .INP(n841), .ZN(n783) );
  NAND2X1 U838 ( .IN1(n452), .IN2(n423), .QN(n424) );
  NAND2X1 U839 ( .IN1(n452), .IN2(n422), .QN(n435) );
  NAND2X1 U840 ( .IN1(n387), .IN2(N657), .QN(n457) );
  INVX0 U841 ( .INP(n307), .ZN(n754) );
  INVX0 U842 ( .INP(n262), .ZN(n767) );
  INVX0 U843 ( .INP(n829), .ZN(n822) );
  INVX0 U844 ( .INP(n839), .ZN(n785) );
  INVX0 U845 ( .INP(n830), .ZN(n821) );
  INVX0 U846 ( .INP(n840), .ZN(n784) );
  OA21X1 U847 ( .IN1(n385), .IN2(n766), .IN3(n364), .Q(n402) );
  NAND2X1 U848 ( .IN1(n295), .IN2(n427), .QN(n432) );
  NAND2X1 U849 ( .IN1(n290), .IN2(n440), .QN(n439) );
  OA21X1 U850 ( .IN1(n412), .IN2(n392), .IN3(n413), .Q(n408) );
  NAND2X1 U851 ( .IN1(n774), .IN2(n781), .QN(n425) );
  INVX0 U852 ( .INP(n274), .ZN(n828) );
  INVX0 U853 ( .INP(n263), .ZN(n777) );
  NAND2X1 U854 ( .IN1(n776), .IN2(n420), .QN(n390) );
  NOR4X0 U855 ( .IN1(count_1_1), .IN2(count_2_), .IN3(count_0_1), .IN4(n456), 
        .QN(n364) );
  NOR2X0 U856 ( .IN1(n234), .IN2(gamma[0]), .QN(n452) );
  NOR2X0 U857 ( .IN1(gamma[2]), .IN2(gamma[0]), .QN(n448) );
  INVX0 U858 ( .INP(start), .ZN(n752) );
  NOR2X0 U859 ( .IN1(n234), .IN2(n236), .QN(n450) );
  NOR2X0 U860 ( .IN1(n236), .IN2(gamma[2]), .QN(n421) );
  NOR3X0 U861 ( .IN1(address[1]), .IN2(address[2]), .IN3(n213), .QN(n349) );
  NOR3X0 U862 ( .IN1(n212), .IN2(address[2]), .IN3(n213), .QN(n347) );
  INVX0 U863 ( .INP(n255), .ZN(n747) );
  INVX0 U864 ( .INP(n252), .ZN(n748) );
  INVX0 U865 ( .INP(n249), .ZN(n749) );
  INVX0 U866 ( .INP(n242), .ZN(n750) );
  NAND2X1 U867 ( .IN1(play), .IN2(n505), .QN(n502) );
  INVX0 U868 ( .INP(n273), .ZN(n824) );
  INVX0 U869 ( .INP(n277), .ZN(n825) );
  NOR2X0 U870 ( .IN1(n210), .IN2(address[3]), .QN(n353) );
  NOR2X0 U871 ( .IN1(count_1_1), .IN2(count_0_1), .QN(n829) );
  NOR2X0 U872 ( .IN1(n210), .IN2(n211), .QN(n393) );
  NOR2X0 U873 ( .IN1(timebase[1]), .IN2(timebase[0]), .QN(n839) );
  NOR2X0 U874 ( .IN1(n211), .IN2(address[4]), .QN(n355) );
  NOR2X0 U875 ( .IN1(address[3]), .IN2(address[4]), .QN(n357) );
  NOR2X0 U876 ( .IN1(n821), .IN2(count_3_), .QN(n831) );
  NOR2X0 U877 ( .IN1(n822), .IN2(count_2_), .QN(n830) );
  NOR2X0 U878 ( .IN1(n784), .IN2(timebase[3]), .QN(n841) );
  NOR2X0 U879 ( .IN1(n785), .IN2(timebase[2]), .QN(n840) );
  NAND2X1 U880 ( .IN1(counter[1]), .IN2(N162), .QN(n274) );
  NOR2X0 U881 ( .IN1(count_4_), .IN2(n779), .QN(n832) );
  NOR2X0 U882 ( .IN1(timebase[4]), .IN2(n783), .QN(n842) );
  NOR2X0 U883 ( .IN1(n501), .IN2(n502), .QN(N215) );
  NAND2X1 U884 ( .IN1(counter[0]), .IN2(counter[1]), .QN(n503) );
  NOR2X0 U885 ( .IN1(n504), .IN2(n502), .QN(N214) );
  NOR2X0 U886 ( .IN1(counter[0]), .IN2(n502), .QN(N213) );
  OA21X1 U887 ( .IN1(n149), .IN2(n147), .IN3(n274), .Q(n276) );
  NAND2X1 U888 ( .IN1(n265), .IN2(n266), .QN(n514) );
  INVX0 U889 ( .INP(n267), .ZN(n823) );
  NAND2X1 U890 ( .IN1(n265), .IN2(n268), .QN(n515) );
  NOR2X0 U891 ( .IN1(n834), .IN2(n833), .QN(n836) );
  INVX0 U892 ( .INP(n289), .ZN(n744) );
  NAND2X1 U893 ( .IN1(n745), .IN2(n261), .QN(n289) );
  INVX0 U894 ( .INP(n298), .ZN(n753) );
  NAND2X1 U895 ( .IN1(n768), .IN2(n301), .QN(n299) );
  INVX0 U896 ( .INP(n275), .ZN(n826) );
  NBUFFX2 U897 ( .INP(data_in[1]), .Z(n740) );
  NBUFFX2 U898 ( .INP(data_in[1]), .Z(n739) );
  NBUFFX2 U899 ( .INP(data_in[0]), .Z(n736) );
  NBUFFX2 U900 ( .INP(data_in[0]), .Z(n737) );
  NBUFFX2 U901 ( .INP(data_in[1]), .Z(n741) );
  NBUFFX2 U902 ( .INP(data_in[0]), .Z(n738) );
  OA21X1 U903 ( .IN1(n149), .IN2(n148), .IN3(n147), .Q(n272) );
  NAND2X1 U904 ( .IN1(n308), .IN2(n309), .QN(n534) );
  INVX0 U905 ( .INP(k[2]), .ZN(n776) );
  NOR2X0 U906 ( .IN1(n778), .IN2(k[0]), .QN(n417) );
  INVX0 U907 ( .INP(k[1]), .ZN(n778) );
  NOR2X0 U908 ( .IN1(k[0]), .IN2(n417), .QN(n263) );
  NAND2X1 U909 ( .IN1(k[3]), .IN2(n776), .QN(n420) );
  NOR2X0 U910 ( .IN1(k[0]), .IN2(n287), .QN(n264) );
  NOR2X0 U911 ( .IN1(n776), .IN2(k[1]), .QN(n287) );
  AO21X1 U912 ( .IN1(count_1_1), .IN2(count_0_1), .IN3(n829), .Q(r194_SUM_1_)
         );
  AO21X1 U913 ( .IN1(count_2_), .IN2(n822), .IN3(n830), .Q(r194_SUM_2_) );
  AO21X1 U914 ( .IN1(count_3_), .IN2(n821), .IN3(n831), .Q(r194_SUM_3_) );
  XNOR2X1 U915 ( .IN1(count_4_), .IN2(n779), .Q(r194_SUM_4_) );
  XOR2X1 U916 ( .IN1(count_5_), .IN2(n832), .Q(r194_SUM_5_) );
  XNOR2X1 U917 ( .IN1(max[4]), .IN2(scan[4]), .Q(n838) );
  XNOR2X1 U918 ( .IN1(max[3]), .IN2(scan[3]), .Q(n837) );
  XOR2X1 U919 ( .IN1(max[0]), .IN2(scan[0]), .Q(n834) );
  XOR2X1 U920 ( .IN1(max[1]), .IN2(scan[1]), .Q(n833) );
  XNOR2X1 U921 ( .IN1(max[2]), .IN2(scan[2]), .Q(n835) );
  NAND4X0 U922 ( .IN1(n838), .IN2(n837), .IN3(n836), .IN4(n835), .QN(N657) );
  XOR2X1 U923 ( .IN1(r196_carry_4_), .IN2(scan[4]), .Q(N663) );
  XOR2X1 U924 ( .IN1(r197_carry_4_), .IN2(max[4]), .Q(N761) );
  AO21X1 U925 ( .IN1(timebase[1]), .IN2(timebase[0]), .IN3(n839), .Q(N763) );
  AO21X1 U926 ( .IN1(timebase[2]), .IN2(n785), .IN3(n840), .Q(N764) );
  AO21X1 U927 ( .IN1(timebase[3]), .IN2(n784), .IN3(n841), .Q(N765) );
  XNOR2X1 U928 ( .IN1(timebase[4]), .IN2(n783), .Q(N766) );
  XOR2X1 U929 ( .IN1(timebase[5]), .IN2(n842), .Q(N767) );
endmodule

