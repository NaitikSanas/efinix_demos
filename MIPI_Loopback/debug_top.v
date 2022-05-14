///////////////////////////////////////////////////////////////////////////////
//
// Auto-generated Efinix JTAG debugger top module. Do not modify. 
//

//`include "dbg_defines.v"
`define DR_WIDTH 82


module edb_top (
    // debug core ports
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,
    output bscan_TDO,
    input  VIO_0_clk,
    input  [17:0] VIO_0_mipi_rx_error,
    input  [5:0] VIO_0_mipi_rx_type,
    input  [1:0] VIO_0_video_pattern,
    input  [0:0] VIO_0_mipi_bypass,
    input  [19:0] VIO_0_compare_cnt,
    input  [19:0] VIO_0_compare_max,
    input  [0:0] VIO_0_compare_pass
);

    localparam HUB_CS_WIDTH = 15;

    wire [HUB_CS_WIDTH-1:0] edb_module_selects;
    wire [HUB_CS_WIDTH-1:0] edb_module_inhibit;
    wire [HUB_CS_WIDTH-1:0] edb_module_tdo;
    wire    [`DR_WIDTH-1:0] edb_user_dr;

    // debug core connections
    wire VIO_0_module_select;
    wire VIO_0_module_inhibit;
    wire VIO_0_module_tdo;

    assign VIO_0_module_select      = edb_module_selects[0];
    assign edb_module_inhibit[0]    = VIO_0_module_inhibit;
    assign edb_module_tdo[0]        = VIO_0_module_tdo;
    assign edb_module_inhibit[1]    = 1'b0;
    assign edb_module_tdo[1]        = 1'b0;
    assign edb_module_inhibit[2]    = 1'b0;
    assign edb_module_tdo[2]        = 1'b0;
    assign edb_module_inhibit[3]    = 1'b0;
    assign edb_module_tdo[3]        = 1'b0;
    assign edb_module_inhibit[4]    = 1'b0;
    assign edb_module_tdo[4]        = 1'b0;
    assign edb_module_inhibit[5]    = 1'b0;
    assign edb_module_tdo[5]        = 1'b0;
    assign edb_module_inhibit[6]    = 1'b0;
    assign edb_module_tdo[6]        = 1'b0;
    assign edb_module_inhibit[7]    = 1'b0;
    assign edb_module_tdo[7]        = 1'b0;
    assign edb_module_inhibit[8]    = 1'b0;
    assign edb_module_tdo[8]        = 1'b0;
    assign edb_module_inhibit[9]    = 1'b0;
    assign edb_module_tdo[9]        = 1'b0;
    assign edb_module_inhibit[10]   = 1'b0;
    assign edb_module_tdo[10]       = 1'b0;
    assign edb_module_inhibit[11]   = 1'b0;
    assign edb_module_tdo[11]       = 1'b0;
    assign edb_module_inhibit[12]   = 1'b0;
    assign edb_module_tdo[12]       = 1'b0;
    assign edb_module_inhibit[13]   = 1'b0;
    assign edb_module_tdo[13]       = 1'b0;
    assign edb_module_inhibit[14]   = 1'b0;
    assign edb_module_tdo[14]       = 1'b0;

    // debug core instances
    edb_vio_top #(
        .NUM_PROBE_IN           ( 7 ),
        .NUM_PROBE_OUT          ( 0 ),
        .PROBE_IN0_WIDTH        ( 18 ),
        .PROBE_IN1_WIDTH        ( 6 ),
        .PROBE_IN2_WIDTH        ( 2 ),
        .PROBE_IN3_WIDTH        ( 1 ),
        .PROBE_IN4_WIDTH        ( 20 ),
        .PROBE_IN5_WIDTH        ( 20 ),
        .PROBE_IN6_WIDTH        ( 1 )
    ) VIO_0 (
        .bscan_CAPTURE      ( bscan_CAPTURE ),
        .bscan_DRCK         ( bscan_DRCK    ),
        .bscan_RESET        ( bscan_RESET   ),
        .bscan_RUNTEST      ( bscan_RUNTEST ),
        .bscan_SEL          ( bscan_SEL     ),
        .bscan_SHIFT        ( bscan_SHIFT   ),
        .bscan_TCK          ( bscan_TCK     ),
        .bscan_TDI          ( bscan_TDI     ),
        .bscan_TMS          ( bscan_TMS     ),
        .bscan_UPDATE       ( bscan_UPDATE  ),
        .edb_user_dr        ( edb_user_dr ),
        .edb_module_select  ( VIO_0_module_select  ),
        .edb_module_inhibit ( VIO_0_module_inhibit ),
        .edb_module_tdo     ( VIO_0_module_tdo ),
        .clk                ( VIO_0_clk ),
        .probe_in0          ( VIO_0_mipi_rx_error ),
        .probe_in1          ( VIO_0_mipi_rx_type ),
        .probe_in2          ( VIO_0_video_pattern ),
        .probe_in3          ( VIO_0_mipi_bypass ),
        .probe_in4          ( VIO_0_compare_cnt ),
        .probe_in5          ( VIO_0_compare_max ),
        .probe_in6          ( VIO_0_compare_pass ),
        .probe_in7          ( 1'b0 ),
        .probe_in8          ( 1'b0 ),
        .probe_in9          ( 1'b0 ),
        .probe_in10         ( 1'b0 ),
        .probe_in11         ( 1'b0 ),
        .probe_in12         ( 1'b0 ),
        .probe_in13         ( 1'b0 ),
        .probe_in14         ( 1'b0 ),
        .probe_in15         ( 1'b0 ),
        .probe_in16         ( 1'b0 ),
        .probe_in17         ( 1'b0 ),
        .probe_in18         ( 1'b0 ),
        .probe_in19         ( 1'b0 ),
        .probe_in20         ( 1'b0 ),
        .probe_in21         ( 1'b0 ),
        .probe_in22         ( 1'b0 ),
        .probe_in23         ( 1'b0 ),
        .probe_in24         ( 1'b0 ),
        .probe_in25         ( 1'b0 ),
        .probe_in26         ( 1'b0 ),
        .probe_in27         ( 1'b0 ),
        .probe_in28         ( 1'b0 ),
        .probe_in29         ( 1'b0 ),
        .probe_in30         ( 1'b0 ),
        .probe_in31         ( 1'b0 ),
        .probe_in32         ( 1'b0 ),
        .probe_in33         ( 1'b0 ),
        .probe_in34         ( 1'b0 ),
        .probe_in35         ( 1'b0 ),
        .probe_in36         ( 1'b0 ),
        .probe_in37         ( 1'b0 ),
        .probe_in38         ( 1'b0 ),
        .probe_in39         ( 1'b0 ),
        .probe_in40         ( 1'b0 ),
        .probe_in41         ( 1'b0 ),
        .probe_in42         ( 1'b0 ),
        .probe_in43         ( 1'b0 ),
        .probe_in44         ( 1'b0 ),
        .probe_in45         ( 1'b0 ),
        .probe_in46         ( 1'b0 ),
        .probe_in47         ( 1'b0 ),
        .probe_in48         ( 1'b0 ),
        .probe_in49         ( 1'b0 ),
        .probe_in50         ( 1'b0 ),
        .probe_in51         ( 1'b0 ),
        .probe_in52         ( 1'b0 ),
        .probe_in53         ( 1'b0 ),
        .probe_in54         ( 1'b0 ),
        .probe_in55         ( 1'b0 ),
        .probe_in56         ( 1'b0 ),
        .probe_in57         ( 1'b0 ),
        .probe_in58         ( 1'b0 ),
        .probe_in59         ( 1'b0 ),
        .probe_in60         ( 1'b0 ),
        .probe_in61         ( 1'b0 ),
        .probe_in62         ( 1'b0 ),
        .probe_in63         ( 1'b0 ),
        .probe_out0         (  ),
        .probe_out1         (  ),
        .probe_out2         (  ),
        .probe_out3         (  ),
        .probe_out4         (  ),
        .probe_out5         (  ),
        .probe_out6         (  ),
        .probe_out7         (  ),
        .probe_out8         (  ),
        .probe_out9         (  ),
        .probe_out10            (  ),
        .probe_out11            (  ),
        .probe_out12            (  ),
        .probe_out13            (  ),
        .probe_out14            (  ),
        .probe_out15            (  ),
        .probe_out16            (  ),
        .probe_out17            (  ),
        .probe_out18            (  ),
        .probe_out19            (  ),
        .probe_out20            (  ),
        .probe_out21            (  ),
        .probe_out22            (  ),
        .probe_out23            (  ),
        .probe_out24            (  ),
        .probe_out25            (  ),
        .probe_out26            (  ),
        .probe_out27            (  ),
        .probe_out28            (  ),
        .probe_out29            (  ),
        .probe_out30            (  ),
        .probe_out31            (  ),
        .probe_out32            (  ),
        .probe_out33            (  ),
        .probe_out34            (  ),
        .probe_out35            (  ),
        .probe_out36            (  ),
        .probe_out37            (  ),
        .probe_out38            (  ),
        .probe_out39            (  ),
        .probe_out40            (  ),
        .probe_out41            (  ),
        .probe_out42            (  ),
        .probe_out43            (  ),
        .probe_out44            (  ),
        .probe_out45            (  ),
        .probe_out46            (  ),
        .probe_out47            (  ),
        .probe_out48            (  ),
        .probe_out49            (  ),
        .probe_out50            (  ),
        .probe_out51            (  ),
        .probe_out52            (  ),
        .probe_out53            (  ),
        .probe_out54            (  ),
        .probe_out55            (  ),
        .probe_out56            (  ),
        .probe_out57            (  ),
        .probe_out58            (  ),
        .probe_out59            (  ),
        .probe_out60            (  ),
        .probe_out61            (  ),
        .probe_out62            (  ),
        .probe_out63            (  )
    );

    debug_hub debug_hub_inst (
        .bscan_CAPTURE      ( bscan_CAPTURE ),
        .bscan_DRCK         ( bscan_DRCK    ),
        .bscan_RESET        ( bscan_RESET   ),
        .bscan_RUNTEST      ( bscan_RUNTEST ),
        .bscan_SEL          ( bscan_SEL     ),
        .bscan_SHIFT        ( bscan_SHIFT   ),
        .bscan_TCK          ( bscan_TCK     ),
        .bscan_TDI          ( bscan_TDI     ),
        .bscan_TMS          ( bscan_TMS     ),
        .bscan_UPDATE       ( bscan_UPDATE  ),
        .bscan_TDO          ( bscan_TDO     ),
        .edb_module_selects ( edb_module_selects ),
        .edb_module_inhibit ( edb_module_inhibit ),
        .edb_module_tdo     ( edb_module_tdo     ),
        .edb_user_dr        ( edb_user_dr )
    );

endmodule


//////////////////////////////////////////////////////////////////////
// File:  CRC32.v                             
// Date:  Thu Nov 27 13:56:49 2003                                                      
//                                                                     
// Copyright (C) 1999-2003 Easics NV.                 
// This source file may be used and distributed without restriction    
// provided that this copyright statement is not removed from the file 
// and that any derivative work contains the original copyright notice
// and the associated disclaimer.
//
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Purpose: Verilog module containing a synthesizable CRC function
//   * polynomial: (0 1 2 4 5 7 8 10 11 12 16 22 23 26 32)
//   * data width: 1
//                                                                     
// Info: janz@easics.be (Jan Zegers)                           
//       http://www.easics.com
//
// Modified by Nathan Yawn for the Advanced Debug Module
// Changes (C) 2008 - 2010 Nathan Yawn                                 
///////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: adbg_crc32.v,v $
// Revision 1.3  2011-10-24 02:25:11  natey
// Removed extraneous '#1' delays, which were a holdover from the original
// versions in the previous dbg_if core.
//
// Revision 1.2  2010-01-10 22:54:10  Nathan
// Update copyright dates
//
// Revision 1.1  2008/07/22 20:28:29  Nathan
// Changed names of all files and modules (prefixed an a, for advanced).  Cleanup, indenting.  No functional changes.
//
// Revision 1.3  2008/07/06 20:02:53  Nathan
// Fixes for synthesis with Xilinx ISE (also synthesizable with 
// Quartus II 7.0).  Ran through dos2unix.
//
// Revision 1.2  2008/06/20 19:22:10  Nathan
// Reversed the direction of the CRC computation shift, for a more 
// hardware-efficient implementation.
//
//
//
//


module adbg_crc32 (clk, data, enable, shift, clr, rstn, crc_out, serial_out);
    input         clk;
    input         data;
    input         enable;
    input         shift;
    input         clr;
    input         rstn;
    output [31:0] crc_out;
    output        serial_out;

    reg    [31:0] crc;
    wire   [31:0] new_crc;

    // You may notice that the 'poly' in this implementation is backwards.
    // This is because the shift is also 'backwards', so that the data can
    // be shifted out in the same direction, which saves on logic + routing.
    assign new_crc[0] = crc[1];
    assign new_crc[1] = crc[2];
    assign new_crc[2] = crc[3];
    assign new_crc[3] = crc[4];
    assign new_crc[4] = crc[5];
    assign new_crc[5] = crc[6] ^ data ^ crc[0];
    assign new_crc[6] = crc[7];
    assign new_crc[7] = crc[8];
    assign new_crc[8] = crc[9] ^ data ^ crc[0];
    assign new_crc[9] = crc[10] ^ data ^ crc[0];
    assign new_crc[10] = crc[11];
    assign new_crc[11] = crc[12];
    assign new_crc[12] = crc[13];
    assign new_crc[13] = crc[14];
    assign new_crc[14] = crc[15];
    assign new_crc[15] = crc[16] ^ data ^ crc[0];
    assign new_crc[16] = crc[17];
    assign new_crc[17] = crc[18];
    assign new_crc[18] = crc[19];
    assign new_crc[19] = crc[20] ^ data ^ crc[0];
    assign new_crc[20] = crc[21] ^ data ^ crc[0];
    assign new_crc[21] = crc[22] ^ data ^ crc[0];
    assign new_crc[22] = crc[23];
    assign new_crc[23] = crc[24] ^ data ^ crc[0];
    assign new_crc[24] = crc[25] ^ data ^ crc[0];
    assign new_crc[25] = crc[26];
    assign new_crc[26] = crc[27] ^ data ^ crc[0];
    assign new_crc[27] = crc[28] ^ data ^ crc[0];
    assign new_crc[28] = crc[29];
    assign new_crc[29] = crc[30] ^ data ^ crc[0];
    assign new_crc[30] = crc[31] ^ data ^ crc[0];
    assign new_crc[31] =           data ^ crc[0];

    always @ (posedge clk or negedge rstn)
    begin
        if(~rstn)
            crc[31:0] <= 32'hffffffff;
        else if(clr)
            crc[31:0] <= 32'hffffffff;
        else if(enable)
            crc[31:0] <= new_crc;
        else if (shift)
            crc[31:0] <= {1'b0, crc[31:1]};
    end

    //assign crc_match = (crc == 32'h0);
    assign crc_out = crc; //[31];
    assign serial_out = crc[0];
endmodule
// adbg_crc32


////////////////////////////////////////////////////////////////////////////////
//
// Efinix JTAG debugging debug hub core
//
// Dec 2018, samh@efinixinc
//

//`include "dbg_defines.v"


module debug_hub #(
    parameter ID_WIDTH = 4,
    parameter CS_WIDTH = (1<<ID_WIDTH)-1
)(
    // Xilinx BSCANE2 interface
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,
    output bscan_TDO,

    // adv_dbg_if interface used in PULPino, from OpenCores
    output [CS_WIDTH-1:0]   edb_module_selects,
    input  [CS_WIDTH-1:0]   edb_module_inhibit,
    input  [CS_WIDTH-1:0]   edb_module_tdo,
    output [`DR_WIDTH-1:0]  edb_user_dr
);

    reg  [`DR_WIDTH-1:0]        shift_reg;
    wire                        hub_select;
    wire [ID_WIDTH-1:0]         module_id_in;
    reg  [ID_WIDTH-1:0]         module_id_reg;
    wire [ID_WIDTH-1:0]         module_id_sub1;
    wire                        select_inhibit;
    reg  [CS_WIDTH-1:0]         module_selects;
    //reg                         tdo_mux;
    wire [(1<<ID_WIDTH)-1:0]    module_tdo_pwr2;

    integer i;

    assign hub_select   = shift_reg[`DR_WIDTH-1];
    assign module_id_in = shift_reg[`DR_WIDTH-2 -: ID_WIDTH];
    assign edb_user_dr  = shift_reg;

    assign select_inhibit = | edb_module_inhibit;

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)
            shift_reg <= {`DR_WIDTH{1'b0}};
        else if (bscan_SEL && bscan_SHIFT)
            shift_reg <= {bscan_TDI, shift_reg[`DR_WIDTH-1:1]};
    end

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)
            module_id_reg <= {ID_WIDTH{1'b0}};
        else if (bscan_SEL && hub_select && bscan_UPDATE && !select_inhibit)
            module_id_reg <= module_id_in;
    end

    // one-hot select from id
    always @(*) begin
        for (i = 0; i < CS_WIDTH; i = i + 1) begin
            if (module_id_reg == i + 1) // check 4-bit id against 1~15
                module_selects[i] <= 1'b1;
            else
                module_selects[i] <= 1'b0;
        end
    end

    assign edb_module_selects = module_selects;

    // valid id 1~15, sub1 0~14
    // id 0 underflow, becomes 15
    assign module_id_sub1 = module_id_reg - 1'b1; 
    assign module_tdo_pwr2 = {1'b0, edb_module_tdo}; // 1'b0 for id 15
    assign bscan_TDO = module_tdo_pwr2[module_id_sub1];

endmodule
// EFX_DBG_HUB

//////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// This   document  contains  proprietary information  which   is
// protected by  copyright. All rights  are reserved.  This notice
// refers to original work by Efinix, Inc. which may be derivitive
// of other work distributed under license of the authors.  In the
// case of derivative work, nothing in this notice overrides the
// original author's license agreement.  Where applicable, the 
// original license agreement is included in it's original 
// unmodified form immediately below this header.
//
// WARRANTY DISCLAIMER.  
//     THE  DESIGN, CODE, OR INFORMATION ARE PROVIDED “AS IS” AND 
//     EFINIX MAKES NO WARRANTIES, EXPRESS OR IMPLIED WITH 
//     RESPECT THERETO, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES, 
//     INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF 
//     MERCHANTABILITY, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR 
//     PURPOSE.  SOME STATES DO NOT ALLOW EXCLUSIONS OF AN IMPLIED 
//     WARRANTY, SO THIS DISCLAIMER MAY NOT APPLY TO LICENSEE.
//
// LIMITATION OF LIABILITY.  
//     NOTWITHSTANDING ANYTHING TO THE CONTRARY, EXCEPT FOR BODILY 
//     INJURY, EFINIX SHALL NOT BE LIABLE WITH RESPECT TO ANY SUBJECT 
//     MATTER OF THIS AGREEMENT UNDER TORT, CONTRACT, STRICT LIABILITY 
//     OR ANY OTHER LEGAL OR EQUITABLE THEORY (I) FOR ANY INDIRECT, 
//     SPECIAL, INCIDENTAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES OF ANY 
//     CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF 
//     GOODWILL, DATA OR PROFIT, WORK STOPPAGE, OR COMPUTER FAILURE OR 
//     MALFUNCTION, OR IN ANY EVENT (II) FOR ANY AMOUNT IN EXCESS, IN 
//     THE AGGREGATE, OF THE FEE PAID BY LICENSEE TO EFINIX HEREUNDER 
//     (OR, IF THE FEE HAS BEEN WAIVED, $100), EVEN IF EFINIX SHALL HAVE 
//     BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES.  SOME STATES DO 
//     NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
//     CONSEQUENTIAL DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT 
//     APPLY TO LICENSEE.
//
/////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
// Efinix JTAG Virtual Input Output (VIO) debug core
//
// v0.1: samh, Jan 2019
//

//`include "dbg_defines.v"


//
// VIO core wrapper for seperating individual probe ports
//
module edb_vio_top #(
    parameter NUM_PROBE_IN  = 1,
    parameter NUM_PROBE_OUT = 1,

    parameter [7:0] PROBE_IN0_WIDTH   = 1,
    parameter [7:0] PROBE_IN1_WIDTH   = 1,
    parameter [7:0] PROBE_IN2_WIDTH   = 1,
    parameter [7:0] PROBE_IN3_WIDTH   = 1,
    parameter [7:0] PROBE_IN4_WIDTH   = 1,
    parameter [7:0] PROBE_IN5_WIDTH   = 1,
    parameter [7:0] PROBE_IN6_WIDTH   = 1,
    parameter [7:0] PROBE_IN7_WIDTH   = 1,
    parameter [7:0] PROBE_IN8_WIDTH   = 1,
    parameter [7:0] PROBE_IN9_WIDTH   = 1,
    parameter [7:0] PROBE_IN10_WIDTH  = 1,
    parameter [7:0] PROBE_IN11_WIDTH  = 1,
    parameter [7:0] PROBE_IN12_WIDTH  = 1,
    parameter [7:0] PROBE_IN13_WIDTH  = 1,
    parameter [7:0] PROBE_IN14_WIDTH  = 1,
    parameter [7:0] PROBE_IN15_WIDTH  = 1,
    parameter [7:0] PROBE_IN16_WIDTH  = 1,
    parameter [7:0] PROBE_IN17_WIDTH  = 1,
    parameter [7:0] PROBE_IN18_WIDTH  = 1,
    parameter [7:0] PROBE_IN19_WIDTH  = 1,
    parameter [7:0] PROBE_IN20_WIDTH  = 1,
    parameter [7:0] PROBE_IN21_WIDTH  = 1,
    parameter [7:0] PROBE_IN22_WIDTH  = 1,
    parameter [7:0] PROBE_IN23_WIDTH  = 1,
    parameter [7:0] PROBE_IN24_WIDTH  = 1,
    parameter [7:0] PROBE_IN25_WIDTH  = 1,
    parameter [7:0] PROBE_IN26_WIDTH  = 1,
    parameter [7:0] PROBE_IN27_WIDTH  = 1,
    parameter [7:0] PROBE_IN28_WIDTH  = 1,
    parameter [7:0] PROBE_IN29_WIDTH  = 1,
    parameter [7:0] PROBE_IN30_WIDTH  = 1,
    parameter [7:0] PROBE_IN31_WIDTH  = 1,
    parameter [7:0] PROBE_IN32_WIDTH  = 1,
    parameter [7:0] PROBE_IN33_WIDTH  = 1,
    parameter [7:0] PROBE_IN34_WIDTH  = 1,
    parameter [7:0] PROBE_IN35_WIDTH  = 1,
    parameter [7:0] PROBE_IN36_WIDTH  = 1,
    parameter [7:0] PROBE_IN37_WIDTH  = 1,
    parameter [7:0] PROBE_IN38_WIDTH  = 1,
    parameter [7:0] PROBE_IN39_WIDTH  = 1,
    parameter [7:0] PROBE_IN40_WIDTH  = 1,
    parameter [7:0] PROBE_IN41_WIDTH  = 1,
    parameter [7:0] PROBE_IN42_WIDTH  = 1,
    parameter [7:0] PROBE_IN43_WIDTH  = 1,
    parameter [7:0] PROBE_IN44_WIDTH  = 1,
    parameter [7:0] PROBE_IN45_WIDTH  = 1,
    parameter [7:0] PROBE_IN46_WIDTH  = 1,
    parameter [7:0] PROBE_IN47_WIDTH  = 1,
    parameter [7:0] PROBE_IN48_WIDTH  = 1,
    parameter [7:0] PROBE_IN49_WIDTH  = 1,
    parameter [7:0] PROBE_IN50_WIDTH  = 1,
    parameter [7:0] PROBE_IN51_WIDTH  = 1,
    parameter [7:0] PROBE_IN52_WIDTH  = 1,
    parameter [7:0] PROBE_IN53_WIDTH  = 1,
    parameter [7:0] PROBE_IN54_WIDTH  = 1,
    parameter [7:0] PROBE_IN55_WIDTH  = 1,
    parameter [7:0] PROBE_IN56_WIDTH  = 1,
    parameter [7:0] PROBE_IN57_WIDTH  = 1,
    parameter [7:0] PROBE_IN58_WIDTH  = 1,
    parameter [7:0] PROBE_IN59_WIDTH  = 1,
    parameter [7:0] PROBE_IN60_WIDTH  = 1,
    parameter [7:0] PROBE_IN61_WIDTH  = 1,
    parameter [7:0] PROBE_IN62_WIDTH  = 1,
    parameter [7:0] PROBE_IN63_WIDTH  = 1,

    parameter [7:0] PROBE_OUT0_WIDTH  = 1,
    parameter [7:0] PROBE_OUT1_WIDTH  = 1,
    parameter [7:0] PROBE_OUT2_WIDTH  = 1,
    parameter [7:0] PROBE_OUT3_WIDTH  = 1,
    parameter [7:0] PROBE_OUT4_WIDTH  = 1,
    parameter [7:0] PROBE_OUT5_WIDTH  = 1,
    parameter [7:0] PROBE_OUT6_WIDTH  = 1,
    parameter [7:0] PROBE_OUT7_WIDTH  = 1,
    parameter [7:0] PROBE_OUT8_WIDTH  = 1,
    parameter [7:0] PROBE_OUT9_WIDTH  = 1,
    parameter [7:0] PROBE_OUT10_WIDTH = 1,
    parameter [7:0] PROBE_OUT11_WIDTH = 1,
    parameter [7:0] PROBE_OUT12_WIDTH = 1,
    parameter [7:0] PROBE_OUT13_WIDTH = 1,
    parameter [7:0] PROBE_OUT14_WIDTH = 1,
    parameter [7:0] PROBE_OUT15_WIDTH = 1,
    parameter [7:0] PROBE_OUT16_WIDTH = 1,
    parameter [7:0] PROBE_OUT17_WIDTH = 1,
    parameter [7:0] PROBE_OUT18_WIDTH = 1,
    parameter [7:0] PROBE_OUT19_WIDTH = 1,
    parameter [7:0] PROBE_OUT20_WIDTH = 1,
    parameter [7:0] PROBE_OUT21_WIDTH = 1,
    parameter [7:0] PROBE_OUT22_WIDTH = 1,
    parameter [7:0] PROBE_OUT23_WIDTH = 1,
    parameter [7:0] PROBE_OUT24_WIDTH = 1,
    parameter [7:0] PROBE_OUT25_WIDTH = 1,
    parameter [7:0] PROBE_OUT26_WIDTH = 1,
    parameter [7:0] PROBE_OUT27_WIDTH = 1,
    parameter [7:0] PROBE_OUT28_WIDTH = 1,
    parameter [7:0] PROBE_OUT29_WIDTH = 1,
    parameter [7:0] PROBE_OUT30_WIDTH = 1,
    parameter [7:0] PROBE_OUT31_WIDTH = 1,
    parameter [7:0] PROBE_OUT32_WIDTH = 1,
    parameter [7:0] PROBE_OUT33_WIDTH = 1,
    parameter [7:0] PROBE_OUT34_WIDTH = 1,
    parameter [7:0] PROBE_OUT35_WIDTH = 1,
    parameter [7:0] PROBE_OUT36_WIDTH = 1,
    parameter [7:0] PROBE_OUT37_WIDTH = 1,
    parameter [7:0] PROBE_OUT38_WIDTH = 1,
    parameter [7:0] PROBE_OUT39_WIDTH = 1,
    parameter [7:0] PROBE_OUT40_WIDTH = 1,
    parameter [7:0] PROBE_OUT41_WIDTH = 1,
    parameter [7:0] PROBE_OUT42_WIDTH = 1,
    parameter [7:0] PROBE_OUT43_WIDTH = 1,
    parameter [7:0] PROBE_OUT44_WIDTH = 1,
    parameter [7:0] PROBE_OUT45_WIDTH = 1,
    parameter [7:0] PROBE_OUT46_WIDTH = 1,
    parameter [7:0] PROBE_OUT47_WIDTH = 1,
    parameter [7:0] PROBE_OUT48_WIDTH = 1,
    parameter [7:0] PROBE_OUT49_WIDTH = 1,
    parameter [7:0] PROBE_OUT50_WIDTH = 1,
    parameter [7:0] PROBE_OUT51_WIDTH = 1,
    parameter [7:0] PROBE_OUT52_WIDTH = 1,
    parameter [7:0] PROBE_OUT53_WIDTH = 1,
    parameter [7:0] PROBE_OUT54_WIDTH = 1,
    parameter [7:0] PROBE_OUT55_WIDTH = 1,
    parameter [7:0] PROBE_OUT56_WIDTH = 1,
    parameter [7:0] PROBE_OUT57_WIDTH = 1,
    parameter [7:0] PROBE_OUT58_WIDTH = 1,
    parameter [7:0] PROBE_OUT59_WIDTH = 1,
    parameter [7:0] PROBE_OUT60_WIDTH = 1,
    parameter [7:0] PROBE_OUT61_WIDTH = 1,
    parameter [7:0] PROBE_OUT62_WIDTH = 1,
    parameter [7:0] PROBE_OUT63_WIDTH = 1,

    parameter PROBE_OUT0_INIT_VAL  = 'h0,
    parameter PROBE_OUT1_INIT_VAL  = 'h0,
    parameter PROBE_OUT2_INIT_VAL  = 'h0,
    parameter PROBE_OUT3_INIT_VAL  = 'h0,
    parameter PROBE_OUT4_INIT_VAL  = 'h0,
    parameter PROBE_OUT5_INIT_VAL  = 'h0,
    parameter PROBE_OUT6_INIT_VAL  = 'h0,
    parameter PROBE_OUT7_INIT_VAL  = 'h0,
    parameter PROBE_OUT8_INIT_VAL  = 'h0,
    parameter PROBE_OUT9_INIT_VAL  = 'h0,
    parameter PROBE_OUT10_INIT_VAL = 'h0,
    parameter PROBE_OUT11_INIT_VAL = 'h0,
    parameter PROBE_OUT12_INIT_VAL = 'h0,
    parameter PROBE_OUT13_INIT_VAL = 'h0,
    parameter PROBE_OUT14_INIT_VAL = 'h0,
    parameter PROBE_OUT15_INIT_VAL = 'h0,
    parameter PROBE_OUT16_INIT_VAL = 'h0,
    parameter PROBE_OUT17_INIT_VAL = 'h0,
    parameter PROBE_OUT18_INIT_VAL = 'h0,
    parameter PROBE_OUT19_INIT_VAL = 'h0,
    parameter PROBE_OUT20_INIT_VAL = 'h0,
    parameter PROBE_OUT21_INIT_VAL = 'h0,
    parameter PROBE_OUT22_INIT_VAL = 'h0,
    parameter PROBE_OUT23_INIT_VAL = 'h0,
    parameter PROBE_OUT24_INIT_VAL = 'h0,
    parameter PROBE_OUT25_INIT_VAL = 'h0,
    parameter PROBE_OUT26_INIT_VAL = 'h0,
    parameter PROBE_OUT27_INIT_VAL = 'h0,
    parameter PROBE_OUT28_INIT_VAL = 'h0,
    parameter PROBE_OUT29_INIT_VAL = 'h0,
    parameter PROBE_OUT30_INIT_VAL = 'h0,
    parameter PROBE_OUT31_INIT_VAL = 'h0,
    parameter PROBE_OUT32_INIT_VAL = 'h0,
    parameter PROBE_OUT33_INIT_VAL = 'h0,
    parameter PROBE_OUT34_INIT_VAL = 'h0,
    parameter PROBE_OUT35_INIT_VAL = 'h0,
    parameter PROBE_OUT36_INIT_VAL = 'h0,
    parameter PROBE_OUT37_INIT_VAL = 'h0,
    parameter PROBE_OUT38_INIT_VAL = 'h0,
    parameter PROBE_OUT39_INIT_VAL = 'h0,
    parameter PROBE_OUT40_INIT_VAL = 'h0,
    parameter PROBE_OUT41_INIT_VAL = 'h0,
    parameter PROBE_OUT42_INIT_VAL = 'h0,
    parameter PROBE_OUT43_INIT_VAL = 'h0,
    parameter PROBE_OUT44_INIT_VAL = 'h0,
    parameter PROBE_OUT45_INIT_VAL = 'h0,
    parameter PROBE_OUT46_INIT_VAL = 'h0,
    parameter PROBE_OUT47_INIT_VAL = 'h0,
    parameter PROBE_OUT48_INIT_VAL = 'h0,
    parameter PROBE_OUT49_INIT_VAL = 'h0,
    parameter PROBE_OUT50_INIT_VAL = 'h0,
    parameter PROBE_OUT51_INIT_VAL = 'h0,
    parameter PROBE_OUT52_INIT_VAL = 'h0,
    parameter PROBE_OUT53_INIT_VAL = 'h0,
    parameter PROBE_OUT54_INIT_VAL = 'h0,
    parameter PROBE_OUT55_INIT_VAL = 'h0,
    parameter PROBE_OUT56_INIT_VAL = 'h0,
    parameter PROBE_OUT57_INIT_VAL = 'h0,
    parameter PROBE_OUT58_INIT_VAL = 'h0,
    parameter PROBE_OUT59_INIT_VAL = 'h0,
    parameter PROBE_OUT60_INIT_VAL = 'h0,
    parameter PROBE_OUT61_INIT_VAL = 'h0,
    parameter PROBE_OUT62_INIT_VAL = 'h0,
    parameter PROBE_OUT63_INIT_VAL = 'h0
)(

    // Xilinx BSCANE2 interface, without TDO
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,

    // adv_dbg_if interface used in PULPino, from OpenCores
    input  edb_module_select,
    output edb_module_inhibit,
    output edb_module_tdo,
    input  [`DR_WIDTH-1:0] edb_user_dr,

    // Xilinx VIO interface
    input  clk,

    input  [PROBE_IN0_WIDTH -1:0] probe_in0,
    input  [PROBE_IN1_WIDTH -1:0] probe_in1,
    input  [PROBE_IN2_WIDTH -1:0] probe_in2,
    input  [PROBE_IN3_WIDTH -1:0] probe_in3,
    input  [PROBE_IN4_WIDTH -1:0] probe_in4,
    input  [PROBE_IN5_WIDTH -1:0] probe_in5,
    input  [PROBE_IN6_WIDTH -1:0] probe_in6,
    input  [PROBE_IN7_WIDTH -1:0] probe_in7,
    input  [PROBE_IN8_WIDTH -1:0] probe_in8,
    input  [PROBE_IN9_WIDTH -1:0] probe_in9,
    input  [PROBE_IN10_WIDTH-1:0] probe_in10,
    input  [PROBE_IN11_WIDTH-1:0] probe_in11,
    input  [PROBE_IN12_WIDTH-1:0] probe_in12,
    input  [PROBE_IN13_WIDTH-1:0] probe_in13,
    input  [PROBE_IN14_WIDTH-1:0] probe_in14,
    input  [PROBE_IN15_WIDTH-1:0] probe_in15,
    input  [PROBE_IN16_WIDTH-1:0] probe_in16,
    input  [PROBE_IN17_WIDTH-1:0] probe_in17,
    input  [PROBE_IN18_WIDTH-1:0] probe_in18,
    input  [PROBE_IN19_WIDTH-1:0] probe_in19,
    input  [PROBE_IN20_WIDTH-1:0] probe_in20,
    input  [PROBE_IN21_WIDTH-1:0] probe_in21,
    input  [PROBE_IN22_WIDTH-1:0] probe_in22,
    input  [PROBE_IN23_WIDTH-1:0] probe_in23,
    input  [PROBE_IN24_WIDTH-1:0] probe_in24,
    input  [PROBE_IN25_WIDTH-1:0] probe_in25,
    input  [PROBE_IN26_WIDTH-1:0] probe_in26,
    input  [PROBE_IN27_WIDTH-1:0] probe_in27,
    input  [PROBE_IN28_WIDTH-1:0] probe_in28,
    input  [PROBE_IN29_WIDTH-1:0] probe_in29,
    input  [PROBE_IN30_WIDTH-1:0] probe_in30,
    input  [PROBE_IN31_WIDTH-1:0] probe_in31,
    input  [PROBE_IN32_WIDTH-1:0] probe_in32,
    input  [PROBE_IN33_WIDTH-1:0] probe_in33,
    input  [PROBE_IN34_WIDTH-1:0] probe_in34,
    input  [PROBE_IN35_WIDTH-1:0] probe_in35,
    input  [PROBE_IN36_WIDTH-1:0] probe_in36,
    input  [PROBE_IN37_WIDTH-1:0] probe_in37,
    input  [PROBE_IN38_WIDTH-1:0] probe_in38,
    input  [PROBE_IN39_WIDTH-1:0] probe_in39,
    input  [PROBE_IN40_WIDTH-1:0] probe_in40,
    input  [PROBE_IN41_WIDTH-1:0] probe_in41,
    input  [PROBE_IN42_WIDTH-1:0] probe_in42,
    input  [PROBE_IN43_WIDTH-1:0] probe_in43,
    input  [PROBE_IN44_WIDTH-1:0] probe_in44,
    input  [PROBE_IN45_WIDTH-1:0] probe_in45,
    input  [PROBE_IN46_WIDTH-1:0] probe_in46,
    input  [PROBE_IN47_WIDTH-1:0] probe_in47,
    input  [PROBE_IN48_WIDTH-1:0] probe_in48,
    input  [PROBE_IN49_WIDTH-1:0] probe_in49,
    input  [PROBE_IN50_WIDTH-1:0] probe_in50,
    input  [PROBE_IN51_WIDTH-1:0] probe_in51,
    input  [PROBE_IN52_WIDTH-1:0] probe_in52,
    input  [PROBE_IN53_WIDTH-1:0] probe_in53,
    input  [PROBE_IN54_WIDTH-1:0] probe_in54,
    input  [PROBE_IN55_WIDTH-1:0] probe_in55,
    input  [PROBE_IN56_WIDTH-1:0] probe_in56,
    input  [PROBE_IN57_WIDTH-1:0] probe_in57,
    input  [PROBE_IN58_WIDTH-1:0] probe_in58,
    input  [PROBE_IN59_WIDTH-1:0] probe_in59,
    input  [PROBE_IN60_WIDTH-1:0] probe_in60,
    input  [PROBE_IN61_WIDTH-1:0] probe_in61,
    input  [PROBE_IN62_WIDTH-1:0] probe_in62,
    input  [PROBE_IN63_WIDTH-1:0] probe_in63,

    output [PROBE_OUT0_WIDTH -1:0] probe_out0,
    output [PROBE_OUT1_WIDTH -1:0] probe_out1,
    output [PROBE_OUT2_WIDTH -1:0] probe_out2,
    output [PROBE_OUT3_WIDTH -1:0] probe_out3,
    output [PROBE_OUT4_WIDTH -1:0] probe_out4,
    output [PROBE_OUT5_WIDTH -1:0] probe_out5,
    output [PROBE_OUT6_WIDTH -1:0] probe_out6,
    output [PROBE_OUT7_WIDTH -1:0] probe_out7,
    output [PROBE_OUT8_WIDTH -1:0] probe_out8,
    output [PROBE_OUT9_WIDTH -1:0] probe_out9,
    output [PROBE_OUT10_WIDTH-1:0] probe_out10,
    output [PROBE_OUT11_WIDTH-1:0] probe_out11,
    output [PROBE_OUT12_WIDTH-1:0] probe_out12,
    output [PROBE_OUT13_WIDTH-1:0] probe_out13,
    output [PROBE_OUT14_WIDTH-1:0] probe_out14,
    output [PROBE_OUT15_WIDTH-1:0] probe_out15,
    output [PROBE_OUT16_WIDTH-1:0] probe_out16,
    output [PROBE_OUT17_WIDTH-1:0] probe_out17,
    output [PROBE_OUT18_WIDTH-1:0] probe_out18,
    output [PROBE_OUT19_WIDTH-1:0] probe_out19,
    output [PROBE_OUT20_WIDTH-1:0] probe_out20,
    output [PROBE_OUT21_WIDTH-1:0] probe_out21,
    output [PROBE_OUT22_WIDTH-1:0] probe_out22,
    output [PROBE_OUT23_WIDTH-1:0] probe_out23,
    output [PROBE_OUT24_WIDTH-1:0] probe_out24,
    output [PROBE_OUT25_WIDTH-1:0] probe_out25,
    output [PROBE_OUT26_WIDTH-1:0] probe_out26,
    output [PROBE_OUT27_WIDTH-1:0] probe_out27,
    output [PROBE_OUT28_WIDTH-1:0] probe_out28,
    output [PROBE_OUT29_WIDTH-1:0] probe_out29,
    output [PROBE_OUT30_WIDTH-1:0] probe_out30,
    output [PROBE_OUT31_WIDTH-1:0] probe_out31,
    output [PROBE_OUT32_WIDTH-1:0] probe_out32,
    output [PROBE_OUT33_WIDTH-1:0] probe_out33,
    output [PROBE_OUT34_WIDTH-1:0] probe_out34,
    output [PROBE_OUT35_WIDTH-1:0] probe_out35,
    output [PROBE_OUT36_WIDTH-1:0] probe_out36,
    output [PROBE_OUT37_WIDTH-1:0] probe_out37,
    output [PROBE_OUT38_WIDTH-1:0] probe_out38,
    output [PROBE_OUT39_WIDTH-1:0] probe_out39,
    output [PROBE_OUT40_WIDTH-1:0] probe_out40,
    output [PROBE_OUT41_WIDTH-1:0] probe_out41,
    output [PROBE_OUT42_WIDTH-1:0] probe_out42,
    output [PROBE_OUT43_WIDTH-1:0] probe_out43,
    output [PROBE_OUT44_WIDTH-1:0] probe_out44,
    output [PROBE_OUT45_WIDTH-1:0] probe_out45,
    output [PROBE_OUT46_WIDTH-1:0] probe_out46,
    output [PROBE_OUT47_WIDTH-1:0] probe_out47,
    output [PROBE_OUT48_WIDTH-1:0] probe_out48,
    output [PROBE_OUT49_WIDTH-1:0] probe_out49,
    output [PROBE_OUT50_WIDTH-1:0] probe_out50,
    output [PROBE_OUT51_WIDTH-1:0] probe_out51,
    output [PROBE_OUT52_WIDTH-1:0] probe_out52,
    output [PROBE_OUT53_WIDTH-1:0] probe_out53,
    output [PROBE_OUT54_WIDTH-1:0] probe_out54,
    output [PROBE_OUT55_WIDTH-1:0] probe_out55,
    output [PROBE_OUT56_WIDTH-1:0] probe_out56,
    output [PROBE_OUT57_WIDTH-1:0] probe_out57,
    output [PROBE_OUT58_WIDTH-1:0] probe_out58,
    output [PROBE_OUT59_WIDTH-1:0] probe_out59,
    output [PROBE_OUT60_WIDTH-1:0] probe_out60,
    output [PROBE_OUT61_WIDTH-1:0] probe_out61,
    output [PROBE_OUT62_WIDTH-1:0] probe_out62,
    output [PROBE_OUT63_WIDTH-1:0] probe_out63
);

    function automatic integer cond_sum64;
        input integer count;
        input [64*8-1:0] in;
        integer i;
        reg [64*8-1:0] in_reg;
        begin
            cond_sum64 = 0;
            in_reg = in;
            for (i = 0; i < count; i=i+1) begin
                cond_sum64 = cond_sum64 + in_reg[7:0];
                in_reg = in_reg >> 8;
            end
        end
    endfunction

    localparam MAXP = 64;

    localparam [MAXP*8-1:0] PROBE_IN_W_ARRAY = {
        PROBE_IN63_WIDTH, PROBE_IN62_WIDTH, PROBE_IN61_WIDTH, PROBE_IN60_WIDTH,
        PROBE_IN59_WIDTH, PROBE_IN58_WIDTH, PROBE_IN57_WIDTH, PROBE_IN56_WIDTH,
        PROBE_IN55_WIDTH, PROBE_IN54_WIDTH, PROBE_IN53_WIDTH, PROBE_IN52_WIDTH,
        PROBE_IN51_WIDTH, PROBE_IN50_WIDTH, PROBE_IN49_WIDTH, PROBE_IN48_WIDTH,
        PROBE_IN47_WIDTH, PROBE_IN46_WIDTH, PROBE_IN45_WIDTH, PROBE_IN44_WIDTH,
        PROBE_IN43_WIDTH, PROBE_IN42_WIDTH, PROBE_IN41_WIDTH, PROBE_IN40_WIDTH,
        PROBE_IN39_WIDTH, PROBE_IN38_WIDTH, PROBE_IN37_WIDTH, PROBE_IN36_WIDTH,
        PROBE_IN35_WIDTH, PROBE_IN34_WIDTH, PROBE_IN33_WIDTH, PROBE_IN32_WIDTH,
        PROBE_IN31_WIDTH, PROBE_IN30_WIDTH, PROBE_IN29_WIDTH, PROBE_IN28_WIDTH,
        PROBE_IN27_WIDTH, PROBE_IN26_WIDTH, PROBE_IN25_WIDTH, PROBE_IN24_WIDTH,
        PROBE_IN23_WIDTH, PROBE_IN22_WIDTH, PROBE_IN21_WIDTH, PROBE_IN20_WIDTH,
        PROBE_IN19_WIDTH, PROBE_IN18_WIDTH, PROBE_IN17_WIDTH, PROBE_IN16_WIDTH,
        PROBE_IN15_WIDTH, PROBE_IN14_WIDTH, PROBE_IN13_WIDTH, PROBE_IN12_WIDTH,
        PROBE_IN11_WIDTH, PROBE_IN10_WIDTH, PROBE_IN9_WIDTH, PROBE_IN8_WIDTH,
        PROBE_IN7_WIDTH, PROBE_IN6_WIDTH, PROBE_IN5_WIDTH, PROBE_IN4_WIDTH,
        PROBE_IN3_WIDTH, PROBE_IN2_WIDTH, PROBE_IN1_WIDTH, PROBE_IN0_WIDTH
    };

    localparam PROBE_IN_W = cond_sum64(NUM_PROBE_IN, PROBE_IN_W_ARRAY);

    localparam [MAXP*8-1:0] PROBE_OUT_W_ARRAY = {
        PROBE_OUT63_WIDTH, PROBE_OUT62_WIDTH, PROBE_OUT61_WIDTH, PROBE_OUT60_WIDTH,
        PROBE_OUT59_WIDTH, PROBE_OUT58_WIDTH, PROBE_OUT57_WIDTH, PROBE_OUT56_WIDTH,
        PROBE_OUT55_WIDTH, PROBE_OUT54_WIDTH, PROBE_OUT53_WIDTH, PROBE_OUT52_WIDTH,
        PROBE_OUT51_WIDTH, PROBE_OUT50_WIDTH, PROBE_OUT49_WIDTH, PROBE_OUT48_WIDTH,
        PROBE_OUT47_WIDTH, PROBE_OUT46_WIDTH, PROBE_OUT45_WIDTH, PROBE_OUT44_WIDTH,
        PROBE_OUT43_WIDTH, PROBE_OUT42_WIDTH, PROBE_OUT41_WIDTH, PROBE_OUT40_WIDTH,
        PROBE_OUT39_WIDTH, PROBE_OUT38_WIDTH, PROBE_OUT37_WIDTH, PROBE_OUT36_WIDTH,
        PROBE_OUT35_WIDTH, PROBE_OUT34_WIDTH, PROBE_OUT33_WIDTH, PROBE_OUT32_WIDTH,
        PROBE_OUT31_WIDTH, PROBE_OUT30_WIDTH, PROBE_OUT29_WIDTH, PROBE_OUT28_WIDTH,
        PROBE_OUT27_WIDTH, PROBE_OUT26_WIDTH, PROBE_OUT25_WIDTH, PROBE_OUT24_WIDTH,
        PROBE_OUT23_WIDTH, PROBE_OUT22_WIDTH, PROBE_OUT21_WIDTH, PROBE_OUT20_WIDTH,
        PROBE_OUT19_WIDTH, PROBE_OUT18_WIDTH, PROBE_OUT17_WIDTH, PROBE_OUT16_WIDTH,
        PROBE_OUT15_WIDTH, PROBE_OUT14_WIDTH, PROBE_OUT13_WIDTH, PROBE_OUT12_WIDTH,
        PROBE_OUT11_WIDTH, PROBE_OUT10_WIDTH, PROBE_OUT9_WIDTH, PROBE_OUT8_WIDTH,
        PROBE_OUT7_WIDTH, PROBE_OUT6_WIDTH, PROBE_OUT5_WIDTH, PROBE_OUT4_WIDTH,
        PROBE_OUT3_WIDTH, PROBE_OUT2_WIDTH, PROBE_OUT1_WIDTH, PROBE_OUT0_WIDTH
    };

    localparam PROBE_OUT_W = cond_sum64(NUM_PROBE_OUT, PROBE_OUT_W_ARRAY);

    localparam init_concat = {
        PROBE_OUT63_INIT_VAL[PROBE_OUT63_WIDTH-1:0],
        PROBE_OUT62_INIT_VAL[PROBE_OUT62_WIDTH-1:0],
        PROBE_OUT61_INIT_VAL[PROBE_OUT61_WIDTH-1:0],
        PROBE_OUT60_INIT_VAL[PROBE_OUT60_WIDTH-1:0],
        PROBE_OUT59_INIT_VAL[PROBE_OUT59_WIDTH-1:0],
        PROBE_OUT58_INIT_VAL[PROBE_OUT58_WIDTH-1:0],
        PROBE_OUT57_INIT_VAL[PROBE_OUT57_WIDTH-1:0],
        PROBE_OUT56_INIT_VAL[PROBE_OUT56_WIDTH-1:0],
        PROBE_OUT55_INIT_VAL[PROBE_OUT55_WIDTH-1:0],
        PROBE_OUT54_INIT_VAL[PROBE_OUT54_WIDTH-1:0],
        PROBE_OUT53_INIT_VAL[PROBE_OUT53_WIDTH-1:0],
        PROBE_OUT52_INIT_VAL[PROBE_OUT52_WIDTH-1:0],
        PROBE_OUT51_INIT_VAL[PROBE_OUT51_WIDTH-1:0],
        PROBE_OUT50_INIT_VAL[PROBE_OUT50_WIDTH-1:0],
        PROBE_OUT49_INIT_VAL[PROBE_OUT49_WIDTH-1:0],
        PROBE_OUT48_INIT_VAL[PROBE_OUT48_WIDTH-1:0],
        PROBE_OUT47_INIT_VAL[PROBE_OUT47_WIDTH-1:0],
        PROBE_OUT46_INIT_VAL[PROBE_OUT46_WIDTH-1:0],
        PROBE_OUT45_INIT_VAL[PROBE_OUT45_WIDTH-1:0],
        PROBE_OUT44_INIT_VAL[PROBE_OUT44_WIDTH-1:0],
        PROBE_OUT43_INIT_VAL[PROBE_OUT43_WIDTH-1:0],
        PROBE_OUT42_INIT_VAL[PROBE_OUT42_WIDTH-1:0],
        PROBE_OUT41_INIT_VAL[PROBE_OUT41_WIDTH-1:0],
        PROBE_OUT40_INIT_VAL[PROBE_OUT40_WIDTH-1:0],
        PROBE_OUT39_INIT_VAL[PROBE_OUT39_WIDTH-1:0],
        PROBE_OUT38_INIT_VAL[PROBE_OUT38_WIDTH-1:0],
        PROBE_OUT37_INIT_VAL[PROBE_OUT37_WIDTH-1:0],
        PROBE_OUT36_INIT_VAL[PROBE_OUT36_WIDTH-1:0],
        PROBE_OUT35_INIT_VAL[PROBE_OUT35_WIDTH-1:0],
        PROBE_OUT34_INIT_VAL[PROBE_OUT34_WIDTH-1:0],
        PROBE_OUT33_INIT_VAL[PROBE_OUT33_WIDTH-1:0],
        PROBE_OUT32_INIT_VAL[PROBE_OUT32_WIDTH-1:0],
        PROBE_OUT31_INIT_VAL[PROBE_OUT31_WIDTH-1:0],
        PROBE_OUT30_INIT_VAL[PROBE_OUT30_WIDTH-1:0],
        PROBE_OUT29_INIT_VAL[PROBE_OUT29_WIDTH-1:0],
        PROBE_OUT28_INIT_VAL[PROBE_OUT28_WIDTH-1:0],
        PROBE_OUT27_INIT_VAL[PROBE_OUT27_WIDTH-1:0],
        PROBE_OUT26_INIT_VAL[PROBE_OUT26_WIDTH-1:0],
        PROBE_OUT25_INIT_VAL[PROBE_OUT25_WIDTH-1:0],
        PROBE_OUT24_INIT_VAL[PROBE_OUT24_WIDTH-1:0],
        PROBE_OUT23_INIT_VAL[PROBE_OUT23_WIDTH-1:0],
        PROBE_OUT22_INIT_VAL[PROBE_OUT22_WIDTH-1:0],
        PROBE_OUT21_INIT_VAL[PROBE_OUT21_WIDTH-1:0],
        PROBE_OUT20_INIT_VAL[PROBE_OUT20_WIDTH-1:0],
        PROBE_OUT19_INIT_VAL[PROBE_OUT19_WIDTH-1:0],
        PROBE_OUT18_INIT_VAL[PROBE_OUT18_WIDTH-1:0],
        PROBE_OUT17_INIT_VAL[PROBE_OUT17_WIDTH-1:0],
        PROBE_OUT16_INIT_VAL[PROBE_OUT16_WIDTH-1:0],
        PROBE_OUT15_INIT_VAL[PROBE_OUT15_WIDTH-1:0],
        PROBE_OUT14_INIT_VAL[PROBE_OUT14_WIDTH-1:0],
        PROBE_OUT13_INIT_VAL[PROBE_OUT13_WIDTH-1:0],
        PROBE_OUT12_INIT_VAL[PROBE_OUT12_WIDTH-1:0],
        PROBE_OUT11_INIT_VAL[PROBE_OUT11_WIDTH-1:0],
        PROBE_OUT10_INIT_VAL[PROBE_OUT10_WIDTH-1:0],
        PROBE_OUT9_INIT_VAL[PROBE_OUT9_WIDTH-1:0],
        PROBE_OUT8_INIT_VAL[PROBE_OUT8_WIDTH-1:0],
        PROBE_OUT7_INIT_VAL[PROBE_OUT7_WIDTH-1:0],
        PROBE_OUT6_INIT_VAL[PROBE_OUT6_WIDTH-1:0],
        PROBE_OUT5_INIT_VAL[PROBE_OUT5_WIDTH-1:0],
        PROBE_OUT4_INIT_VAL[PROBE_OUT4_WIDTH-1:0],
        PROBE_OUT3_INIT_VAL[PROBE_OUT3_WIDTH-1:0],
        PROBE_OUT2_INIT_VAL[PROBE_OUT2_WIDTH-1:0],
        PROBE_OUT1_INIT_VAL[PROBE_OUT1_WIDTH-1:0],
        PROBE_OUT0_INIT_VAL[PROBE_OUT0_WIDTH-1:0]
    };

    localparam PROBE_OUT_INIT_VAL = init_concat[(PROBE_OUT_W ? PROBE_OUT_W-1 : 0):0];

    wire [(PROBE_IN_W ? PROBE_IN_W-1 : 0):0]    probe_in_vec;
    wire [(PROBE_OUT_W ? PROBE_OUT_W-1 : 0):0]  probe_out_vec;
    wire [PROBE_IN_W+(64-NUM_PROBE_IN)-1:0]     probe_in_concat;
    wire [PROBE_OUT_W+(64-NUM_PROBE_OUT)-1:0]   probe_out_concat;

    assign probe_in_concat = {
        probe_in63, probe_in62, probe_in61, probe_in60,
        probe_in59, probe_in58, probe_in57, probe_in56,
        probe_in55, probe_in54, probe_in53, probe_in52,
        probe_in51, probe_in50, probe_in49, probe_in48,
        probe_in47, probe_in46, probe_in45, probe_in44,
        probe_in43, probe_in42, probe_in41, probe_in40,
        probe_in39, probe_in38, probe_in37, probe_in36,
        probe_in35, probe_in34, probe_in33, probe_in32,
        probe_in31, probe_in30, probe_in29, probe_in28,
        probe_in27, probe_in26, probe_in25, probe_in24,
        probe_in23, probe_in22, probe_in21, probe_in20,
        probe_in19, probe_in18, probe_in17, probe_in16,
        probe_in15, probe_in14, probe_in13, probe_in12,
        probe_in11, probe_in10, probe_in9, probe_in8,
        probe_in7, probe_in6, probe_in5, probe_in4,
        probe_in3, probe_in2, probe_in1, probe_in0
    };

    assign {
        probe_out63, probe_out62, probe_out61, probe_out60,
        probe_out59, probe_out58, probe_out57, probe_out56,
        probe_out55, probe_out54, probe_out53, probe_out52,
        probe_out51, probe_out50, probe_out49, probe_out48,
        probe_out47, probe_out46, probe_out45, probe_out44,
        probe_out43, probe_out42, probe_out41, probe_out40,
        probe_out39, probe_out38, probe_out37, probe_out36,
        probe_out35, probe_out34, probe_out33, probe_out32,
        probe_out31, probe_out30, probe_out29, probe_out28,
        probe_out27, probe_out26, probe_out25, probe_out24,
        probe_out23, probe_out22, probe_out21, probe_out20,
        probe_out19, probe_out18, probe_out17, probe_out16,
        probe_out15, probe_out14, probe_out13, probe_out12,
        probe_out11, probe_out10, probe_out9, probe_out8,
        probe_out7, probe_out6, probe_out5, probe_out4,
        probe_out3, probe_out2, probe_out1, probe_out0
    } = probe_out_concat;

    assign probe_in_vec = probe_in_concat[(PROBE_IN_W ? PROBE_IN_W-1 : 0):0];
    assign probe_out_concat = {{(64-NUM_PROBE_OUT){1'b0}}, probe_out_vec};

    vio_core #(
        .INT_WIDTH ( PROBE_IN_W ), 
        .OUT_WIDTH ( PROBE_OUT_W ),
        .PROBE_OUT_INIT_VAL ( PROBE_OUT_INIT_VAL )
    ) vio_core_inst (
        .bscan_CAPTURE          ( bscan_CAPTURE ),
        .bscan_DRCK             ( bscan_DRCK    ),
        .bscan_RESET            ( bscan_RESET   ),
        .bscan_RUNTEST          ( bscan_RUNTEST ),
        .bscan_SEL              ( bscan_SEL     ),
        .bscan_SHIFT            ( bscan_SHIFT   ),
        .bscan_TCK              ( bscan_TCK     ),
        .bscan_TDI              ( bscan_TDI     ),
        .bscan_TMS              ( bscan_TMS     ),
        .bscan_UPDATE           ( bscan_UPDATE  ),
        .edb_module_select      ( edb_module_select ),
        .edb_module_inhibit     ( edb_module_inhibit ),
        .edb_module_tdo         ( edb_module_tdo ),
        .edb_user_dr            ( edb_user_dr ),
        .clk                    ( clk           ),
        .probe_in_vec           ( probe_in_vec ),
        .probe_out_vec          ( probe_out_vec )
    );

endmodule
// edb_vio_top


//
// A golden template for the vio_core, no modification needed during rtl_gen
//
module vio_core #(
    parameter INT_WIDTH = 1,
    parameter OUT_WIDTH = 1,
    parameter PROBE_OUT_INIT_VAL = 0
)(
    // Xilinx BSCANE2 interface, without TDO
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,

    // adv_dbg_if interface used in PULPino, from OpenCores
    input                  edb_module_select,
    output reg             edb_module_inhibit,
    output reg             edb_module_tdo,
    input  [`DR_WIDTH-1:0] edb_user_dr,

    // Xilinx VIO interface, with single wide in/out-put vectors
    input                      clk,
    input      [(INT_WIDTH ? INT_WIDTH-1 : 0):0] probe_in_vec,
    output reg [(OUT_WIDTH ? OUT_WIDTH-1 : 0):0] probe_out_vec
);

    function integer clog2;
        input integer value;
        integer d;
        begin
            if (value <= 0)
                clog2 = 0;
            else begin
                d = 2;
                for (clog2 = 1; d < value; clog2 = clog2 + 1)
                    d = d << 1;
            end
        end
    endfunction

    // !!! Make sure ( DR_WIDTH >= 1 + OP_WIDTH + ADDR_WIDTH + COUNT_WIDTH )
    localparam OP_WIDTH    = 4;
    localparam ADDR_WIDTH  = 16;
    localparam COUNT_WIDTH = 16;

    localparam REGSEL_WIDTH   = 2;
    localparam REG_WIDTH      = 16; // max width for a single register
    //localparam REG_WIDTH_LOG2 = $clog2(REG_WIDTH);
    localparam REG_MSB        = `DR_WIDTH - 2 - OP_WIDTH - REGSEL_WIDTH;

    localparam INT_DEPTH      = ((INT_WIDTH-1)/REG_WIDTH) + 1;
    localparam OUT_DEPTH      = ((OUT_WIDTH-1)/REG_WIDTH) + 1;
    localparam INT_DEPTH_LOG2 = clog2(INT_DEPTH);
    localparam OUT_DEPTH_LOG2 = clog2(OUT_DEPTH);

    // Index coding for registers
    localparam INTREG_R0 = 0; 

    // Cmd coding for instructions
    //localparam VIO_CMD_BWRITE8  = 4'h1;
    localparam VIO_CMD_BWRITE16 = 4'h2;
    //localparam VIO_CMD_BWRITE32 = 4'h3;
    //localparam VIO_CMD_BWRITE64 = 4'h4;
    //localparam VIO_CMD_BREAD8   = 4'h5;
    localparam VIO_CMD_BREAD16  = 4'h6;
    //localparam VIO_CMD_BREAD32  = 4'h7;
    //localparam VIO_CMD_BREAD64  = 4'h8;
    localparam VIO_CMD_IREG_WR  = 4'h9;
    localparam VIO_CMD_IREG_SEL = 4'hd;

    // FSM state coding
    localparam STATE_idle    = 4'h0;
    localparam STATE_Rbegin  = 4'h1;
    localparam STATE_Rready  = 4'h2;
    localparam STATE_Rstatus = 4'h3;
    localparam STATE_Rburst  = 4'h4;
    localparam STATE_Wready  = 4'h5;
    localparam STATE_Wwait   = 4'h6;
    localparam STATE_Wburst  = 4'h7;
    localparam STATE_Wstatus = 4'h8;
    localparam STATE_Rcrc    = 4'h9;
    localparam STATE_Wcrc    = 4'ha;
    localparam STATE_Wmatch  = 4'hb;
    ////////////////////////////////////////

    //wire    [OUT_WIDTH-1:0] probe_out_init_val;

    // Registers to hold state etc.
    reg               [2:0] internal_reg_r0;          // module internal register.
    reg     [REG_WIDTH-1:0] data_out_shift_reg;       // widht-bits to accomodate the internal_reg_*
    reg  [REGSEL_WIDTH-1:0] internal_register_select; // Holds index of currently selected register
    reg      [OP_WIDTH-1:0] opcode;                   // holds the current command (rd/wr, word size)
    reg              [31:0] address_counter;          // Holds address for next Wishbone access
    reg               [5:0] bit_count;                // How many bits have been shifted in/out
    reg              [15:0] word_count;               // bytes remaining in current burst command

    // Control signals for the various counters / registers / state machines
    reg        out_reg_ld_en;    // Enable parallel load of data_out_shift_reg
    reg        out_reg_shift_en; // Enable shift of data_out_shift_reg
    reg        out_reg_data_sel; // 0 = BIU data, 1 = internal register data
    reg        regsel_ld_en;     // Reg. select register load enable
    reg        intreg_ld_en;     // load enable for internal registers
    reg  [1:0] tdo_output_sel;   // Selects signal to send to TDO.  0 = ready bit, 1 = output register, 2 = CRC match, 3 = CRC shift reg.
    reg        addr_sel;         // Selects data for address_counter. 0 = data_register_i, 1 = incremented address count
    reg        addr_ct_en;       // Enable signal for address counter register
    reg        op_reg_en;        // Enable signal for 'operation' register
    reg        bit_ct_rst;       // reset (zero) bit count register
    reg        bit_ct_en;        // enable bit counter
    reg        word_ct_sel;      // Selects data for byte counter.  0 = data_register_i, 1 = decremented byte count
    reg        word_ct_en;       // Enable byte counter register
    reg        crc_in_sel;       // selects incoming write data (=0) or outgoing read data (=1)as input to CRC module
    reg        crc_en;           // does 1-bit iteration in CRC module
    reg        crc_shift_en;     // CRC reg is also it's own output shift register; this enables a shift
    reg        crc_clr;          // resets CRC module
    reg        biu_strobe;       // Indicates that the bus unit should latch data and start a transaction

    // Status signals
    wire intreg_instruction; // True when the input_data_i reg has a valid internal register instruction
    wire intreg_write;       // True when the input_data_i reg has an internal register write op
    wire burst_write;        // True when the input_data_i reg has a valid burst write instruction for this module
    wire burst_read;         // True when the input_data_i reg has a valid burst read  instruction for this module 
    reg  rd_op;              // True when operation in the opcode reg is a read, false when a write
    wire bit_count_max;      // true when bit counter is equal to current word size
    wire bit_count_32;       // true when bit count register == 32, for CRC after burst writes
    wire word_count_zero;    // true when byte counter is zero
    wire crc_match;          // indicates whether data_register_i matches computed CRC
    wire biu_ready;          // indicates that the BIU has finished the last command
    
    // Intermediate signals
    wire                    module_cmd;             // inverse of MSB of data_register_i. 1 means current cmd not for top level (but is for us)
    wire     [OP_WIDTH-1:0] opcode_in;              // from data_register_i
    wire   [ADDR_WIDTH-1:0] address_in;             // from data_register_i
    wire  [COUNT_WIDTH-1:0] count_in;               // from data_register_i
    wire [REGSEL_WIDTH-1:0] reg_select;             // from data_register_i, input to internal register select register

    wire    [REG_WIDTH-1:0] out_reg_data;           // parallel input to the output shift register
    reg     [REG_WIDTH-1:0] data_from_internal_reg; // data from internal reg. MUX to output shift register
    reg               [5:0] word_size_bits;         // 8,16,32 or 64.  Decoded from 'operation'
    reg               [3:0] word_size_bytes;        // 1,2,4 or 8
    wire             [31:0] data_to_addr_counter;   // output of the mux in front of the address counter inputs
    wire             [32:0] incremented_address;    // value of address counter plus 'word_size'
    wire             [15:0] decremented_word_count;
    wire             [15:0] data_to_word_counter;   // output of the mux in front of the byte counter input
    wire                    crc_serial_out;
    wire                    crc_data_in;            // input to CRC module, either data_register_i[52] or data_out_shift_reg[0]
    wire             [31:0] crc_data_out;           // output of CRC module, to output shift register
    wire    [REG_WIDTH-1:0] data_to_biu;            // from data_register_i
    reg     [REG_WIDTH-1:0] data_from_biu;          // to data_out_shift_register

    reg               [3:0] module_state, module_next_state;

    wire commit_int;
    wire clear_int;
    wire hold_probe_in;

    // VIO probe sync
    wire  [(INT_WIDTH ? INT_WIDTH-1 : 0):0] probe_in_sync;
    reg                   commit_sync1;
    reg                   commit_sync2;
    reg   [(OUT_WIDTH ? OUT_WIDTH-1 : 0):0] probe_out_sync;

    ////////////////////////////////////////
    // 

    assign module_cmd  = ~edb_user_dr[`DR_WIDTH-1];
    assign opcode_in   =  edb_user_dr[`DR_WIDTH-2 -: OP_WIDTH];
    assign address_in  =  edb_user_dr[`DR_WIDTH-2-OP_WIDTH -: ADDR_WIDTH];
    assign count_in    =  edb_user_dr[`DR_WIDTH-2-OP_WIDTH-ADDR_WIDTH -: COUNT_WIDTH];

    assign reg_select  =  edb_user_dr[`DR_WIDTH-2-OP_WIDTH -: REGSEL_WIDTH];

    assign data_to_biu = {bscan_TDI, edb_user_dr[`DR_WIDTH-1 -: REG_WIDTH-1]};

    assign {hold_probe_in, clear_int, commit_int} = internal_reg_r0[0 +: 3];

    ////////////////////////////////////////
    // 

    assign intreg_instruction = ((opcode_in == VIO_CMD_IREG_WR) | (opcode_in == VIO_CMD_IREG_SEL));

    assign intreg_write = (opcode_in == VIO_CMD_IREG_WR);

    assign burst_write =  //(opcode_in == VIO_CMD_BWRITE8)  | 
                          (opcode_in == VIO_CMD_BWRITE16) ; 
                          //(opcode_in == VIO_CMD_BWRITE32) | 
                          //(opcode_in == VIO_CMD_BWRITE64) 

    assign burst_read  =  //(opcode_in == VIO_CMD_BREAD8)  | 
                          (opcode_in == VIO_CMD_BREAD16) ; 
                          //(opcode_in == VIO_CMD_BREAD32) | 
                          //(opcode_in == VIO_CMD_BREAD64) 

    always @(*) begin
        case (opcode)
            //VIO_CMD_BWRITE8: begin
            //    word_size_bits  = 6'd7;  // Bits is actually bits-1, to make the FSM easier
            //    word_size_bytes = 4'd1;
            //    rd_op           = 1'b0;
            //end
            VIO_CMD_BWRITE16: begin
                word_size_bits  = 6'd15;  // Bits is actually bits-1, to make the FSM easier
                word_size_bytes = 4'd2;
                rd_op           = 1'b0;
            end
            //VIO_CMD_BWRITE32: begin
            //    word_size_bits  = 6'd31;  // Bits is actually bits-1, to make the FSM easier
            //    word_size_bytes = 4'd4;
            //    rd_op           = 1'b0;
            //end
            //VIO_CMD_BWRITE64: begin
            //    word_size_bits  = 6'd63;  // Bits is actually bits-1, to make the FSM easier
            //    word_size_bytes = 4'd8;
            //    rd_op           = 1'b0;
            //end

            //VIO_CMD_BREAD8: begin
            //    word_size_bits  = 6'd7;  // Bits is actually bits-1, to make the FSM easier
            //    word_size_bytes = 4'd1;
            //    rd_op           = 1'b1;
            //end
            VIO_CMD_BREAD16: begin
                word_size_bits  = 6'd15;  // Bits is actually bits-1, to make the FSM easier
                word_size_bytes = 4'd2;
                rd_op           = 1'b1;
            end
            //VIO_CMD_BREAD32: begin
            //    word_size_bits  = 6'd31;  // Bits is actually bits-1, to make the FSM easier
            //    word_size_bytes = 4'd4;
            //    rd_op           = 1'b1;
            //end
            //VIO_CMD_BREAD64: begin
            //    word_size_bits  = 6'd63;  // Bits is actually bits-1, to make the FSM easier
            //    word_size_bytes = 4'd4;
            //    rd_op           = 1'b1;
            //end

            default: begin
                word_size_bits  = 6'b00_0000;
                word_size_bytes = 4'b0000;
                rd_op           = 1'b0;
            end
        endcase
    end

    ////////////////////////////////////////
    // internal register

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET) begin
            internal_register_select <= 'h0;
        end 
        else if (regsel_ld_en) begin
            internal_register_select <= reg_select;
        end
    end

    always @(*) begin
        case (internal_register_select)
            INTREG_R0: data_from_internal_reg = internal_reg_r0;
            default:   data_from_internal_reg = internal_reg_r0;
        endcase
    end

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET) begin
            internal_reg_r0 <= 'h0;
        end 
        else if (intreg_ld_en && (reg_select == INTREG_R0)) begin
            internal_reg_r0 <= edb_user_dr[REG_MSB -: 3];
        end
    end

    ///////////////////////////////////////////////
    // Address counter

    assign data_to_addr_counter = (addr_sel) ? incremented_address[31:0] : address_in;
    assign incremented_address  = address_counter + word_size_bytes;

    // Technically, since this data (sometimes) comes from the input shift reg, we should latch on
    // negedge, per the JTAG spec. But that makes things difficult when incrementing.
    always @(posedge bscan_TCK or posedge bscan_RESET) begin // JTAG spec specifies latch on negative edge in UPDATE_DR state
        if (bscan_RESET)
            address_counter <= 32'h0;
        else if (addr_ct_en)
            address_counter <= data_to_addr_counter;
    end

    ////////////////////////////////////////
    // Opcode latch

    always @(posedge bscan_TCK or posedge bscan_RESET) begin // JTAG spec specifies latch on negative edge in UPDATE_DR state
        if (bscan_RESET)
            opcode <= 4'h0;
        else if (op_reg_en)
            opcode <= opcode_in;
    end

    //////////////////////////////////////
    // Bit counter

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)     bit_count <= 6'h0;
        else if (bit_ct_rst) bit_count <= 6'h0;
        else if (bit_ct_en)  bit_count <= bit_count + 6'h1;
    end

    assign bit_count_max = (bit_count == word_size_bits) ? 1'b1 : 1'b0;
    assign bit_count_32 = (bit_count == 6'h20) ? 1'b1 : 1'b0;

    ////////////////////////////////////////
    // Word counter

    assign data_to_word_counter = (word_ct_sel) ? decremented_word_count : count_in;
    assign decremented_word_count = word_count - 16'h1;

    // Technically, since this data (sometimes) comes from the input shift reg, we should latch on
    // negedge, per the JTAG spec. But that makes things difficult when incrementing.
    always @(posedge bscan_TCK or posedge bscan_RESET) begin // JTAG spec specifies latch on negative edge in UPDATE_DR state
        if (bscan_RESET)
            word_count <= 16'h0;
        else if (word_ct_en)
            word_count <= data_to_word_counter;
    end

    assign word_count_zero = (word_count == 16'h0);

    ////////////////////////////////////////
    // tdo mux

    assign out_reg_data = (out_reg_data_sel) ? data_from_internal_reg : data_from_biu;

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)           data_out_shift_reg <= 'h0;
        else if (out_reg_ld_en)    data_out_shift_reg <= out_reg_data;
        else if (out_reg_shift_en) data_out_shift_reg <= {1'b0, data_out_shift_reg[REG_WIDTH-1:1]};
    end

    always @(*) begin
        case (tdo_output_sel) 
            2'h1:    edb_module_tdo = data_out_shift_reg[0];
            2'h2:    edb_module_tdo = crc_match;
            2'h3:    edb_module_tdo = crc_serial_out;
            default: edb_module_tdo = biu_ready;
        endcase
    end

    /////////////////////////////////////
    // CRC module

    assign crc_data_in = (crc_in_sel) ? bscan_TDI : data_out_shift_reg[0];  // MUX, write or read data

    adbg_crc32 axi_crc_i (
        .clk        ( bscan_TCK ), 
        .data       ( crc_data_in ),
        .enable     ( crc_en ),
        .shift      ( crc_shift_en ),
        .clr        ( crc_clr ),
        .rstn       ( ~bscan_RESET ),
        .crc_out    ( crc_data_out ),
        .serial_out ( crc_serial_out )
    );

    assign crc_match = (edb_user_dr[`DR_WIDTH-1 -: 32] == crc_data_out) ? 1'b1 : 1'b0;

    ////////////////////////////////////////
    // Control FSM

    // Definition of machine state values.
    // Don't worry too much about the state encoding, the synthesis tool
    // will probably re-encode it anyway.

    // sequential part of the FSM
    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)
            module_state <= STATE_idle;
        else
            module_state <= module_next_state;
    end

    // Determination of next state; purely combinatorial
    always @(*) begin
        case (module_state)
            STATE_idle: begin
                if (module_cmd && edb_module_select && bscan_UPDATE && burst_read) 
                    module_next_state = STATE_Rbegin;
                else if (module_cmd && edb_module_select && bscan_UPDATE && burst_write) 
                    module_next_state = STATE_Wready;
                else
                    module_next_state = STATE_idle;
            end

            STATE_Rbegin: begin
                if (word_count_zero)
                    module_next_state = STATE_idle;  // set up a burst of size 0, illegal.
                else
                    module_next_state = STATE_Rready;
            end

            STATE_Rready: begin
                if (edb_module_select && bscan_CAPTURE)
                    module_next_state = STATE_Rstatus;
                else
                    module_next_state = STATE_Rready;
            end

            STATE_Rstatus: begin
                if (bscan_UPDATE)
                    module_next_state = STATE_idle;
                else if (biu_ready)
                    module_next_state = STATE_Rburst;
                else
                    module_next_state = STATE_Rstatus;
            end

            STATE_Rburst: begin
                if (bscan_UPDATE)
                    module_next_state = STATE_idle;
                else if (bit_count_max && word_count_zero)
                    module_next_state = STATE_Rcrc;
                else
                    module_next_state = STATE_Rburst;
            end

            STATE_Rcrc: begin
                if (bscan_UPDATE)
                    module_next_state = STATE_idle;
                // This doubles as the 'recovery' state, so stay here until update_dr_i.
                else 
                    module_next_state = STATE_Rcrc;
            end

            STATE_Wready: begin
                if (word_count_zero)
                    module_next_state = STATE_idle;
                else if (edb_module_select && bscan_CAPTURE) 
                    module_next_state = STATE_Wwait;
                else
                    module_next_state = STATE_Wready;
            end

            STATE_Wwait: begin
                if (bscan_UPDATE)
                    module_next_state = STATE_idle;  // client terminated early
                else if (edb_module_select && edb_user_dr[`DR_WIDTH-1])
                    module_next_state = STATE_Wburst; // Got a start bit
                else
                    module_next_state = STATE_Wwait;
            end

            STATE_Wburst: begin
                if (bscan_UPDATE)
                    module_next_state = STATE_idle;  // client terminated early
                else if (bit_count_max) begin
                    if(word_count_zero)
                        module_next_state = STATE_Wcrc;
                    else
                        module_next_state = STATE_Wburst;
                end
                else 
                    module_next_state = STATE_Wburst;
            end

            STATE_Wstatus: begin
                if (bscan_UPDATE)
                    module_next_state = STATE_idle;  // client terminated early    
                else if (word_count_zero)
                    module_next_state = STATE_Wcrc;
                // can't wait until bus ready if multiple devices in chain...
                // Would have to read postfix_bits, then send another start bit and push it through
                // prefix_bits...potentially very inefficient.
                else 
                    module_next_state = STATE_Wburst;
            end

            STATE_Wcrc: begin
                if (bscan_UPDATE)  module_next_state = STATE_idle;  // client terminated early
                else if (bit_count_32) module_next_state = STATE_Wmatch;
                else module_next_state = STATE_Wcrc;
            end

            STATE_Wmatch: begin
                if (bscan_UPDATE)  module_next_state = STATE_idle;
               // This doubles as our recovery state, stay here until update_dr_i
                else module_next_state = STATE_Wmatch;
            end

            default: module_next_state = STATE_idle;  // shouldn't actually happen...
        endcase
    end

    // Outputs of state machine, pure combinatorial
    always @(*) begin
        // Default everything to 0, keeps the case statement simple
        addr_sel          = 1'b1;  // Selects data for address_counter. 0 = data_register_i, 1 = incremented address count
        addr_ct_en        = 1'b0;  // Enable signal for address counter register
        op_reg_en         = 1'b0;  // Enable signal for 'operation' register
        bit_ct_en         = 1'b0;  // enable bit counter
        bit_ct_rst        = 1'b0;  // reset (zero) bit count register
        word_ct_sel       = 1'b1;  // Selects data for byte counter.  0 = data_register_i, 1 = decremented byte count
        word_ct_en        = 1'b0;   // Enable byte counter register
        out_reg_ld_en     = 1'b0;  // Enable parallel load of data_out_shift_reg
        out_reg_shift_en  = 1'b0;  // Enable shift of data_out_shift_reg
        tdo_output_sel    = 2'b1;   // 1 = data reg, 0 = biu_ready, 2 = crc_match, 3 = CRC data
        biu_strobe        = 1'b0;
        crc_clr           = 1'b0;
        crc_en            = 1'b0;      // add the input bit to the CRC calculation
        crc_in_sel        = 1'b0;  // 0 = tdo, 1 = tdi
        crc_shift_en      = 1'b0;
        out_reg_data_sel  = 1'b1;  // 0 = BIU data, 1 = internal register data
        regsel_ld_en      = 1'b0;
        intreg_ld_en      = 1'b0;
        //error_reg_en      = 1'b0;
        //biu_clr_err       = 1'b0;  // Set this to reset the BIU, clearing the biu_err bit
        edb_module_inhibit = 1'b0;  // Don't disable the top-level module in the default case

        case (module_state)
            STATE_idle: begin
                addr_sel    = 1'b0;
                word_ct_sel = 1'b0;

                // Operations for internal registers - stay in idle state
                if (edb_module_select & bscan_SHIFT)
                    out_reg_shift_en = 1'b1; // For module regs
                if (edb_module_select & bscan_CAPTURE) begin
                    out_reg_data_sel = 1'b1;  // select internal register data
                    out_reg_ld_en = 1'b1;   // For module regs
                end
                if (edb_module_select & module_cmd & bscan_UPDATE) begin
                    if (intreg_instruction) 
                        regsel_ld_en = 1'b1;  // For module regs
                    if (intreg_write)       
                        intreg_ld_en = 1'b1;  // For module regs
                end

                // Burst operations
                if (module_next_state != STATE_idle) begin  // Do the same to receive read or write opcode
                    addr_ct_en = 1'b1;
                    op_reg_en  = 1'b1;
                    bit_ct_rst = 1'b1;
                    word_ct_en = 1'b1;
                    crc_clr    = 1'b1;
                end
            end

            STATE_Rbegin: begin
                if (!word_count_zero) begin  // Start a biu read transaction
                    biu_strobe = 1'b1;
                    addr_sel   = 1'b1;
                    addr_ct_en = 1'b1;
                end
            end

            STATE_Rready:
                ; // Just a wait state // FIXME ??????? 
      
            STATE_Rstatus: begin
                tdo_output_sel  = 2'h0;
                edb_module_inhibit = 1'b1;    // in case of early termination

                if (module_next_state == STATE_Rburst) begin
                    //error_reg_en     = 1'b1;       // Check the wb_error bit
                    out_reg_data_sel = 1'b0;  // select BIU data
                    out_reg_ld_en    = 1'b1;
                    bit_ct_rst       = 1'b1;
                    word_ct_sel      = 1'b1;
                    word_ct_en       = 1'b1;
                    if (!(decremented_word_count == 0) && !word_count_zero) begin  // Start a biu read transaction
                        biu_strobe    = 1'b1;
                        addr_sel      = 1'b1;
                        addr_ct_en    = 1'b1;
                    end
                end
            end

            STATE_Rburst: begin
                tdo_output_sel     = 2'h1;
                out_reg_shift_en   = 1'b1;
                bit_ct_en          = 1'b1;
                crc_en             = 1'b1;
                crc_in_sel         = 1'b0;  // read data in output shift register LSB (tdo)
                edb_module_inhibit = 1'b1;  // in case of early termination

                if (bit_count_max) begin
                    //error_reg_en     = 1'b1;       // Check the wb_error bit
                    out_reg_data_sel = 1'b0;  // select BIU data
                    out_reg_ld_en    = 1'b1;
                    bit_ct_rst       = 1'b1;
                    word_ct_sel      = 1'b1;
                    word_ct_en       = 1'b1;
                    if (!(decremented_word_count == 0) && !word_count_zero) begin // Start a biu read transaction
                        biu_strobe     = 1'b1;
                        addr_sel       = 1'b1;
                        addr_ct_en     = 1'b1;
                    end
                end
            end

            STATE_Rcrc: begin
                // Just shift out the data, don't bother counting, we don't move on until update_dr_i
                tdo_output_sel = 2'h3;
                crc_shift_en   = 1'b1;
                edb_module_inhibit = 1'b1;
            end

            STATE_Wready:
                ; // Just a wait state

            STATE_Wwait: begin
                tdo_output_sel = 2'h1;
                edb_module_inhibit = 1'b1;    // in case of early termination
                if (module_next_state == STATE_Wburst) begin
                    //biu_clr_err    = 1'b1;  // If error occurred on last transaction of last burst, biu_err is still set.  Clear it.
                    bit_ct_en      = 1'b1;
                    word_ct_sel    = 1'b1;  // Pre-decrement the byte count
                    word_ct_en     = 1'b1;
                    crc_en         = 1'b1;  // CRC gets tdi_i, which is 1 cycle ahead of data_register_i, so we need the bit there now in the CRC
                    crc_in_sel     = 1'b1;  // read data from tdi_i
                end
            end

            STATE_Wburst: begin
                bit_ct_en       = 1'b1;
                tdo_output_sel  = 2'h1;
                crc_en          = 1'b1;
                crc_in_sel      = 1'b1;  // read data from tdi_i
                edb_module_inhibit = 1'b1;    // in case of early termination

                // It would be better to do this in STATE_Wstatus, but we don't use that state 
                // if ADBG_USE_HISPEED is defined.  
                if(bit_count_max) begin
                    //error_reg_en = 1'b1;       // Check the wb_error bit
                    bit_ct_rst   = 1'b1;  // Zero the bit count
                    // start transaction. Can't do this here if not hispeed, biu_ready
                    // is the status bit, and it's 0 if we start a transaction here.
                    biu_strobe   = 1'b1;  // Start a BIU transaction
                    addr_ct_en   = 1'b1;  // Increment thte address counter
                    // Also can't dec the byte count yet unless hispeed,
                    // that would skip the last word.
                    word_ct_sel  = 1'b1;  // Decrement the byte count
                    word_ct_en   = 1'b1;
                end
            end

            STATE_Wstatus: begin
                tdo_output_sel = 2'h0;  // Send the status bit to TDO
                //error_reg_en = 1'b1;       // Check the wb_error bit
                // start transaction
                biu_strobe = 1'b1;  // Start a BIU transaction
                word_ct_sel = 1'b1;  // Decrement the byte count
                word_ct_en = 1'b1;
                bit_ct_rst = 1'b1;  // Zero the bit count
                addr_ct_en = 1'b1;  // Increment thte address counter
                edb_module_inhibit = 1'b1;    // in case of early termination
            end

            STATE_Wcrc: begin
                bit_ct_en = 1'b1;
                edb_module_inhibit = 1'b1;    // in case of early termination
                if (module_next_state == STATE_Wmatch)
                    tdo_output_sel = 2'h2;  // This is when the 'match' bit is actually read
            end

            STATE_Wmatch: begin
                tdo_output_sel = 2'h2;
                edb_module_inhibit = 1'b1;
                // Bit of a hack here...an error on the final write won't be detected in STATE_Wstatus like the rest, 
                // so we assume the bus transaction is done and check it / latch it into the error register here.
                //if (module_next_state == STATE_idle)
                //    error_reg_en = 1'b1;
            end

            default: ;
        endcase
    end

    ////////////////////////////////////////
    // Probe in 
    assign biu_ready = 1'b1;

    genvar i;
    generate
        for (i = 0; i < INT_WIDTH; i = i + 1) begin : gen_probe_in_sync
            syncer sync_probe_in_U (
                .CLKA ( bscan_TCK ), 
                .RSTA ( 1'b0 ),
                .DA   ( probe_in_vec[i] ), 
                .ENA  ( ~hold_probe_in ),
                .CLKB ( clk ), 
                .RSTB ( 1'b0 ),
                .DB   ( probe_in_sync[i] ),
                .ENB  ( 1'b1 )
            );
        end
    endgenerate
    ////////////////////////////////////////

    wire [INT_DEPTH*REG_WIDTH-1:0] probe_in_sync_ceil;
    wire [REG_WIDTH-1:0] probe_in_sync_2d [0:INT_DEPTH-1];
    wire [REG_WIDTH-1:0] probe_in_mux_out;
    wire [INT_DEPTH_LOG2-1:0] sel;

    assign probe_in_sync_ceil = probe_in_sync;

    generate
        for (i = 0; i < INT_WIDTH; i = i + REG_WIDTH) begin: gen_probe_in_2d_wire
            assign probe_in_sync_2d[i/REG_WIDTH] = probe_in_sync_ceil[i +: REG_WIDTH];
        end
    endgenerate

    assign sel = address_counter[$clog2(REG_WIDTH/8) +: INT_DEPTH_LOG2];
    assign probe_in_mux_out = probe_in_sync_2d[sel];

    always @(posedge bscan_TCK) begin
        if (rd_op && biu_strobe) begin
            data_from_biu <= probe_in_mux_out;
        end
    end

    ////////////////////////////////////////
    // Probe out
    always @(posedge clk) begin
        commit_sync1 <= commit_int;
        commit_sync2 <= commit_sync1;
    end

    always @(posedge clk or posedge clear_int) begin
        if (clear_int) begin
            probe_out_vec <= PROBE_OUT_INIT_VAL;
        end 
        else if (commit_sync2) begin 
            probe_out_vec <= probe_out_sync;
        end
    end

    generate
        for (i = 0; i < OUT_WIDTH; i = i + 1) begin : gen_biu_to_probe_out
            always @(posedge bscan_TCK or posedge clear_int) begin
                if (clear_int) begin
                    probe_out_sync[i] <= PROBE_OUT_INIT_VAL[i];
                end 
                else if (!rd_op && biu_strobe && (address_counter[$clog2(REG_WIDTH/8) +: OUT_DEPTH_LOG2] == (i/REG_WIDTH))) begin
                    probe_out_sync[i] <= data_to_biu[i % REG_WIDTH];
                end
            end
        end
    endgenerate
    ////////////////////////////////////////

endmodule
// efx_vio_core


//
// 3-flops synchronizer with sync reset/enable
//
module syncer (
    input CLKA, DA, CLKB,
    input RSTA, ENA, RSTB, ENB,
    output reg DB
);

    reg d_clka, d_clkb;

    always @(posedge CLKA) begin
        if (RSTA)
            d_clka <= 1'b0;
        else if (ENA)
            d_clka <= DA;
    end

    always @(posedge CLKB) begin
        if (RSTB) begin
            d_clkb <= 1'b0;
            DB     <= 1'b0;
        end 
        else if (ENB) begin
            d_clkb <= d_clka;
            DB     <= d_clkb;
        end
    end

endmodule
// syncer

//////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// This   document  contains  proprietary information  which   is
// protected by  copyright. All rights  are reserved.  This notice
// refers to original work by Efinix, Inc. which may be derivitive
// of other work distributed under license of the authors.  In the
// case of derivative work, nothing in this notice overrides the
// original author's license agreement.  Where applicable, the 
// original license agreement is included in it's original 
// unmodified form immediately below this header.
//
// WARRANTY DISCLAIMER.  
//     THE  DESIGN, CODE, OR INFORMATION ARE PROVIDED “AS IS” AND 
//     EFINIX MAKES NO WARRANTIES, EXPRESS OR IMPLIED WITH 
//     RESPECT THERETO, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES, 
//     INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF 
//     MERCHANTABILITY, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR 
//     PURPOSE.  SOME STATES DO NOT ALLOW EXCLUSIONS OF AN IMPLIED 
//     WARRANTY, SO THIS DISCLAIMER MAY NOT APPLY TO LICENSEE.
//
// LIMITATION OF LIABILITY.  
//     NOTWITHSTANDING ANYTHING TO THE CONTRARY, EXCEPT FOR BODILY 
//     INJURY, EFINIX SHALL NOT BE LIABLE WITH RESPECT TO ANY SUBJECT 
//     MATTER OF THIS AGREEMENT UNDER TORT, CONTRACT, STRICT LIABILITY 
//     OR ANY OTHER LEGAL OR EQUITABLE THEORY (I) FOR ANY INDIRECT, 
//     SPECIAL, INCIDENTAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES OF ANY 
//     CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF 
//     GOODWILL, DATA OR PROFIT, WORK STOPPAGE, OR COMPUTER FAILURE OR 
//     MALFUNCTION, OR IN ANY EVENT (II) FOR ANY AMOUNT IN EXCESS, IN 
//     THE AGGREGATE, OF THE FEE PAID BY LICENSEE TO EFINIX HEREUNDER 
//     (OR, IF THE FEE HAS BEEN WAIVED, $100), EVEN IF EFINIX SHALL HAVE 
//     BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES.  SOME STATES DO 
//     NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
//     CONSEQUENTIAL DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT 
//     APPLY TO LICENSEE.
//
/////////////////////////////////////////////////////////////////////////////

