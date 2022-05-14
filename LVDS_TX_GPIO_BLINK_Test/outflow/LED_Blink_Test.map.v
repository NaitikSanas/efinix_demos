
//
// Verific Verilog Description of module top
//

module top (clk, led, blink);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [39:0]led /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]blink /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \cnt[4] , \cnt[3] , n7, n9, n10, n11, n12, n13, n14, 
        n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, 
        n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, 
        n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, 
        n45, n46, n47, n48, n49, n50, \cnt[21] , \cnt[20] , 
        \cnt[19] , \cnt[18] , \cnt[17] , \cnt[16] , \cnt[15] , \cnt[14] , 
        \cnt[13] , \cnt[12] , \cnt[11] , \cnt[10] , \cnt[9] , \cnt[1] , 
        \cnt[8] , \cnt[7] , \cnt[6] , \cnt[5] , \cnt[2] , \cnt[0] , 
        n74, n75, \clk~O ;
    
    assign led[38] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[37] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[36] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[35] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[34] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[33] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[32] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[31] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[30] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[29] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[28] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[27] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[26] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[25] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[24] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[23] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[22] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[21] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[20] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[19] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[18] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[17] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[16] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[15] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[14] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[13] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[12] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[11] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[10] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[9] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[8] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[7] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[6] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[5] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[4] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[3] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[2] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[1] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[0] = led[39] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign blink[2] = blink[3] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign blink[1] = blink[3] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign blink[0] = blink[3] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    EFX_FF \cnt[4]~FF  (.D(n45), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[4]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[4]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[4]~FF .D_POLARITY = 1'b1;
    defparam \cnt[4]~FF .SR_SYNC = 1'b1;
    defparam \cnt[4]~FF .SR_VALUE = 1'b0;
    defparam \cnt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[3]~FF  (.D(n47), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[3]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[3]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[3]~FF .D_POLARITY = 1'b1;
    defparam \cnt[3]~FF .SR_SYNC = 1'b1;
    defparam \cnt[3]~FF .SR_VALUE = 1'b0;
    defparam \cnt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[23]~FF  (.D(n7), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(blink[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[23]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[23]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[23]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[23]~FF .D_POLARITY = 1'b1;
    defparam \cnt[23]~FF .SR_SYNC = 1'b1;
    defparam \cnt[23]~FF .SR_VALUE = 1'b0;
    defparam \cnt[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[22]~FF  (.D(n9), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(led[39])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[22]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[22]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[22]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[22]~FF .D_POLARITY = 1'b1;
    defparam \cnt[22]~FF .SR_SYNC = 1'b1;
    defparam \cnt[22]~FF .SR_VALUE = 1'b0;
    defparam \cnt[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[21]~FF  (.D(n11), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[21]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[21]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[21]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[21]~FF .D_POLARITY = 1'b1;
    defparam \cnt[21]~FF .SR_SYNC = 1'b1;
    defparam \cnt[21]~FF .SR_VALUE = 1'b0;
    defparam \cnt[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[20]~FF  (.D(n13), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[20]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[20]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[20]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[20]~FF .D_POLARITY = 1'b1;
    defparam \cnt[20]~FF .SR_SYNC = 1'b1;
    defparam \cnt[20]~FF .SR_VALUE = 1'b0;
    defparam \cnt[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[19]~FF  (.D(n15), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[19]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[19]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[19]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[19]~FF .D_POLARITY = 1'b1;
    defparam \cnt[19]~FF .SR_SYNC = 1'b1;
    defparam \cnt[19]~FF .SR_VALUE = 1'b0;
    defparam \cnt[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[18]~FF  (.D(n17), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[18]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[18]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[18]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[18]~FF .D_POLARITY = 1'b1;
    defparam \cnt[18]~FF .SR_SYNC = 1'b1;
    defparam \cnt[18]~FF .SR_VALUE = 1'b0;
    defparam \cnt[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[17]~FF  (.D(n19), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[17]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[17]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[17]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[17]~FF .D_POLARITY = 1'b1;
    defparam \cnt[17]~FF .SR_SYNC = 1'b1;
    defparam \cnt[17]~FF .SR_VALUE = 1'b0;
    defparam \cnt[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[16]~FF  (.D(n21), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[16]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[16]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[16]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[16]~FF .D_POLARITY = 1'b1;
    defparam \cnt[16]~FF .SR_SYNC = 1'b1;
    defparam \cnt[16]~FF .SR_VALUE = 1'b0;
    defparam \cnt[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[15]~FF  (.D(n23), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[15]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[15]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[15]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[15]~FF .D_POLARITY = 1'b1;
    defparam \cnt[15]~FF .SR_SYNC = 1'b1;
    defparam \cnt[15]~FF .SR_VALUE = 1'b0;
    defparam \cnt[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[14]~FF  (.D(n25), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[14]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[14]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[14]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[14]~FF .D_POLARITY = 1'b1;
    defparam \cnt[14]~FF .SR_SYNC = 1'b1;
    defparam \cnt[14]~FF .SR_VALUE = 1'b0;
    defparam \cnt[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[13]~FF  (.D(n27), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[13]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[13]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[13]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[13]~FF .D_POLARITY = 1'b1;
    defparam \cnt[13]~FF .SR_SYNC = 1'b1;
    defparam \cnt[13]~FF .SR_VALUE = 1'b0;
    defparam \cnt[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[12]~FF  (.D(n29), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[12]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[12]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[12]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[12]~FF .D_POLARITY = 1'b1;
    defparam \cnt[12]~FF .SR_SYNC = 1'b1;
    defparam \cnt[12]~FF .SR_VALUE = 1'b0;
    defparam \cnt[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[11]~FF  (.D(n31), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[11]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[11]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[11]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[11]~FF .D_POLARITY = 1'b1;
    defparam \cnt[11]~FF .SR_SYNC = 1'b1;
    defparam \cnt[11]~FF .SR_VALUE = 1'b0;
    defparam \cnt[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[10]~FF  (.D(n33), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[10]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[10]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[10]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[10]~FF .D_POLARITY = 1'b1;
    defparam \cnt[10]~FF .SR_SYNC = 1'b1;
    defparam \cnt[10]~FF .SR_VALUE = 1'b0;
    defparam \cnt[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[9]~FF  (.D(n35), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[9]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[9]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[9]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[9]~FF .D_POLARITY = 1'b1;
    defparam \cnt[9]~FF .SR_SYNC = 1'b1;
    defparam \cnt[9]~FF .SR_VALUE = 1'b0;
    defparam \cnt[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[1]~FF  (.D(n74), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[1]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \cnt[1]~FF .SR_SYNC = 1'b1;
    defparam \cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[8]~FF  (.D(n37), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[8]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[8]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[8]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[8]~FF .D_POLARITY = 1'b1;
    defparam \cnt[8]~FF .SR_SYNC = 1'b1;
    defparam \cnt[8]~FF .SR_VALUE = 1'b0;
    defparam \cnt[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[7]~FF  (.D(n39), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[7]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[7]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[7]~FF .D_POLARITY = 1'b1;
    defparam \cnt[7]~FF .SR_SYNC = 1'b1;
    defparam \cnt[7]~FF .SR_VALUE = 1'b0;
    defparam \cnt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[6]~FF  (.D(n41), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[6]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[6]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[6]~FF .D_POLARITY = 1'b1;
    defparam \cnt[6]~FF .SR_SYNC = 1'b1;
    defparam \cnt[6]~FF .SR_VALUE = 1'b0;
    defparam \cnt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[5]~FF  (.D(n43), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[5]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[5]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[5]~FF .D_POLARITY = 1'b1;
    defparam \cnt[5]~FF .SR_SYNC = 1'b1;
    defparam \cnt[5]~FF .SR_VALUE = 1'b0;
    defparam \cnt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[2]~FF  (.D(n49), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[2]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[2]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \cnt[2]~FF .SR_SYNC = 1'b1;
    defparam \cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cnt[0]~FF  (.D(\cnt[0] ), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\cnt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(59)
    defparam \cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \cnt[0]~FF .SR_POLARITY = 1'b1;
    defparam \cnt[0]~FF .D_POLARITY = 1'b0;
    defparam \cnt[0]~FF .SR_SYNC = 1'b1;
    defparam \cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_48/i24  (.I0(blink[3]), .I1(1'b0), .CI(n10), .O(n7)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i24 .I0_POLARITY = 1'b1;
    defparam \add_48/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i23  (.I0(led[39]), .I1(1'b0), .CI(n12), .O(n9), 
            .CO(n10)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i23 .I0_POLARITY = 1'b1;
    defparam \add_48/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i22  (.I0(\cnt[21] ), .I1(1'b0), .CI(n14), .O(n11), 
            .CO(n12)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i22 .I0_POLARITY = 1'b1;
    defparam \add_48/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i21  (.I0(\cnt[20] ), .I1(1'b0), .CI(n16), .O(n13), 
            .CO(n14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i21 .I0_POLARITY = 1'b1;
    defparam \add_48/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i20  (.I0(\cnt[19] ), .I1(1'b0), .CI(n18), .O(n15), 
            .CO(n16)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i20 .I0_POLARITY = 1'b1;
    defparam \add_48/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i19  (.I0(\cnt[18] ), .I1(1'b0), .CI(n20), .O(n17), 
            .CO(n18)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i19 .I0_POLARITY = 1'b1;
    defparam \add_48/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i18  (.I0(\cnt[17] ), .I1(1'b0), .CI(n22), .O(n19), 
            .CO(n20)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i18 .I0_POLARITY = 1'b1;
    defparam \add_48/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i17  (.I0(\cnt[16] ), .I1(1'b0), .CI(n24), .O(n21), 
            .CO(n22)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i17 .I0_POLARITY = 1'b1;
    defparam \add_48/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i16  (.I0(\cnt[15] ), .I1(1'b0), .CI(n26), .O(n23), 
            .CO(n24)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i16 .I0_POLARITY = 1'b1;
    defparam \add_48/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i15  (.I0(\cnt[14] ), .I1(1'b0), .CI(n28), .O(n25), 
            .CO(n26)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i15 .I0_POLARITY = 1'b1;
    defparam \add_48/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i14  (.I0(\cnt[13] ), .I1(1'b0), .CI(n30), .O(n27), 
            .CO(n28)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i14 .I0_POLARITY = 1'b1;
    defparam \add_48/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i13  (.I0(\cnt[12] ), .I1(1'b0), .CI(n32), .O(n29), 
            .CO(n30)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i13 .I0_POLARITY = 1'b1;
    defparam \add_48/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i12  (.I0(\cnt[11] ), .I1(1'b0), .CI(n34), .O(n31), 
            .CO(n32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i12 .I0_POLARITY = 1'b1;
    defparam \add_48/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i11  (.I0(\cnt[10] ), .I1(1'b0), .CI(n36), .O(n33), 
            .CO(n34)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i11 .I0_POLARITY = 1'b1;
    defparam \add_48/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i10  (.I0(\cnt[9] ), .I1(1'b0), .CI(n38), .O(n35), 
            .CO(n36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i10 .I0_POLARITY = 1'b1;
    defparam \add_48/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i9  (.I0(\cnt[8] ), .I1(1'b0), .CI(n40), .O(n37), 
            .CO(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i9 .I0_POLARITY = 1'b1;
    defparam \add_48/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i8  (.I0(\cnt[7] ), .I1(1'b0), .CI(n42), .O(n39), 
            .CO(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i8 .I0_POLARITY = 1'b1;
    defparam \add_48/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i7  (.I0(\cnt[6] ), .I1(1'b0), .CI(n44), .O(n41), 
            .CO(n42)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i7 .I0_POLARITY = 1'b1;
    defparam \add_48/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i6  (.I0(\cnt[5] ), .I1(1'b0), .CI(n46), .O(n43), 
            .CO(n44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i6 .I0_POLARITY = 1'b1;
    defparam \add_48/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i5  (.I0(\cnt[4] ), .I1(1'b0), .CI(n48), .O(n45), 
            .CO(n46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i5 .I0_POLARITY = 1'b1;
    defparam \add_48/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i4  (.I0(\cnt[3] ), .I1(1'b0), .CI(n50), .O(n47), 
            .CO(n48)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i4 .I0_POLARITY = 1'b1;
    defparam \add_48/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i3  (.I0(\cnt[2] ), .I1(1'b0), .CI(n75), .O(n49), 
            .CO(n50)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i3 .I0_POLARITY = 1'b1;
    defparam \add_48/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_48/i2  (.I0(\cnt[1] ), .I1(\cnt[0] ), .CI(1'b0), .O(n74), 
            .CO(n75)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // K:/1_VAAMAN\New folder\LED_Blink_Test\LED_Blink_Test\led_blink_top.v(58)
    defparam \add_48/i2 .I0_POLARITY = 1'b1;
    defparam \add_48/i2 .I1_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
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
// Verific Verilog Description of module EFX_ADD22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE0
// module not written out since it is a black box. 
//

