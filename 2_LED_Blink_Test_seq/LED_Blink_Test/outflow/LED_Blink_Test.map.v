
//
// Verific Verilog Description of module top
//

module top (clk, led);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [3:0]led /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire n4, n5, \led_cnt[1] , \led_cnt[0] , n8, n9, n14, n16, 
        n17, \cnt[0] , \led_cnt[2] , n20, n21, n22, n23, n24, 
        n25, n26, n27, n28, n29, n30, n31, n32, n33, n37, 
        n38, \cnt[1] , \cnt[2] , \cnt[3] , \cnt[4] , \cnt[5] , \cnt[6] , 
        \cnt[7] , \cnt[8] , \cnt[9] , \cnt[10] , \cnt[11] , \cnt[12] , 
        \cnt[13] , \cnt[14] , \cnt[15] , \cnt[16] , \cnt[17] , \cnt[18] , 
        \cnt[19] , \cnt[20] , \cnt[21] , \cnt[22] , n63, n64, n65, 
        n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, 
        n76, n77, n78, n79, n80, n81, n82, n89, n95, n96, 
        n106, n121, n122, n123, \clk~O , \cnt[22]~O ;
    
    EFX_FF \led_cnt[1]~FF  (.D(n89), .CE(1'b1), .CLK(\cnt[22]~O ), .SR(n95), 
           .Q(\led_cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(19)
    defparam \led_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \led_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \led_cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \led_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \led_cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \led_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \led_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \led_cnt[0]~FF  (.D(\led_cnt[0] ), .CE(1'b1), .CLK(\cnt[22]~O ), 
           .SR(n95), .Q(\led_cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(19)
    defparam \led_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \led_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \led_cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \led_cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \led_cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \led_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \led_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[0]~FF  (.D(\cnt[0] ), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \led_cnt[2]~FF  (.D(n106), .CE(1'b1), .CLK(\cnt[22]~O ), .SR(n95), 
           .Q(\led_cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(19)
    defparam \led_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \led_cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \led_cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \led_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \led_cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \led_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \led_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[1]~FF  (.D(n71), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[2]~FF  (.D(n69), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[3]~FF  (.D(n32), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[4]~FF  (.D(n28), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[5]~FF  (.D(n30), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[6]~FF  (.D(n79), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[7]~FF  (.D(n22), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[7]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[8]~FF  (.D(n26), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[8]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[9]~FF  (.D(n24), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[9]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[10]~FF  (.D(n20), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[10]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[11]~FF  (.D(n8), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[11]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[12]~FF  (.D(n4), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[12]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[13]~FF  (.D(n81), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[13]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[14]~FF  (.D(n77), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[14]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[15]~FF  (.D(n75), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[15]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[16]~FF  (.D(n73), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[16]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[16]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[16]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[16]~FF .D_POLARITY = 1'b1;
    defparam \cnt[16]~FF .SR_SYNC = 1'b1;
    defparam \cnt[16]~FF .SR_VALUE = 1'b0;
    defparam \cnt[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[17]~FF  (.D(n67), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[17]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[17]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[17]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[17]~FF .D_POLARITY = 1'b1;
    defparam \cnt[17]~FF .SR_SYNC = 1'b1;
    defparam \cnt[17]~FF .SR_VALUE = 1'b0;
    defparam \cnt[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[18]~FF  (.D(n65), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[18]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[18]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[18]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[18]~FF .D_POLARITY = 1'b1;
    defparam \cnt[18]~FF .SR_SYNC = 1'b1;
    defparam \cnt[18]~FF .SR_VALUE = 1'b0;
    defparam \cnt[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[19]~FF  (.D(n63), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[19]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[19]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[19]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[19]~FF .D_POLARITY = 1'b1;
    defparam \cnt[19]~FF .SR_SYNC = 1'b1;
    defparam \cnt[19]~FF .SR_VALUE = 1'b0;
    defparam \cnt[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[20]~FF  (.D(n37), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[20]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[20]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[20]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[20]~FF .D_POLARITY = 1'b1;
    defparam \cnt[20]~FF .SR_SYNC = 1'b1;
    defparam \cnt[20]~FF .SR_VALUE = 1'b0;
    defparam \cnt[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[21]~FF  (.D(n16), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[21]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[21]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[21]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[21]~FF .D_POLARITY = 1'b1;
    defparam \cnt[21]~FF .SR_SYNC = 1'b1;
    defparam \cnt[21]~FF .SR_VALUE = 1'b0;
    defparam \cnt[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[22]~FF  (.D(n14), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(12)
    defparam \cnt[22]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[22]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[22]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[22]~FF .D_POLARITY = 1'b1;
    defparam \cnt[22]~FF .SR_SYNC = 1'b1;
    defparam \cnt[22]~FF .SR_VALUE = 1'b0;
    defparam \cnt[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 \dlatchrs_32/i3  (.I0(n122), .I1(led[2]), .I2(n96), .O(led[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \dlatchrs_32/i3 .LUTMASK = 16'hacac;
    EFX_LUT4 \dlatchrs_32/i4  (.I0(n123), .I1(led[3]), .I2(n96), .O(led[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \dlatchrs_32/i4 .LUTMASK = 16'hacac;
    EFX_LUT4 LUT__248 (.I0(\led_cnt[1] ), .I1(\led_cnt[0] ), .O(n89)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__248.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__249 (.I0(\led_cnt[1] ), .I1(\led_cnt[0] ), .I2(\led_cnt[2] ), 
            .O(n95)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__249.LUTMASK = 16'h1010;
    EFX_ADD \add_5/i13  (.I0(\cnt[12] ), .I1(1'b0), .CI(n9), .O(n4), 
            .CO(n5)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i13 .I0_POLARITY = 1'b1;
    defparam \add_5/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i12  (.I0(\cnt[11] ), .I1(1'b0), .CI(n21), .O(n8), 
            .CO(n9)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i12 .I0_POLARITY = 1'b1;
    defparam \add_5/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i23  (.I0(\cnt[22] ), .I1(1'b0), .CI(n17), .O(n14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i23 .I0_POLARITY = 1'b1;
    defparam \add_5/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i22  (.I0(\cnt[21] ), .I1(1'b0), .CI(n38), .O(n16), 
            .CO(n17)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i22 .I0_POLARITY = 1'b1;
    defparam \add_5/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i11  (.I0(\cnt[10] ), .I1(1'b0), .CI(n25), .O(n20), 
            .CO(n21)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i11 .I0_POLARITY = 1'b1;
    defparam \add_5/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i8  (.I0(\cnt[7] ), .I1(1'b0), .CI(n80), .O(n22), 
            .CO(n23)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i8 .I0_POLARITY = 1'b1;
    defparam \add_5/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i10  (.I0(\cnt[9] ), .I1(1'b0), .CI(n27), .O(n24), 
            .CO(n25)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i10 .I0_POLARITY = 1'b1;
    defparam \add_5/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i9  (.I0(\cnt[8] ), .I1(1'b0), .CI(n23), .O(n26), 
            .CO(n27)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i9 .I0_POLARITY = 1'b1;
    defparam \add_5/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i5  (.I0(\cnt[4] ), .I1(1'b0), .CI(n33), .O(n28), 
            .CO(n29)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i5 .I0_POLARITY = 1'b1;
    defparam \add_5/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i6  (.I0(\cnt[5] ), .I1(1'b0), .CI(n29), .O(n30), 
            .CO(n31)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i6 .I0_POLARITY = 1'b1;
    defparam \add_5/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i4  (.I0(\cnt[3] ), .I1(1'b0), .CI(n70), .O(n32), 
            .CO(n33)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i4 .I0_POLARITY = 1'b1;
    defparam \add_5/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i21  (.I0(\cnt[20] ), .I1(1'b0), .CI(n64), .O(n37), 
            .CO(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i21 .I0_POLARITY = 1'b1;
    defparam \add_5/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i20  (.I0(\cnt[19] ), .I1(1'b0), .CI(n66), .O(n63), 
            .CO(n64)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i20 .I0_POLARITY = 1'b1;
    defparam \add_5/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i19  (.I0(\cnt[18] ), .I1(1'b0), .CI(n68), .O(n65), 
            .CO(n66)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i19 .I0_POLARITY = 1'b1;
    defparam \add_5/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i18  (.I0(\cnt[17] ), .I1(1'b0), .CI(n74), .O(n67), 
            .CO(n68)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i18 .I0_POLARITY = 1'b1;
    defparam \add_5/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i3  (.I0(\cnt[2] ), .I1(1'b0), .CI(n72), .O(n69), 
            .CO(n70)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i3 .I0_POLARITY = 1'b1;
    defparam \add_5/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i2  (.I0(\cnt[1] ), .I1(\cnt[0] ), .CI(1'b0), .O(n71), 
            .CO(n72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i2 .I0_POLARITY = 1'b1;
    defparam \add_5/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i17  (.I0(\cnt[16] ), .I1(1'b0), .CI(n76), .O(n73), 
            .CO(n74)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i17 .I0_POLARITY = 1'b1;
    defparam \add_5/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i16  (.I0(\cnt[15] ), .I1(1'b0), .CI(n78), .O(n75), 
            .CO(n76)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i16 .I0_POLARITY = 1'b1;
    defparam \add_5/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i15  (.I0(\cnt[14] ), .I1(1'b0), .CI(n82), .O(n77), 
            .CO(n78)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i15 .I0_POLARITY = 1'b1;
    defparam \add_5/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i7  (.I0(\cnt[6] ), .I1(1'b0), .CI(n31), .O(n79), 
            .CO(n80)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i7 .I0_POLARITY = 1'b1;
    defparam \add_5/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_5/i14  (.I0(\cnt[13] ), .I1(1'b0), .CI(n5), .O(n81), 
            .CO(n82)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // G:/Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\led_blink_top.v(11)
    defparam \add_5/i14 .I0_POLARITY = 1'b1;
    defparam \add_5/i14 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__250 (.I0(\led_cnt[1] ), .I1(\led_cnt[0] ), .I2(\led_cnt[2] ), 
            .O(n96)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f1f */ ;
    defparam LUT__250.LUTMASK = 16'h1f1f;
    EFX_LUT4 LUT__251 (.I0(\led_cnt[1] ), .I1(\led_cnt[0] ), .I2(\led_cnt[2] ), 
            .O(n106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__251.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__252 (.I0(\led_cnt[1] ), .I1(\led_cnt[0] ), .I2(\led_cnt[2] ), 
            .O(n121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1818 */ ;
    defparam LUT__252.LUTMASK = 16'h1818;
    EFX_LUT4 LUT__253 (.I0(\led_cnt[0] ), .I1(\led_cnt[1] ), .I2(\led_cnt[2] ), 
            .O(n122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c1c */ ;
    defparam LUT__253.LUTMASK = 16'h1c1c;
    EFX_LUT4 LUT__254 (.I0(\led_cnt[1] ), .I1(\led_cnt[0] ), .I2(\led_cnt[2] ), 
            .O(n123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__254.LUTMASK = 16'h1e1e;
    EFX_LUT4 \dlatchrs_32/i1  (.I0(n95), .I1(led[0]), .I2(n96), .O(led[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \dlatchrs_32/i1 .LUTMASK = 16'hacac;
    EFX_LUT4 \dlatchrs_32/i2  (.I0(n121), .I1(led[1]), .I2(n96), .O(led[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \dlatchrs_32/i2 .LUTMASK = 16'hacac;
    EFX_GBUFCE CLKBUF__1 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__1.CE_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(\cnt[22] ), .O(\cnt[22]~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT410
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE1
// module not written out since it is a black box. 
//

