
//
// Verific Verilog Description of module lvds_loopback_top
//

module lvds_loopback_top (tx_slowclk, rstn, rx_slowclk, txpll_locked, 
            rxpll_locked, rx_data0, prbs_data, led, fa_lock, rxpll_rstn, 
            txpll_rstn);
    input tx_slowclk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rstn /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rx_slowclk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input txpll_locked /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rxpll_locked /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [7:0]rx_data0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [7:0]prbs_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]led /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output fa_lock /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output rxpll_rstn /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output txpll_rstn /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \fa0/pipe0[2]_2 , \fa0/pipe0[3]_2 , \gen/rstn_filt_2 , n19, 
        n20, rstn_sync_2, \gen/f1_prbs_r[1] , \gen/f1_prbs_r[2] , \fa0/cstates[0] , 
        n26, n27, n28, n29, \fa0/pipe0[1]_2 , \pass_cnt[0] , n32, 
        n33, n34, n35, \tx_clk_cnt[0]_2 , \gen/f1_prbs_r[7] , \gen/f1_prbs_r[6] , 
        \gen/rstn_sync_2 , \gen/f1_prbs_r[5] , \gen/f1_prbs_r[4] , n42, 
        n43, \rx_clk_cnt[0]_2 , \gen/f1_prbs_r[3] , n47, n48, \start_cnt[0] , 
        n50, n51, n52, n53, start_fa_2, rstn_filt, n57, n58, 
        n59, \fa0/start_filt_2 , \fa0/cstates[1] , \fa0/data_buff[15]_2 , 
        \fa0/start_sync , n64_2, \fa0/data_buff[14]_2 , \fa0/data_buff[13]_2 , 
        \fa0/data_buff[5]_2 , \fa0/data_buff[4]_2 , \fa0/data_buff[12] , 
        \fa0/pipe0[0] , \fa0/pipe1[0] , \fa0/data_buff[11] , \fa0/data_buff[10] , 
        \fa0/pipe2[0] , \fa0/pipe3[0] , \fa0/pipe4[0] , \fa0/pipe5[0] , 
        \fa0/pipe6[0] , \fa0/pipe7[0] , \fa0/match_i[0] , \fa0/data_buff[9] , 
        \fa0/data_buff[8] , n83, n84, n85, n86, n87, n88, \fa0/data_buff[7] , 
        \fa0/data_buff[6] , n92, n93, n94, n95, \fa0/match_i[1] , 
        \fa0/match_i[2] , \fa0/match_i[3] , \fa0/match_i[4] , \fa0/match_i[5] , 
        \fa0/match_i[6] , \fa0/match_i[7] , n103_2, n104_2, n105_2, 
        n106_2, n107_2, n108_2, n109_2, n110_2, n111_2, n112_2, 
        n113_2, n114_2, n115_2, n116_2, n117_2, n118_2, n119_2, 
        n120_2, n121_2, n122, n123, n124, n125, n126, n127, 
        n128, n129, n130, n131, n132, n133, n134, n135, n136, 
        n137, n138, n139, n140, n141, n142, n143, n144, n145, 
        n146, n147, n148, n149, n150, n151, n152, \det0/testen_sync , 
        \det0/data_sync[6] , stat0, n156_2, n157_2, \det0/data_sync[5] , 
        \det0/data_sync[4] , \det0/data_sync[3] , n161_2, n162_2, n163_2, 
        n164_2, n165_2, n166_2, n167_2, n168_2, \rx_slowclk~O , 
        \det0/data_sync[2] , \det0/data_sync[7] , \det0/data_sync[1] , 
        \det0/data_sync[0] , \det0/prbs_r[0] , \det0/testen_filt , n176_2, 
        n177_2, \det0/prbs_r[1] , \det0/prbs_r[2] , \det0/prbs_r[3] , 
        \det0/prbs_r[4] , \det0/prbs_r[5] , \det0/prbs_r[6] , \det0/prbs_r[7] , 
        \pass_cnt[1] , \pass_cnt[2] , \pass_cnt[3] , \pass_cnt[4] , 
        \pass_cnt[5] , \pass_cnt[6] , \pass_cnt[7] , \pass_cnt[8] , 
        \pass_cnt[9] , \tx_clk_cnt[1] , \tx_clk_cnt[2] , \tx_clk_cnt[3] , 
        \tx_clk_cnt[4] , \tx_clk_cnt[5] , \tx_clk_cnt[6] , \tx_clk_cnt[7] , 
        \tx_clk_cnt[8] , \tx_clk_cnt[9] , \tx_clk_cnt[10] , \tx_clk_cnt[11] , 
        \tx_clk_cnt[12] , \tx_clk_cnt[13] , \tx_clk_cnt[14] , \tx_clk_cnt[15] , 
        \tx_clk_cnt[16] , \tx_clk_cnt[17] , \tx_clk_cnt[18] , \tx_clk_cnt[19] , 
        \tx_clk_cnt[20] , \tx_clk_cnt[21] , \tx_clk_cnt[22] , \tx_clk_cnt[23] , 
        \tx_clk_cnt[24] , \tx_clk_cnt[25] , \rx_clk_cnt[1] , \rx_clk_cnt[2] , 
        \rx_clk_cnt[3] , \rx_clk_cnt[4] , \rx_clk_cnt[5] , \rx_clk_cnt[6] , 
        \rx_clk_cnt[7] , \rx_clk_cnt[8] , \rx_clk_cnt[9] , \rx_clk_cnt[10] , 
        \rx_clk_cnt[11] , \rx_clk_cnt[12] , \rx_clk_cnt[13] , \rx_clk_cnt[14] , 
        \rx_clk_cnt[15] , \rx_clk_cnt[16] , \rx_clk_cnt[17] , \rx_clk_cnt[18] , 
        \rx_clk_cnt[19] , \rx_clk_cnt[20] , \rx_clk_cnt[21] , \rx_clk_cnt[22] , 
        \rx_clk_cnt[23] , \rx_clk_cnt[24] , \rx_clk_cnt[25] , \start_cnt[1] , 
        \start_cnt[2] , \start_cnt[3] , \start_cnt[4] , \start_cnt[5] , 
        \start_cnt[6] , \start_cnt[7] , \start_cnt[8] , \start_cnt[9] , 
        n253, n254, n255, n256, n257, n258, ceg_net1, n73, n248, 
        \equal_50/n19 , n318, n319, n326, \fa0/n237 , ceg_net27, 
        \fa0/equal_73/n3 , \fa0/n448 , \fa0/n236 , \fa0/n235 , \fa0/n234 , 
        \fa0/n233 , \fa0/n232 , \fa0/n231 , \fa0/n230 , \fa_out0[6] , 
        \det0/error , \fa_out0[5] , \fa_out0[4] , \fa_out0[3] , \det0/n72 , 
        \fa_out0[2] , \fa_out0[7] , \fa_out0[1] , \fa_out0[0] , \det0/n56 , 
        \det0/n54 , \det0/n52 , \det0/n50 , \det0/n48 , \det0/n46 , 
        \det0/n44 , \det0/n41 , n72, n71, n70, n69, n68, n67, 
        n66, n65, n64, n247, n246, n245, n244, n243, n242, 
        n241, n240, n239, \tx_slowclk~O , \det0/load~FF_brt_1_q , 
        \det0/load~FF_brt_0_q , n523, n524, n525, n526, n527, n528, 
        n529, n530, n531, n532, n533, n534, n535, n536, n537, 
        n538, n539, n540, n541, n542, n543, n544, n545, n546, 
        n547, n548, n549, n550, n551, n552, n553, n554, n555, 
        n556, n557, n558, n559, n560, n561, n562, n563, n564, 
        n565, n566, n567, n568, n569, n570, n571, n572, n573, 
        n574, n575, n576, n577, n578, n579, n580, n581, n582, 
        n583, n584, n585, n586, n587, n588, n589, n590, n591, 
        n592, n593, n594, n595, n596, n597, n598, n599, n600, 
        n601, n602, n603, n604, n605, n606, n607, n608, n609, 
        n610, n611, n612, n613, n614, n615, n616, n617, n618, 
        n619, n620;
    
    assign txpll_rstn = rstn /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    assign led[1] = rxpll_locked /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    assign rxpll_rstn = txpll_rstn /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    EFX_LUT4 \fa0/dlatchrs_108/i2  (.I0(n318), .I1(n57), .I2(n319), .O(n57)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \fa0/dlatchrs_108/i2 .LUTMASK = 16'hacac;
    EFX_LUT4 \fa0/dlatchrs_108/i1  (.I0(n326), .I1(n64_2), .I2(n319), 
            .O(n64_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \fa0/dlatchrs_108/i1 .LUTMASK = 16'hacac;
    EFX_FF \fa0/pipe0[2]~FF  (.D(\fa0/data_buff[10] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe0[2]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe0[2]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe0[2]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe0[2]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe0[2]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe0[2]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe0[2]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe0[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe0[3]~FF  (.D(\fa0/data_buff[11] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe0[3]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe0[3]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe0[3]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe0[3]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe0[3]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe0[3]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe0[3]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe0[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/rstn_filt~FF  (.D(1'b1), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\gen/rstn_filt_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(34)
    defparam \gen/rstn_filt~FF .CLK_POLARITY = 1'b1;
    defparam \gen/rstn_filt~FF .CE_POLARITY = 1'b1;
    defparam \gen/rstn_filt~FF .SR_POLARITY = 1'b0;
    defparam \gen/rstn_filt~FF .D_POLARITY = 1'b1;
    defparam \gen/rstn_filt~FF .SR_SYNC = 1'b0;
    defparam \gen/rstn_filt~FF .SR_VALUE = 1'b0;
    defparam \gen/rstn_filt~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rstn_sync~FF  (.D(rstn_filt), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(rstn_sync_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(48)
    defparam \rstn_sync~FF .CLK_POLARITY = 1'b1;
    defparam \rstn_sync~FF .CE_POLARITY = 1'b1;
    defparam \rstn_sync~FF .SR_POLARITY = 1'b0;
    defparam \rstn_sync~FF .D_POLARITY = 1'b1;
    defparam \rstn_sync~FF .SR_SYNC = 1'b0;
    defparam \rstn_sync~FF .SR_VALUE = 1'b0;
    defparam \rstn_sync~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass~FF  (.D(stat0), .CE(ceg_net1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(led[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass~FF .CLK_POLARITY = 1'b1;
    defparam \pass~FF .CE_POLARITY = 1'b0;
    defparam \pass~FF .SR_POLARITY = 1'b0;
    defparam \pass~FF .D_POLARITY = 1'b1;
    defparam \pass~FF .SR_SYNC = 1'b0;
    defparam \pass~FF .SR_VALUE = 1'b0;
    defparam \pass~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[1]~FF  (.D(prbs_data[1]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[1]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[1]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[1]~FF .SR_VALUE = 1'b0;
    defparam \gen/f1_prbs_r[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[2]~FF  (.D(prbs_data[2]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[2]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[2]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[2]~FF .SR_VALUE = 1'b0;
    defparam \gen/f1_prbs_r[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/cstates[0]~FF  (.D(n64_2), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/cstates[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(76)
    defparam \fa0/cstates[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/cstates[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/cstates[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/cstates[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/cstates[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/cstates[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/cstates[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe0[1]~FF  (.D(\fa0/data_buff[9] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe0[1]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe0[1]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe0[1]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe0[1]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe0[1]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe0[1]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe0[1]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe0[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[0]~FF  (.D(n73), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[0]_2~FF  (.D(\tx_clk_cnt[0]_2 ), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[0]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[0]_2~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[0]_2~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[0]_2~FF .D_POLARITY = 1'b0;
    defparam \tx_clk_cnt[0]_2~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[0]_2~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[7]~FF  (.D(prbs_data[7]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[7]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[7]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[7]~FF .SR_VALUE = 1'b0;
    defparam \gen/f1_prbs_r[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[6]~FF  (.D(prbs_data[6]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[6]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[6]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[6]~FF .SR_VALUE = 1'b0;
    defparam \gen/f1_prbs_r[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/rstn_sync~FF  (.D(\gen/rstn_filt_2 ), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\gen/rstn_sync_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(34)
    defparam \gen/rstn_sync~FF .CLK_POLARITY = 1'b1;
    defparam \gen/rstn_sync~FF .CE_POLARITY = 1'b1;
    defparam \gen/rstn_sync~FF .SR_POLARITY = 1'b0;
    defparam \gen/rstn_sync~FF .D_POLARITY = 1'b1;
    defparam \gen/rstn_sync~FF .SR_SYNC = 1'b0;
    defparam \gen/rstn_sync~FF .SR_VALUE = 1'b0;
    defparam \gen/rstn_sync~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[5]~FF  (.D(prbs_data[5]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[5]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[5]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[5]~FF .SR_VALUE = 1'b0;
    defparam \gen/f1_prbs_r[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[4]~FF  (.D(prbs_data[4]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[4]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[4]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[4]~FF .SR_VALUE = 1'b0;
    defparam \gen/f1_prbs_r[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[0]_2~FF  (.D(\rx_clk_cnt[0]_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[0]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[0]_2~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[0]_2~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[0]_2~FF .D_POLARITY = 1'b0;
    defparam \rx_clk_cnt[0]_2~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[0]_2~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_heartbeat~FF  (.D(\rx_clk_cnt[25] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(led[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_heartbeat~FF .CLK_POLARITY = 1'b1;
    defparam \rx_heartbeat~FF .CE_POLARITY = 1'b1;
    defparam \rx_heartbeat~FF .SR_POLARITY = 1'b0;
    defparam \rx_heartbeat~FF .D_POLARITY = 1'b1;
    defparam \rx_heartbeat~FF .SR_SYNC = 1'b0;
    defparam \rx_heartbeat~FF .SR_VALUE = 1'b1;
    defparam \rx_heartbeat~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen/f1_prbs_r[3]~FF  (.D(prbs_data[3]), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(\gen/rstn_sync_2 ), .Q(\gen/f1_prbs_r[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_gen.v(43)
    defparam \gen/f1_prbs_r[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen/f1_prbs_r[3]~FF .D_POLARITY = 1'b1;
    defparam \gen/f1_prbs_r[3]~FF .SR_SYNC = 1'b0;
    defparam \gen/f1_prbs_r[3]~FF .SR_VALUE = 1'b1;
    defparam \gen/f1_prbs_r[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[0]~FF  (.D(n248), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_fa~FF  (.D(1'b1), .CE(\equal_50/n19 ), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(start_fa_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_fa~FF .CLK_POLARITY = 1'b1;
    defparam \start_fa~FF .CE_POLARITY = 1'b0;
    defparam \start_fa~FF .SR_POLARITY = 1'b0;
    defparam \start_fa~FF .D_POLARITY = 1'b1;
    defparam \start_fa~FF .SR_SYNC = 1'b0;
    defparam \start_fa~FF .SR_VALUE = 1'b0;
    defparam \start_fa~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rstn_filt~FF  (.D(1'b1), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(rstn_filt)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(48)
    defparam \rstn_filt~FF .CLK_POLARITY = 1'b1;
    defparam \rstn_filt~FF .CE_POLARITY = 1'b1;
    defparam \rstn_filt~FF .SR_POLARITY = 1'b0;
    defparam \rstn_filt~FF .D_POLARITY = 1'b1;
    defparam \rstn_filt~FF .SR_SYNC = 1'b0;
    defparam \rstn_filt~FF .SR_VALUE = 1'b0;
    defparam \rstn_filt~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_heartbeat~FF  (.D(\tx_clk_cnt[25] ), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(led[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_heartbeat~FF .CLK_POLARITY = 1'b1;
    defparam \tx_heartbeat~FF .CE_POLARITY = 1'b1;
    defparam \tx_heartbeat~FF .SR_POLARITY = 1'b0;
    defparam \tx_heartbeat~FF .D_POLARITY = 1'b1;
    defparam \tx_heartbeat~FF .SR_SYNC = 1'b0;
    defparam \tx_heartbeat~FF .SR_VALUE = 1'b1;
    defparam \tx_heartbeat~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/start_filt~FF  (.D(start_fa_2), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/start_filt_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(65)
    defparam \fa0/start_filt~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/start_filt~FF .CE_POLARITY = 1'b1;
    defparam \fa0/start_filt~FF .SR_POLARITY = 1'b0;
    defparam \fa0/start_filt~FF .D_POLARITY = 1'b1;
    defparam \fa0/start_filt~FF .SR_SYNC = 1'b0;
    defparam \fa0/start_filt~FF .SR_VALUE = 1'b0;
    defparam \fa0/start_filt~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/cstates[1]~FF  (.D(n57), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/cstates[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(76)
    defparam \fa0/cstates[1]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/cstates[1]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/cstates[1]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/cstates[1]~FF .D_POLARITY = 1'b1;
    defparam \fa0/cstates[1]~FF .SR_SYNC = 1'b0;
    defparam \fa0/cstates[1]~FF .SR_VALUE = 1'b0;
    defparam \fa0/cstates[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[15]~FF  (.D(rx_data0[7]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[15]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[15]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[15]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[15]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[15]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[15]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[15]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/start_sync~FF  (.D(\fa0/start_filt_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/start_sync )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(65)
    defparam \fa0/start_sync~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/start_sync~FF .CE_POLARITY = 1'b1;
    defparam \fa0/start_sync~FF .SR_POLARITY = 1'b0;
    defparam \fa0/start_sync~FF .D_POLARITY = 1'b1;
    defparam \fa0/start_sync~FF .SR_SYNC = 1'b0;
    defparam \fa0/start_sync~FF .SR_VALUE = 1'b0;
    defparam \fa0/start_sync~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[14]~FF  (.D(rx_data0[6]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[14]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[14]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[14]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[14]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[14]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[14]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[14]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[13]~FF  (.D(rx_data0[5]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[13]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[13]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[13]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[13]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[13]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[13]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[13]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[5]~FF  (.D(\fa0/data_buff[13]_2 ), .CE(1'b1), 
           .CLK(\rx_slowclk~O ), .SR(\det0/testen_sync ), .Q(\fa0/data_buff[5]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[5]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[5]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[5]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[5]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[5]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[5]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[4]~FF  (.D(\fa0/data_buff[12] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[4]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[4]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[4]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[4]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[4]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[4]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[4]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[12]~FF  (.D(rx_data0[4]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[12]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[12]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[12]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[12]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[12]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[12]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe0[0]~FF  (.D(\fa0/data_buff[8] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe0[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe0[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe0[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe0[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe0[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe0[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe0[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe0[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe1[0]~FF  (.D(\fa0/data_buff[7] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe1[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe1[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe1[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe1[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe1[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe1[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe1[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe1[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[11]~FF  (.D(rx_data0[3]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[11]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[11]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[11]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[11]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[11]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[11]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[10]~FF  (.D(rx_data0[2]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[10]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[10]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[10]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[10]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[10]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[10]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe2[0]~FF  (.D(\fa0/data_buff[6] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe2[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe2[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe2[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe2[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe2[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe2[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe2[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe2[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe3[0]~FF  (.D(\fa0/data_buff[5]_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe3[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe3[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe3[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe3[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe3[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe3[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe3[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe3[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe4[0]~FF  (.D(\fa0/data_buff[4]_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe4[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe4[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe4[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe4[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe4[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe4[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe4[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe4[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe5[0]~FF  (.D(\fa0/pipe0[3]_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe5[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe5[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe5[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe5[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe5[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe5[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe5[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe5[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe6[0]~FF  (.D(\fa0/pipe0[2]_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe6[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe6[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe6[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe6[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe6[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe6[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe6[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe6[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/pipe7[0]~FF  (.D(\fa0/pipe0[1]_2 ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/pipe7[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(109)
    defparam \fa0/pipe7[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/pipe7[0]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/pipe7[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/pipe7[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/pipe7[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/pipe7[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/pipe7[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[0]~FF  (.D(\fa0/n237 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[0]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[0]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[0]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[0]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[0]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[9]~FF  (.D(rx_data0[1]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[9]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[9]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[9]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[9]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[9]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[9]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[8]~FF  (.D(rx_data0[0]), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/data_buff[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[8]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[8]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[8]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[8]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[8]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[8]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/fa_lock~FF  (.D(\fa0/equal_73/n3 ), .CE(\fa0/n448 ), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(fa_lock)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(139)
    defparam \fa0/fa_lock~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/fa_lock~FF .CE_POLARITY = 1'b0;
    defparam \fa0/fa_lock~FF .SR_POLARITY = 1'b0;
    defparam \fa0/fa_lock~FF .D_POLARITY = 1'b0;
    defparam \fa0/fa_lock~FF .SR_SYNC = 1'b0;
    defparam \fa0/fa_lock~FF .SR_VALUE = 1'b0;
    defparam \fa0/fa_lock~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[7]~FF  (.D(\fa0/data_buff[15]_2 ), .CE(1'b1), 
           .CLK(\rx_slowclk~O ), .SR(\det0/testen_sync ), .Q(\fa0/data_buff[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[7]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[7]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[7]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[7]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[7]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[7]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/data_buff[6]~FF  (.D(\fa0/data_buff[14]_2 ), .CE(1'b1), 
           .CLK(\rx_slowclk~O ), .SR(\det0/testen_sync ), .Q(\fa0/data_buff[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(55)
    defparam \fa0/data_buff[6]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/data_buff[6]~FF .CE_POLARITY = 1'b1;
    defparam \fa0/data_buff[6]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/data_buff[6]~FF .D_POLARITY = 1'b1;
    defparam \fa0/data_buff[6]~FF .SR_SYNC = 1'b0;
    defparam \fa0/data_buff[6]~FF .SR_VALUE = 1'b0;
    defparam \fa0/data_buff[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[1]~FF  (.D(\fa0/n236 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[1]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[1]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[1]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[1]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[1]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[1]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[2]~FF  (.D(\fa0/n235 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[2]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[2]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[2]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[2]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[2]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[2]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[3]~FF  (.D(\fa0/n234 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[3]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[3]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[3]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[3]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[3]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[3]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[4]~FF  (.D(\fa0/n233 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[4]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[4]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[4]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[4]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[4]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[4]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[5]~FF  (.D(\fa0/n232 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[5]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[5]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[5]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[5]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[5]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[5]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[6]~FF  (.D(\fa0/n231 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[6]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[6]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[6]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[6]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[6]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[6]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fa0/match_i[7]~FF  (.D(\fa0/n230 ), .CE(ceg_net27), .CLK(\rx_slowclk~O ), 
           .SR(\det0/testen_sync ), .Q(\fa0/match_i[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\frame_aligner.v(128)
    defparam \fa0/match_i[7]~FF .CLK_POLARITY = 1'b1;
    defparam \fa0/match_i[7]~FF .CE_POLARITY = 1'b0;
    defparam \fa0/match_i[7]~FF .SR_POLARITY = 1'b0;
    defparam \fa0/match_i[7]~FF .D_POLARITY = 1'b1;
    defparam \fa0/match_i[7]~FF .SR_SYNC = 1'b0;
    defparam \fa0/match_i[7]~FF .SR_VALUE = 1'b0;
    defparam \fa0/match_i[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/testen_sync~FF  (.D(\det0/testen_filt ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/testen_sync )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(51)
    defparam \det0/testen_sync~FF .CLK_POLARITY = 1'b1;
    defparam \det0/testen_sync~FF .CE_POLARITY = 1'b1;
    defparam \det0/testen_sync~FF .SR_POLARITY = 1'b0;
    defparam \det0/testen_sync~FF .D_POLARITY = 1'b1;
    defparam \det0/testen_sync~FF .SR_SYNC = 1'b0;
    defparam \det0/testen_sync~FF .SR_VALUE = 1'b0;
    defparam \det0/testen_sync~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[6]~FF  (.D(\fa_out0[6] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[6]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[6]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[6]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[6]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[6]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[6]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/stat0~FF  (.D(\det0/error ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(stat0)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(70)
    defparam \det0/stat0~FF .CLK_POLARITY = 1'b0;
    defparam \det0/stat0~FF .CE_POLARITY = 1'b1;
    defparam \det0/stat0~FF .SR_POLARITY = 1'b0;
    defparam \det0/stat0~FF .D_POLARITY = 1'b0;
    defparam \det0/stat0~FF .SR_SYNC = 1'b0;
    defparam \det0/stat0~FF .SR_VALUE = 1'b0;
    defparam \det0/stat0~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[5]~FF  (.D(\fa_out0[5] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[5]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[5]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[5]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[5]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[5]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[5]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[4]~FF  (.D(\fa_out0[4] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[4]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[4]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[4]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[4]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[4]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[4]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[3]~FF  (.D(\fa_out0[3] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[3]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[3]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[3]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[3]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[3]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[3]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(rx_slowclk), .O(\rx_slowclk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \det0/data_sync[2]~FF  (.D(\fa_out0[2] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[2]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[2]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[2]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[2]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[2]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[2]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[7]~FF  (.D(\fa_out0[7] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[7]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[7]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[7]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[7]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[7]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[7]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[1]~FF  (.D(\fa_out0[1] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[1]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[1]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[1]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[1]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[1]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[1]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/data_sync[0]~FF  (.D(\fa_out0[0] ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/data_sync[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(59)
    defparam \det0/data_sync[0]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/data_sync[0]~FF .CE_POLARITY = 1'b1;
    defparam \det0/data_sync[0]~FF .SR_POLARITY = 1'b0;
    defparam \det0/data_sync[0]~FF .D_POLARITY = 1'b1;
    defparam \det0/data_sync[0]~FF .SR_SYNC = 1'b0;
    defparam \det0/data_sync[0]~FF .SR_VALUE = 1'b0;
    defparam \det0/data_sync[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[0]~FF  (.D(\det0/n56 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[0]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[0]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[0]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[0]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[0]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[0]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/testen_filt~FF  (.D(1'b1), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/testen_filt )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(51)
    defparam \det0/testen_filt~FF .CLK_POLARITY = 1'b1;
    defparam \det0/testen_filt~FF .CE_POLARITY = 1'b1;
    defparam \det0/testen_filt~FF .SR_POLARITY = 1'b0;
    defparam \det0/testen_filt~FF .D_POLARITY = 1'b1;
    defparam \det0/testen_filt~FF .SR_SYNC = 1'b0;
    defparam \det0/testen_filt~FF .SR_VALUE = 1'b0;
    defparam \det0/testen_filt~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[1]~FF  (.D(\det0/n54 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[1]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[1]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[1]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[1]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[1]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[1]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[2]~FF  (.D(\det0/n52 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[2]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[2]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[2]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[2]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[2]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[2]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[3]~FF  (.D(\det0/n50 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[3]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[3]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[3]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[3]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[3]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[3]~FF .SR_VALUE = 1'b1;
    defparam \det0/prbs_r[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[4]~FF  (.D(\det0/n48 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[4]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[4]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[4]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[4]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[4]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[4]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[5]~FF  (.D(\det0/n46 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[5]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[5]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[5]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[5]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[5]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[5]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[6]~FF  (.D(\det0/n44 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[6]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[6]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[6]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[6]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[6]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[6]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/prbs_r[7]~FF  (.D(\det0/n41 ), .CE(\det0/n72 ), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/prbs_r[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(87)
    defparam \det0/prbs_r[7]~FF .CLK_POLARITY = 1'b1;
    defparam \det0/prbs_r[7]~FF .CE_POLARITY = 1'b1;
    defparam \det0/prbs_r[7]~FF .SR_POLARITY = 1'b0;
    defparam \det0/prbs_r[7]~FF .D_POLARITY = 1'b1;
    defparam \det0/prbs_r[7]~FF .SR_SYNC = 1'b0;
    defparam \det0/prbs_r[7]~FF .SR_VALUE = 1'b0;
    defparam \det0/prbs_r[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[1]~FF  (.D(n72), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[2]~FF  (.D(n71), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[3]~FF  (.D(n70), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[3]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[4]~FF  (.D(n69), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[4]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[5]~FF  (.D(n68), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[5]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[6]~FF  (.D(n67), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[6]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[7]~FF  (.D(n66), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[7]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[8]~FF  (.D(n65), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[8]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \pass_cnt[9]~FF  (.D(n64), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\pass_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(98)
    defparam \pass_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \pass_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \pass_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \pass_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \pass_cnt[9]~FF .SR_SYNC = 1'b0;
    defparam \pass_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \pass_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[1]~FF  (.D(n253), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[2]~FF  (.D(n165_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[3]~FF  (.D(n163_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[3]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[4]~FF  (.D(n128), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[4]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[5]~FF  (.D(n125), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[5]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[6]~FF  (.D(n121_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[6]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[7]~FF  (.D(n119_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[7]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[8]~FF  (.D(n115_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[8]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[9]~FF  (.D(n113_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[9]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[10]~FF  (.D(n109_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[10]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[11]~FF  (.D(n107_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[11]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[12]~FF  (.D(n103_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[12]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[12]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[13]~FF  (.D(n52), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[13]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[13]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[14]~FF  (.D(n50), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[14]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[14]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[15]~FF  (.D(n92), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[15]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[15]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[16]~FF  (.D(n34), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[16]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[16]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[16]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[16]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[16]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[16]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[17]~FF  (.D(n176_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[17]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[17]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[17]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[17]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[17]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[17]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[18]~FF  (.D(n167_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[18]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[18]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[18]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[18]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[18]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[18]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[19]~FF  (.D(n161_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[19]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[19]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[19]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[19]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[19]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[19]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[20]~FF  (.D(n156_2), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[20]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[20]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[20]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[20]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[20]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[20]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[21]~FF  (.D(n149), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[21]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[21]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[21]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[21]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[21]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[21]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[22]~FF  (.D(n147), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[22]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[22]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[22]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[22]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[22]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[22]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[23]~FF  (.D(n145), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[23]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[23]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[23]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[23]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[23]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[23]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[24]~FF  (.D(n143), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[24]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[24]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[24]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[24]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[24]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[24]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_clk_cnt[25]~FF  (.D(n142), .CE(1'b1), .CLK(\tx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\tx_clk_cnt[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(122)
    defparam \tx_clk_cnt[25]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_clk_cnt[25]~FF .CE_POLARITY = 1'b1;
    defparam \tx_clk_cnt[25]~FF .SR_POLARITY = 1'b0;
    defparam \tx_clk_cnt[25]~FF .D_POLARITY = 1'b1;
    defparam \tx_clk_cnt[25]~FF .SR_SYNC = 1'b0;
    defparam \tx_clk_cnt[25]~FF .SR_VALUE = 1'b0;
    defparam \tx_clk_cnt[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[1]~FF  (.D(n42), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[2]~FF  (.D(n140), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[3]~FF  (.D(n123), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[3]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[4]~FF  (.D(n117_2), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[4]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[5]~FF  (.D(n111_2), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[5]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[6]~FF  (.D(n105_2), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[6]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[7]~FF  (.D(n87), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[7]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[8]~FF  (.D(n58), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[8]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[9]~FF  (.D(n47), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[9]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[10]~FF  (.D(n32), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[10]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[10]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[11]~FF  (.D(n28), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[11]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[11]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[12]~FF  (.D(n26), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[12]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[12]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[13]~FF  (.D(n19), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[13]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[13]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[14]~FF  (.D(n83), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[14]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[14]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[15]~FF  (.D(n85), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[15]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[15]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[16]~FF  (.D(n94), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[16]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[16]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[16]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[16]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[16]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[16]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[17]~FF  (.D(n257), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[17]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[17]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[17]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[17]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[17]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[17]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[18]~FF  (.D(n255), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[18]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[18]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[18]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[18]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[18]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[18]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[19]~FF  (.D(n151), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[19]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[19]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[19]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[19]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[19]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[19]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[20]~FF  (.D(n138), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[20]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[20]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[20]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[20]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[20]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[20]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[21]~FF  (.D(n136), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[21]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[21]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[21]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[21]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[21]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[21]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[22]~FF  (.D(n134), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[22]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[22]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[22]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[22]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[22]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[22]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[23]~FF  (.D(n132), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[23]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[23]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[23]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[23]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[23]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[23]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[24]~FF  (.D(n130), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[24]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[24]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[24]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[24]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[24]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[24]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_clk_cnt[25]~FF  (.D(n127), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\rx_clk_cnt[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(135)
    defparam \rx_clk_cnt[25]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_clk_cnt[25]~FF .CE_POLARITY = 1'b1;
    defparam \rx_clk_cnt[25]~FF .SR_POLARITY = 1'b0;
    defparam \rx_clk_cnt[25]~FF .D_POLARITY = 1'b1;
    defparam \rx_clk_cnt[25]~FF .SR_SYNC = 1'b0;
    defparam \rx_clk_cnt[25]~FF .SR_VALUE = 1'b0;
    defparam \rx_clk_cnt[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[1]~FF  (.D(n247), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[2]~FF  (.D(n246), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[3]~FF  (.D(n245), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[3]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[3]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[4]~FF  (.D(n244), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[4]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[4]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[5]~FF  (.D(n243), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[5]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[5]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[6]~FF  (.D(n242), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[6]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[6]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[7]~FF  (.D(n241), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[7]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[7]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[8]~FF  (.D(n240), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[8]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[8]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_cnt[9]~FF  (.D(n239), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(txpll_rstn), .Q(\start_cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(153)
    defparam \start_cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \start_cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \start_cnt[9]~FF .SR_POLARITY = 1'b0;
    defparam \start_cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \start_cnt[9]~FF .SR_SYNC = 1'b0;
    defparam \start_cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \start_cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__779 (.I0(\gen/f1_prbs_r[1] ), .I1(\gen/f1_prbs_r[3] ), 
            .O(prbs_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__779.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__780 (.I0(\gen/f1_prbs_r[1] ), .I1(\gen/f1_prbs_r[2] ), 
            .O(prbs_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__780.LUTMASK = 16'h6666;
    EFX_ADD \add_41/i14  (.I0(\rx_clk_cnt[13] ), .I1(1'b0), .CI(n27), 
            .O(n19), .CO(n20)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i14 .I0_POLARITY = 1'b1;
    defparam \add_41/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i13  (.I0(\rx_clk_cnt[12] ), .I1(1'b0), .CI(n29), 
            .O(n26), .CO(n27)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i13 .I0_POLARITY = 1'b1;
    defparam \add_41/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i12  (.I0(\rx_clk_cnt[11] ), .I1(1'b0), .CI(n33), 
            .O(n28), .CO(n29)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i12 .I0_POLARITY = 1'b1;
    defparam \add_41/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i11  (.I0(\rx_clk_cnt[10] ), .I1(1'b0), .CI(n48), 
            .O(n32), .CO(n33)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i11 .I0_POLARITY = 1'b1;
    defparam \add_41/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i17  (.I0(\tx_clk_cnt[16] ), .I1(1'b0), .CI(n93), 
            .O(n34), .CO(n35)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i17 .I0_POLARITY = 1'b1;
    defparam \add_35/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i2  (.I0(\rx_clk_cnt[1] ), .I1(\rx_clk_cnt[0]_2 ), .CI(1'b0), 
            .O(n42), .CO(n43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i2 .I0_POLARITY = 1'b1;
    defparam \add_41/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i10  (.I0(\rx_clk_cnt[9] ), .I1(1'b0), .CI(n59), .O(n47), 
            .CO(n48)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i10 .I0_POLARITY = 1'b1;
    defparam \add_41/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i15  (.I0(\tx_clk_cnt[14] ), .I1(1'b0), .CI(n53), 
            .O(n50), .CO(n51)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i15 .I0_POLARITY = 1'b1;
    defparam \add_35/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i14  (.I0(\tx_clk_cnt[13] ), .I1(1'b0), .CI(n104_2), 
            .O(n52), .CO(n53)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i14 .I0_POLARITY = 1'b1;
    defparam \add_35/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i9  (.I0(\rx_clk_cnt[8] ), .I1(1'b0), .CI(n88), .O(n58), 
            .CO(n59)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i9 .I0_POLARITY = 1'b1;
    defparam \add_41/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i15  (.I0(\rx_clk_cnt[14] ), .I1(1'b0), .CI(n20), 
            .O(n83), .CO(n84)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i15 .I0_POLARITY = 1'b1;
    defparam \add_41/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i16  (.I0(\rx_clk_cnt[15] ), .I1(1'b0), .CI(n84), 
            .O(n85), .CO(n86)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i16 .I0_POLARITY = 1'b1;
    defparam \add_41/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i8  (.I0(\rx_clk_cnt[7] ), .I1(1'b0), .CI(n106_2), 
            .O(n87), .CO(n88)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i8 .I0_POLARITY = 1'b1;
    defparam \add_41/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i16  (.I0(\tx_clk_cnt[15] ), .I1(1'b0), .CI(n51), 
            .O(n92), .CO(n93)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i16 .I0_POLARITY = 1'b1;
    defparam \add_35/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i17  (.I0(\rx_clk_cnt[16] ), .I1(1'b0), .CI(n86), 
            .O(n94), .CO(n95)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i17 .I0_POLARITY = 1'b1;
    defparam \add_41/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i13  (.I0(\tx_clk_cnt[12] ), .I1(1'b0), .CI(n108_2), 
            .O(n103_2), .CO(n104_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i13 .I0_POLARITY = 1'b1;
    defparam \add_35/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i7  (.I0(\rx_clk_cnt[6] ), .I1(1'b0), .CI(n112_2), 
            .O(n105_2), .CO(n106_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i7 .I0_POLARITY = 1'b1;
    defparam \add_41/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i12  (.I0(\tx_clk_cnt[11] ), .I1(1'b0), .CI(n110_2), 
            .O(n107_2), .CO(n108_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i12 .I0_POLARITY = 1'b1;
    defparam \add_35/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i11  (.I0(\tx_clk_cnt[10] ), .I1(1'b0), .CI(n114_2), 
            .O(n109_2), .CO(n110_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i11 .I0_POLARITY = 1'b1;
    defparam \add_35/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i6  (.I0(\rx_clk_cnt[5] ), .I1(1'b0), .CI(n118_2), 
            .O(n111_2), .CO(n112_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i6 .I0_POLARITY = 1'b1;
    defparam \add_41/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i10  (.I0(\tx_clk_cnt[9] ), .I1(1'b0), .CI(n116_2), 
            .O(n113_2), .CO(n114_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i10 .I0_POLARITY = 1'b1;
    defparam \add_35/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i9  (.I0(\tx_clk_cnt[8] ), .I1(1'b0), .CI(n120_2), 
            .O(n115_2), .CO(n116_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i9 .I0_POLARITY = 1'b1;
    defparam \add_35/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i5  (.I0(\rx_clk_cnt[4] ), .I1(1'b0), .CI(n124), .O(n117_2), 
            .CO(n118_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i5 .I0_POLARITY = 1'b1;
    defparam \add_41/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i8  (.I0(\tx_clk_cnt[7] ), .I1(1'b0), .CI(n122), .O(n119_2), 
            .CO(n120_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i8 .I0_POLARITY = 1'b1;
    defparam \add_35/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i7  (.I0(\tx_clk_cnt[6] ), .I1(1'b0), .CI(n126), .O(n121_2), 
            .CO(n122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i7 .I0_POLARITY = 1'b1;
    defparam \add_35/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i4  (.I0(\rx_clk_cnt[3] ), .I1(1'b0), .CI(n141), .O(n123), 
            .CO(n124)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i4 .I0_POLARITY = 1'b1;
    defparam \add_41/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i6  (.I0(\tx_clk_cnt[5] ), .I1(1'b0), .CI(n129), .O(n125), 
            .CO(n126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i6 .I0_POLARITY = 1'b1;
    defparam \add_35/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i26  (.I0(\rx_clk_cnt[25] ), .I1(1'b0), .CI(n131), 
            .O(n127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i26 .I0_POLARITY = 1'b1;
    defparam \add_41/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i5  (.I0(\tx_clk_cnt[4] ), .I1(1'b0), .CI(n164_2), 
            .O(n128), .CO(n129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i5 .I0_POLARITY = 1'b1;
    defparam \add_35/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i25  (.I0(\rx_clk_cnt[24] ), .I1(1'b0), .CI(n133), 
            .O(n130), .CO(n131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i25 .I0_POLARITY = 1'b1;
    defparam \add_41/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i24  (.I0(\rx_clk_cnt[23] ), .I1(1'b0), .CI(n135), 
            .O(n132), .CO(n133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i24 .I0_POLARITY = 1'b1;
    defparam \add_41/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i23  (.I0(\rx_clk_cnt[22] ), .I1(1'b0), .CI(n137), 
            .O(n134), .CO(n135)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i23 .I0_POLARITY = 1'b1;
    defparam \add_41/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i22  (.I0(\rx_clk_cnt[21] ), .I1(1'b0), .CI(n139), 
            .O(n136), .CO(n137)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i22 .I0_POLARITY = 1'b1;
    defparam \add_41/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i21  (.I0(\rx_clk_cnt[20] ), .I1(1'b0), .CI(n152), 
            .O(n138), .CO(n139)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i21 .I0_POLARITY = 1'b1;
    defparam \add_41/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i3  (.I0(\rx_clk_cnt[2] ), .I1(1'b0), .CI(n43), .O(n140), 
            .CO(n141)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i3 .I0_POLARITY = 1'b1;
    defparam \add_41/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i26  (.I0(\tx_clk_cnt[25] ), .I1(1'b0), .CI(n144), 
            .O(n142)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i26 .I0_POLARITY = 1'b1;
    defparam \add_35/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i25  (.I0(\tx_clk_cnt[24] ), .I1(1'b0), .CI(n146), 
            .O(n143), .CO(n144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i25 .I0_POLARITY = 1'b1;
    defparam \add_35/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i24  (.I0(\tx_clk_cnt[23] ), .I1(1'b0), .CI(n148), 
            .O(n145), .CO(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i24 .I0_POLARITY = 1'b1;
    defparam \add_35/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i23  (.I0(\tx_clk_cnt[22] ), .I1(1'b0), .CI(n150), 
            .O(n147), .CO(n148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i23 .I0_POLARITY = 1'b1;
    defparam \add_35/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i22  (.I0(\tx_clk_cnt[21] ), .I1(1'b0), .CI(n157_2), 
            .O(n149), .CO(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i22 .I0_POLARITY = 1'b1;
    defparam \add_35/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i20  (.I0(\rx_clk_cnt[19] ), .I1(1'b0), .CI(n256), 
            .O(n151), .CO(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i20 .I0_POLARITY = 1'b1;
    defparam \add_41/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i21  (.I0(\tx_clk_cnt[20] ), .I1(1'b0), .CI(n162_2), 
            .O(n156_2), .CO(n157_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i21 .I0_POLARITY = 1'b1;
    defparam \add_35/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i20  (.I0(\tx_clk_cnt[19] ), .I1(1'b0), .CI(n168_2), 
            .O(n161_2), .CO(n162_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i20 .I0_POLARITY = 1'b1;
    defparam \add_35/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i4  (.I0(\tx_clk_cnt[3] ), .I1(1'b0), .CI(n166_2), 
            .O(n163_2), .CO(n164_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i4 .I0_POLARITY = 1'b1;
    defparam \add_35/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i3  (.I0(\tx_clk_cnt[2] ), .I1(1'b0), .CI(n254), .O(n165_2), 
            .CO(n166_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i3 .I0_POLARITY = 1'b1;
    defparam \add_35/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i19  (.I0(\tx_clk_cnt[18] ), .I1(1'b0), .CI(n177_2), 
            .O(n167_2), .CO(n168_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i19 .I0_POLARITY = 1'b1;
    defparam \add_35/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i18  (.I0(\tx_clk_cnt[17] ), .I1(1'b0), .CI(n35), 
            .O(n176_2), .CO(n177_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i18 .I0_POLARITY = 1'b1;
    defparam \add_35/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_35/i2  (.I0(\tx_clk_cnt[1] ), .I1(\tx_clk_cnt[0]_2 ), .CI(1'b0), 
            .O(n253), .CO(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(121)
    defparam \add_35/i2 .I0_POLARITY = 1'b1;
    defparam \add_35/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i19  (.I0(\rx_clk_cnt[18] ), .I1(1'b0), .CI(n258), 
            .O(n255), .CO(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i19 .I0_POLARITY = 1'b1;
    defparam \add_41/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_41/i18  (.I0(\rx_clk_cnt[17] ), .I1(1'b0), .CI(n95), 
            .O(n257), .CO(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback_top.v(134)
    defparam \add_41/i18 .I0_POLARITY = 1'b1;
    defparam \add_41/i18 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__781 (.I0(\gen/f1_prbs_r[7] ), .I1(prbs_data[0]), .O(prbs_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__781.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__782 (.I0(\gen/f1_prbs_r[7] ), .I1(\gen/f1_prbs_r[6] ), 
            .O(prbs_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__782.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__783 (.I0(\gen/f1_prbs_r[6] ), .I1(\gen/f1_prbs_r[5] ), 
            .O(prbs_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__783.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__784 (.I0(\gen/f1_prbs_r[5] ), .I1(\gen/f1_prbs_r[4] ), 
            .O(prbs_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__784.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__785 (.I0(\gen/f1_prbs_r[4] ), .I1(\gen/f1_prbs_r[3] ), 
            .O(prbs_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__785.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__786 (.I0(\gen/f1_prbs_r[2] ), .I1(\gen/f1_prbs_r[3] ), 
            .O(prbs_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__786.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__787 (.I0(\pass_cnt[0] ), .I1(\pass_cnt[1] ), .I2(\pass_cnt[2] ), 
            .I3(\pass_cnt[3] ), .O(n523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__787.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__788 (.I0(\pass_cnt[5] ), .I1(\pass_cnt[6] ), .I2(\pass_cnt[7] ), 
            .I3(\pass_cnt[8] ), .O(n524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__788.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__789 (.I0(\pass_cnt[4] ), .I1(n523), .I2(n524), .O(n525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__789.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__790 (.I0(n525), .I1(\pass_cnt[9] ), .I2(stat0), .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__790.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__791 (.I0(\pass_cnt[0] ), .I1(stat0), .O(n73)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__791.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__792 (.I0(\start_cnt[0] ), .I1(led[1]), .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__792.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__793 (.I0(\start_cnt[0] ), .I1(\start_cnt[1] ), .I2(\start_cnt[4] ), 
            .I3(\start_cnt[7] ), .O(n526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__793.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__794 (.I0(\start_cnt[2] ), .I1(\start_cnt[3] ), .I2(\start_cnt[5] ), 
            .I3(\start_cnt[6] ), .O(n527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__794.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__795 (.I0(\start_cnt[8] ), .I1(n526), .I2(n527), .O(n528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__795.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__796 (.I0(\start_cnt[9] ), .I1(n528), .O(\equal_50/n19 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__796.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__797 (.I0(\fa0/match_i[0] ), .I1(\fa0/match_i[1] ), .I2(\fa0/match_i[4] ), 
            .I3(\fa0/match_i[7] ), .O(n529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__797.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__798 (.I0(\fa0/match_i[2] ), .I1(\fa0/match_i[3] ), .I2(\fa0/match_i[5] ), 
            .I3(\fa0/match_i[6] ), .O(n530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__798.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__799 (.I0(n529), .I1(n530), .O(n531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__799.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__800 (.I0(\fa0/start_sync ), .I1(n531), .I2(\fa0/cstates[0] ), 
            .I3(\fa0/cstates[1] ), .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a30 */ ;
    defparam LUT__800.LUTMASK = 16'h0a30;
    EFX_LUT4 LUT__801 (.I0(\fa0/cstates[0] ), .I1(\fa0/cstates[1] ), .O(\fa0/n448 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__801.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__802 (.I0(\fa0/start_sync ), .I1(n531), .I2(\fa0/cstates[1] ), 
            .I3(\fa0/cstates[0] ), .O(n326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__802.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__803 (.I0(\fa0/cstates[1] ), .I1(\fa0/cstates[0] ), .O(n532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__803.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__804 (.I0(\fa0/pipe0[1]_2 ), .I1(n529), .I2(n530), .I3(n532), 
            .O(n533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__804.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__805 (.I0(\fa0/pipe0[3]_2 ), .I1(\fa0/data_buff[6] ), .O(n534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__805.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__806 (.I0(\fa0/data_buff[4]_2 ), .I1(\fa0/data_buff[5]_2 ), 
            .I2(\fa0/data_buff[7] ), .O(n535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__806.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__807 (.I0(\fa0/pipe0[0] ), .I1(\fa0/pipe0[2]_2 ), .I2(n534), 
            .I3(n535), .O(n536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__807.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__808 (.I0(n533), .I1(n536), .O(\fa0/n237 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__808.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__809 (.I0(n531), .I1(\fa0/cstates[0] ), .I2(\fa0/cstates[1] ), 
            .O(ceg_net27)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__809.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__810 (.I0(\fa0/cstates[0] ), .I1(\fa0/cstates[1] ), .O(\fa0/equal_73/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__810.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__811 (.I0(\fa0/pipe0[2]_2 ), .I1(\fa0/data_buff[5]_2 ), 
            .I2(\fa0/data_buff[4]_2 ), .I3(\fa0/pipe0[0] ), .O(n537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__811.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__812 (.I0(\fa0/pipe1[0] ), .I1(n533), .I2(n534), .I3(n537), 
            .O(\fa0/n236 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__812.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__813 (.I0(\fa0/pipe0[1]_2 ), .I1(\fa0/pipe1[0] ), .O(n538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__813.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__814 (.I0(n529), .I1(n530), .I2(n532), .I3(n538), .O(n539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__814.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__815 (.I0(\fa0/pipe2[0] ), .I1(\fa0/pipe0[3]_2 ), .I2(n537), 
            .I3(n539), .O(\fa0/n235 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__815.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__816 (.I0(\fa0/pipe0[0] ), .I1(\fa0/pipe0[3]_2 ), .I2(\fa0/pipe0[2]_2 ), 
            .I3(\fa0/pipe2[0] ), .O(n540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__816.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__817 (.I0(\fa0/pipe3[0] ), .I1(\fa0/data_buff[4]_2 ), .I2(n539), 
            .I3(n540), .O(\fa0/n234 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__817.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__818 (.I0(\fa0/pipe4[0] ), .I1(n540), .O(n541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__818.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__819 (.I0(\fa0/pipe1[0] ), .I1(\fa0/pipe3[0] ), .I2(n533), 
            .I3(n541), .O(\fa0/n233 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__819.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__820 (.I0(\fa0/pipe2[0] ), .I1(\fa0/pipe4[0] ), .O(n542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__820.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__821 (.I0(\fa0/pipe5[0] ), .I1(\fa0/pipe0[0] ), .I2(\fa0/pipe0[2]_2 ), 
            .I3(n542), .O(n543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__821.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__822 (.I0(\fa0/pipe1[0] ), .I1(\fa0/pipe3[0] ), .I2(n533), 
            .I3(n543), .O(\fa0/n232 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__822.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__823 (.I0(\fa0/pipe3[0] ), .I1(\fa0/pipe1[0] ), .I2(\fa0/pipe0[0] ), 
            .I3(\fa0/pipe5[0] ), .O(n544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__823.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__824 (.I0(\fa0/pipe6[0] ), .I1(n533), .I2(n542), .I3(n544), 
            .O(\fa0/n231 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__824.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__825 (.I0(\fa0/pipe4[0] ), .I1(\fa0/pipe7[0] ), .I2(\fa0/pipe6[0] ), 
            .I3(\fa0/pipe2[0] ), .O(n545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__825.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__826 (.I0(n531), .I1(n532), .I2(n544), .I3(n545), .O(\fa0/n230 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__826.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__827 (.I0(\fa0/pipe0[0] ), .I1(\fa0/match_i[6] ), .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__827.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__828 (.I0(\fa0/pipe1[0] ), .I1(rx_data0[6]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__828.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__829 (.I0(n547), .I1(n546), .I2(\fa0/pipe0[1]_2 ), .I3(\fa0/match_i[5] ), 
            .O(n548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__829.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__830 (.I0(\fa0/match_i[2] ), .I1(\fa0/match_i[3] ), .O(n549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__830.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__831 (.I0(\fa0/match_i[1] ), .I1(\fa0/data_buff[5]_2 ), 
            .I2(\fa0/match_i[0] ), .O(n550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__831.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__832 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe0[2]_2 ), .I2(n549), 
            .I3(n550), .O(n551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__832.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__833 (.I0(\fa0/pipe0[3]_2 ), .I1(\fa0/match_i[3] ), .I2(\fa0/data_buff[4]_2 ), 
            .I3(\fa0/match_i[2] ), .O(n552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__833.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__834 (.I0(\fa0/data_buff[6] ), .I1(\fa0/match_i[0] ), .O(n553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__834.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__835 (.I0(\fa0/match_i[1] ), .I1(n552), .I2(n550), .I3(n553), 
            .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__835.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__836 (.I0(n548), .I1(\fa0/match_i[4] ), .I2(n551), .I3(n554), 
            .O(\fa_out0[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__836.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__837 (.I0(\det0/data_sync[1] ), .I1(\det0/prbs_r[1] ), 
            .I2(\det0/prbs_r[0] ), .I3(\det0/data_sync[0] ), .O(n555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__837.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__838 (.I0(\det0/data_sync[3] ), .I1(\det0/prbs_r[3] ), 
            .I2(\det0/prbs_r[2] ), .I3(\det0/data_sync[2] ), .O(n556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__838.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__839 (.I0(\det0/data_sync[5] ), .I1(\det0/prbs_r[5] ), 
            .I2(\det0/prbs_r[4] ), .I3(\det0/data_sync[4] ), .O(n557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__839.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__840 (.I0(\det0/data_sync[6] ), .I1(\det0/prbs_r[6] ), 
            .I2(\det0/data_sync[7] ), .I3(\det0/prbs_r[7] ), .O(n558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__840.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__841 (.I0(n555), .I1(n556), .I2(n557), .I3(n558), .O(\det0/error )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;
    defparam LUT__841.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__842 (.I0(\fa0/pipe1[0] ), .I1(\fa0/match_i[6] ), .O(n559)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__842.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__843 (.I0(\fa0/pipe2[0] ), .I1(rx_data0[5]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__843.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__844 (.I0(n560), .I1(n559), .I2(\fa0/pipe0[0] ), .I3(\fa0/match_i[5] ), 
            .O(n561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__844.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__845 (.I0(\fa0/match_i[1] ), .I1(\fa0/data_buff[4]_2 ), 
            .I2(\fa0/match_i[0] ), .O(n562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__845.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__846 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe0[1]_2 ), .I2(n549), 
            .I3(n562), .O(n563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__846.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__847 (.I0(\fa0/pipe0[2]_2 ), .I1(\fa0/match_i[3] ), .I2(\fa0/pipe0[3]_2 ), 
            .I3(\fa0/match_i[2] ), .O(n564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__847.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__848 (.I0(\fa0/data_buff[5]_2 ), .I1(\fa0/match_i[0] ), 
            .O(n565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__848.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__849 (.I0(\fa0/match_i[1] ), .I1(n564), .I2(n562), .I3(n565), 
            .O(n566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__849.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__850 (.I0(n561), .I1(\fa0/match_i[4] ), .I2(n563), .I3(n566), 
            .O(\fa_out0[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__850.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__851 (.I0(\fa0/pipe2[0] ), .I1(\fa0/match_i[6] ), .O(n567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__851.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__852 (.I0(\fa0/pipe3[0] ), .I1(rx_data0[4]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__852.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__853 (.I0(n568), .I1(n567), .I2(\fa0/pipe1[0] ), .I3(\fa0/match_i[5] ), 
            .O(n569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__853.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__854 (.I0(\fa0/match_i[1] ), .I1(\fa0/pipe0[3]_2 ), .I2(\fa0/match_i[0] ), 
            .O(n570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__854.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__855 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe0[0] ), .I2(n549), 
            .I3(n570), .O(n571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__855.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__856 (.I0(\fa0/pipe0[1]_2 ), .I1(\fa0/match_i[3] ), .I2(\fa0/pipe0[2]_2 ), 
            .I3(\fa0/match_i[2] ), .O(n572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__856.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__857 (.I0(\fa0/data_buff[4]_2 ), .I1(\fa0/match_i[0] ), 
            .O(n573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__857.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__858 (.I0(\fa0/match_i[1] ), .I1(n572), .I2(n570), .I3(n573), 
            .O(n574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__858.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__859 (.I0(n569), .I1(\fa0/match_i[4] ), .I2(n571), .I3(n574), 
            .O(\fa_out0[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__859.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__860 (.I0(\fa0/pipe3[0] ), .I1(\fa0/match_i[6] ), .O(n575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__860.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__861 (.I0(\fa0/pipe4[0] ), .I1(rx_data0[3]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__861.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__862 (.I0(n576), .I1(n575), .I2(\fa0/pipe2[0] ), .I3(\fa0/match_i[5] ), 
            .O(n577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__862.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__863 (.I0(\fa0/match_i[1] ), .I1(\fa0/pipe0[2]_2 ), .I2(\fa0/match_i[0] ), 
            .O(n578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__863.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__864 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe1[0] ), .I2(n549), 
            .I3(n578), .O(n579)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__864.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__865 (.I0(\fa0/pipe0[0] ), .I1(\fa0/match_i[3] ), .I2(\fa0/pipe0[1]_2 ), 
            .I3(\fa0/match_i[2] ), .O(n580)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__865.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__866 (.I0(\fa0/pipe0[3]_2 ), .I1(\fa0/match_i[0] ), .O(n581)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__866.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__867 (.I0(\fa0/match_i[1] ), .I1(n580), .I2(n578), .I3(n581), 
            .O(n582)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__867.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__868 (.I0(n577), .I1(\fa0/match_i[4] ), .I2(n579), .I3(n582), 
            .O(\fa_out0[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__868.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__869 (.I0(\det0/load~FF_brt_0_q ), .I1(\det0/load~FF_brt_1_q ), 
            .O(\det0/n72 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__869.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__870 (.I0(\fa0/pipe4[0] ), .I1(\fa0/match_i[6] ), .O(n583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__870.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__871 (.I0(\fa0/pipe5[0] ), .I1(rx_data0[2]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__871.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__872 (.I0(n584), .I1(n583), .I2(\fa0/pipe3[0] ), .I3(\fa0/match_i[5] ), 
            .O(n585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__872.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__873 (.I0(\fa0/match_i[1] ), .I1(\fa0/pipe0[1]_2 ), .I2(\fa0/match_i[0] ), 
            .O(n586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__873.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__874 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe2[0] ), .I2(n549), 
            .I3(n586), .O(n587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__874.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__875 (.I0(\fa0/pipe1[0] ), .I1(\fa0/match_i[3] ), .I2(\fa0/pipe0[0] ), 
            .I3(\fa0/match_i[2] ), .O(n588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__875.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__876 (.I0(\fa0/pipe0[2]_2 ), .I1(\fa0/match_i[0] ), .O(n589)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__876.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__877 (.I0(\fa0/match_i[1] ), .I1(n588), .I2(n586), .I3(n589), 
            .O(n590)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__877.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__878 (.I0(n585), .I1(\fa0/match_i[4] ), .I2(n587), .I3(n590), 
            .O(\fa_out0[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__878.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__879 (.I0(\fa0/pipe0[1]_2 ), .I1(\fa0/match_i[6] ), .O(n591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__879.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__880 (.I0(\fa0/pipe0[0] ), .I1(rx_data0[7]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n592)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__880.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__881 (.I0(n592), .I1(n591), .I2(\fa0/pipe0[2]_2 ), .I3(\fa0/match_i[5] ), 
            .O(n593)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__881.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__882 (.I0(\fa0/match_i[1] ), .I1(\fa0/data_buff[6] ), .I2(\fa0/match_i[0] ), 
            .O(n594)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__882.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__883 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe0[3]_2 ), .I2(n549), 
            .I3(n594), .O(n595)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__883.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__884 (.I0(\fa0/data_buff[4]_2 ), .I1(\fa0/match_i[3] ), 
            .I2(\fa0/data_buff[5]_2 ), .I3(\fa0/match_i[2] ), .O(n596)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__884.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__885 (.I0(\fa0/data_buff[7] ), .I1(\fa0/match_i[0] ), .O(n597)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__885.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__886 (.I0(\fa0/match_i[1] ), .I1(n596), .I2(n594), .I3(n597), 
            .O(n598)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__886.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__887 (.I0(n593), .I1(\fa0/match_i[4] ), .I2(n595), .I3(n598), 
            .O(\fa_out0[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__887.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__888 (.I0(\fa0/pipe5[0] ), .I1(\fa0/match_i[6] ), .O(n599)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__888.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__889 (.I0(\fa0/pipe6[0] ), .I1(rx_data0[1]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__889.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__890 (.I0(n600), .I1(n599), .I2(\fa0/pipe4[0] ), .I3(\fa0/match_i[5] ), 
            .O(n601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__890.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__891 (.I0(\fa0/match_i[1] ), .I1(\fa0/pipe0[0] ), .I2(\fa0/match_i[0] ), 
            .O(n602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__891.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__892 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe3[0] ), .I2(n549), 
            .I3(n602), .O(n603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__892.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__893 (.I0(\fa0/pipe2[0] ), .I1(\fa0/match_i[3] ), .I2(\fa0/pipe1[0] ), 
            .I3(\fa0/match_i[2] ), .O(n604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__893.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__894 (.I0(\fa0/pipe0[1]_2 ), .I1(\fa0/match_i[0] ), .O(n605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__894.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__895 (.I0(\fa0/match_i[1] ), .I1(n604), .I2(n602), .I3(n605), 
            .O(n606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__895.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__896 (.I0(n601), .I1(\fa0/match_i[4] ), .I2(n603), .I3(n606), 
            .O(\fa_out0[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__896.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__897 (.I0(\fa0/pipe6[0] ), .I1(\fa0/match_i[6] ), .O(n607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__897.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__898 (.I0(\fa0/pipe7[0] ), .I1(rx_data0[0]), .I2(\fa0/match_i[6] ), 
            .I3(\fa0/match_i[7] ), .O(n608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__898.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__899 (.I0(n608), .I1(n607), .I2(\fa0/pipe5[0] ), .I3(\fa0/match_i[5] ), 
            .O(n609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__899.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__900 (.I0(\fa0/match_i[1] ), .I1(\fa0/pipe1[0] ), .I2(\fa0/match_i[0] ), 
            .O(n610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__900.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__901 (.I0(\fa0/match_i[4] ), .I1(\fa0/pipe4[0] ), .I2(n549), 
            .I3(n610), .O(n611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__901.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__902 (.I0(\fa0/pipe3[0] ), .I1(\fa0/match_i[3] ), .I2(\fa0/pipe2[0] ), 
            .I3(\fa0/match_i[2] ), .O(n612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__902.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__903 (.I0(\fa0/pipe0[0] ), .I1(\fa0/match_i[0] ), .O(n613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__903.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__904 (.I0(\fa0/match_i[1] ), .I1(n612), .I2(n610), .I3(n613), 
            .O(n614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__904.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__905 (.I0(n609), .I1(\fa0/match_i[4] ), .I2(n611), .I3(n614), 
            .O(\fa_out0[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__905.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__906 (.I0(\det0/prbs_r[1] ), .I1(\det0/prbs_r[2] ), .O(\det0/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__906.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__907 (.I0(\det0/prbs_r[2] ), .I1(\det0/prbs_r[3] ), .O(\det0/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__907.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__908 (.I0(\det0/prbs_r[3] ), .I1(\det0/prbs_r[4] ), .O(\det0/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__908.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__909 (.I0(\det0/prbs_r[4] ), .I1(\det0/prbs_r[5] ), .O(\det0/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__909.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__910 (.I0(\det0/prbs_r[5] ), .I1(\det0/prbs_r[6] ), .O(\det0/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__910.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__911 (.I0(\det0/prbs_r[6] ), .I1(\det0/prbs_r[7] ), .O(\det0/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__911.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__912 (.I0(\det0/prbs_r[7] ), .I1(\det0/n56 ), .O(\det0/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__912.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__913 (.I0(\det0/prbs_r[1] ), .I1(\det0/prbs_r[3] ), .O(\det0/n41 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__913.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__914 (.I0(\pass_cnt[0] ), .I1(\pass_cnt[1] ), .I2(stat0), 
            .O(n72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__914.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__915 (.I0(\pass_cnt[0] ), .I1(\pass_cnt[1] ), .O(n615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__915.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__916 (.I0(\pass_cnt[2] ), .I1(n615), .I2(stat0), .O(n71)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__916.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__917 (.I0(\pass_cnt[2] ), .I1(n615), .I2(\pass_cnt[3] ), 
            .I3(stat0), .O(n70)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__917.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__918 (.I0(\pass_cnt[4] ), .I1(n523), .I2(stat0), .O(n69)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__918.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__919 (.I0(\pass_cnt[4] ), .I1(n523), .O(n616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__919.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__920 (.I0(\pass_cnt[5] ), .I1(n616), .I2(stat0), .O(n68)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__920.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__921 (.I0(\pass_cnt[5] ), .I1(n616), .I2(\pass_cnt[6] ), 
            .I3(stat0), .O(n67)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__921.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__922 (.I0(\pass_cnt[4] ), .I1(\pass_cnt[5] ), .I2(\pass_cnt[6] ), 
            .I3(n523), .O(n617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__922.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__923 (.I0(\pass_cnt[7] ), .I1(n617), .I2(stat0), .O(n66)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__923.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__924 (.I0(\pass_cnt[7] ), .I1(n617), .I2(\pass_cnt[8] ), 
            .I3(stat0), .O(n65)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__924.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__925 (.I0(\pass_cnt[9] ), .I1(n525), .I2(stat0), .O(n64)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__925.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__926 (.I0(\start_cnt[0] ), .I1(\start_cnt[1] ), .I2(led[1]), 
            .O(n247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__926.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__927 (.I0(\start_cnt[0] ), .I1(\start_cnt[1] ), .O(n618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__927.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__928 (.I0(\start_cnt[2] ), .I1(n618), .I2(led[1]), .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__928.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__929 (.I0(\start_cnt[2] ), .I1(n618), .I2(\start_cnt[3] ), 
            .I3(led[1]), .O(n245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__929.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__930 (.I0(\start_cnt[2] ), .I1(\start_cnt[3] ), .O(n619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__930.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__931 (.I0(n618), .I1(n619), .I2(\start_cnt[4] ), .I3(led[1]), 
            .O(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__931.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__932 (.I0(\start_cnt[2] ), .I1(\start_cnt[3] ), .I2(\start_cnt[4] ), 
            .I3(n618), .O(n620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__932.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__933 (.I0(\start_cnt[5] ), .I1(n620), .I2(led[1]), .O(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__933.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__934 (.I0(\start_cnt[5] ), .I1(n620), .I2(\start_cnt[6] ), 
            .I3(led[1]), .O(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__934.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__935 (.I0(n620), .I1(n527), .I2(\start_cnt[7] ), .I3(led[1]), 
            .O(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__935.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__936 (.I0(n526), .I1(n527), .I2(\start_cnt[8] ), .I3(led[1]), 
            .O(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__936.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__937 (.I0(\start_cnt[9] ), .I1(n528), .I2(led[1]), .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__937.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__940 (.I0(\fa0/n448 ), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__940.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__1 (.CE(1'b1), .I(tx_slowclk), .O(\tx_slowclk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__1.CE_POLARITY = 1'b1;
    EFX_FF \det0/load~FF_brt_1  (.D(\det0/testen_sync ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/load~FF_brt_1_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(96)
    defparam \det0/load~FF_brt_1 .CLK_POLARITY = 1'b0;
    defparam \det0/load~FF_brt_1 .CE_POLARITY = 1'b1;
    defparam \det0/load~FF_brt_1 .SR_POLARITY = 1'b0;
    defparam \det0/load~FF_brt_1 .D_POLARITY = 1'b1;
    defparam \det0/load~FF_brt_1 .SR_SYNC = 1'b0;
    defparam \det0/load~FF_brt_1 .SR_VALUE = 1'b0;
    defparam \det0/load~FF_brt_1 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \det0/load~FF_brt_0  (.D(\det0/error ), .CE(1'b1), .CLK(\rx_slowclk~O ), 
           .SR(rstn_sync_2), .Q(\det0/load~FF_brt_0_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b0, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\prbs_det.v(96)
    defparam \det0/load~FF_brt_0 .CLK_POLARITY = 1'b0;
    defparam \det0/load~FF_brt_0 .CE_POLARITY = 1'b1;
    defparam \det0/load~FF_brt_0 .SR_POLARITY = 1'b0;
    defparam \det0/load~FF_brt_0 .D_POLARITY = 1'b1;
    defparam \det0/load~FF_brt_0 .SR_SYNC = 1'b0;
    defparam \det0/load~FF_brt_0 .SR_VALUE = 1'b0;
    defparam \det0/load~FF_brt_0 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_d503546e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_d503546e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_141
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d503546e_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_141
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_142
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_143
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_144
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_145
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_146
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_147
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_148
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_149
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_150
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_151
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_152
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_153
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_154
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_155
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_156
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_157
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_158
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_159
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_160
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d503546e_161
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_d503546e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_142
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d503546e_143
// module not written out since it is a black box. 
//

