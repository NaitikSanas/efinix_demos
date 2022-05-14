/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// video_gen.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// *******************************
/////////////////////////////////////////////////////////////////////////////


module video_gen (
 input        rst,
 input        clk,
 input [1:0]  video_pattern,
 output [4:0] red_o,
 output [5:0] green_o,
 output [4:0] blue_o,
 output       video_hsync_o,
 output       video_hsync_o_2,
 output       video_vsync_o,
 output       video_valid_h_o,
 output       video_valid_h_o_2,
 output       video_valid_v_o
);

parameter syncPulse_h= 128;            
parameter backPorch_h= 88;             
parameter activeVideo_h= 800;            
parameter frontPorch_h= 40;            
parameter syncPulse_v= 4;              
parameter backPorch_v = 23;             
parameter activeVideo_v = 600;            
parameter frontPorch_v = 1;

localparam total_h = syncPulse_h + backPorch_h + activeVideo_h + frontPorch_h;
localparam total_v = syncPulse_v + backPorch_v + activeVideo_v + frontPorch_v;
localparam activeStart_h = syncPulse_h + backPorch_h;
localparam activeEnd_h= activeVideo_h + activeStart_h;
localparam activeStart_v= syncPulse_v + backPorch_v;
localparam activeEnd_v= activeVideo_v + activeStart_v;

localparam bar2 = activeStart_h+activeVideo_h*1/8;
localparam bar3 = activeStart_h+activeVideo_h*2/8;
localparam bar4 = activeStart_h+activeVideo_h*3/8;
localparam bar5 = activeStart_h+activeVideo_h*4/8;
localparam bar6 = activeStart_h+activeVideo_h*5/8;
localparam bar7 = activeStart_h+activeVideo_h*6/8;
localparam bar8 = activeStart_h+activeVideo_h*7/8;

wire video_vsync, video_valid_v;
wire video_hsync, video_valid_h;
reg video_vsync_o, video_valid_v_o;
reg video_hsync_o, video_valid_h_o;
reg video_hsync_o_2, video_valid_h_o_2;
reg [10:0] h_count;
reg [9:0] v_count;
wire [15:0] bar_data;
wire [15:0] checker_color;
wire [15:0] checker_data;
   

always @ (posedge clk) begin
if (rst) begin 
	h_count <= 1'b1;
	v_count <= 1'b1;
	end
else if (h_count == total_h)
	if (v_count == total_v) begin
	h_count <= 1'b1;
	v_count <= 1'b1;
	end
	else begin
	h_count <= 1'b1;
	v_count <= v_count + 1'b1;
	end
else begin
	h_count <= h_count + 1'b1;
	end
end

assign video_hsync = (h_count>=syncPulse_h) && (h_count < total_h);
assign video_valid_h = (h_count >= activeStart_h) && (h_count < activeEnd_h) && video_valid_v_o;

    always @ (posedge clk)
	begin
	   if(rst) begin
	      video_vsync_o <= 1'b0;
	      video_valid_v_o <= 1'b0; end
	   else if(h_count == total_h) begin
              if(v_count == total_v)
                video_vsync_o <= 1'b0;
              else begin
                 if(v_count == syncPulse_v)
		   video_vsync_o <= 1'b1;
	         else if(v_count == activeStart_v)
		   video_valid_v_o <= 1'b1;
	         else if(v_count == activeEnd_v)
		   video_valid_v_o <= 1'b0;
	      end
           end // if (h_count == total_h)
        end // always @ (posedge clk)
   
/////sync the video format to clk ///////
always @(posedge clk) begin
   if(rst) begin
      video_hsync_o <= 1'b0;
      video_valid_h_o <= 1'b0;
      video_hsync_o_2 <= 1'b0;
      video_valid_h_o_2 <= 1'b0;
      red_o <= 5'b0;
      green_o <= 6'b0;
      blue_o <= 5'b0;
   end
   else begin
      video_hsync_o <= video_hsync;
      video_valid_h_o <= video_valid_h;
      video_hsync_o_2 <= video_hsync_o;
      video_valid_h_o_2 <= video_valid_h_o;
      red_o <= red;
      green_o <= green;
      blue_o <= blue;
end	
end // always @ (posedge clk)
   
  assign bar_data = ((h_count>=activeStart_h)&(h_count<bar2))?{5'b11111,6'b111111,5'b11111}:
					((h_count>=bar2)&(h_count<bar3))?{5'b11111,6'b111111,5'b00000}:
					((h_count>=bar3)&(h_count<bar4))?{5'b00000,6'b111111,5'b11111}:
					((h_count>=bar4)&(h_count<bar5))?{5'b00000,6'b111111,5'b00000}:
					((h_count>=bar5)&(h_count<bar6))?{5'b11111,6'b000000,5'b11111}:
					((h_count>=bar6)&(h_count<bar7))?{5'b11111,6'b000000,5'b00000}:
					((h_count>=bar7)&(h_count<bar8))?{5'b00000,6'b000000,5'b11111}:
					{5'b00000,6'b000000,5'b00000};  

   assign checker_color = (h_count[6]&v_count[6]) ? 16'hf800 : (!h_count[6]&!v_count[6]) ? 16'h001f : 16'h07e0;
   assign checker_data = (h_count[5]^v_count[5]) ? checker_color : 16'h0000;
   
//----------------------------------------------------------------
////////// DISPLAY
//----------------------------------------------------------------
   wire [4:0] red;
   wire [5:0] green;
   wire [4:0] blue;
   reg [4:0]  red_o;
   reg [5:0]  green_o;
   reg [4:0]  blue_o;

assign red = (video_pattern==3) ? v_count[6:2] : (video_pattern==2) ? h_count[6:2] : (video_pattern==1) ? bar_data[15:11] : checker_data[15:11];
assign green = (video_pattern==3) ? v_count[6:1] : (video_pattern==2) ? h_count[6:1] : (video_pattern==1) ? bar_data[10:5] : checker_data[10:5];
assign blue = (video_pattern==3) ? v_count[6:2] :(video_pattern==2) ? h_count[6:2] : (video_pattern==1) ? bar_data[4:0] : checker_data[4:0];


endmodule

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
