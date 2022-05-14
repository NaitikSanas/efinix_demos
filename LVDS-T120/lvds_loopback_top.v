/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// lvds_loopback_top.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// 1.1 Design updated to 2021.1
//
// *******************************
/////////////////////////////////////////////////////////////////////////////
//PORTING VERSION
//
module lvds_loopback_top (
input tx_slowclk,
input rstn,
input rx_slowclk,
//input txpll_rstni,
input txpll_locked,
input rxpll_locked,
input [7:0] rx_data0,
output [7:0] prbs_data,

output [3:0] led,
//input [2:0] user_switch,
output fa_lock,
output rxpll_rstn,
output txpll_rstn
);

reg pass;


wire [7:0] fa_out0; 
wire stat_all;
reg start_fa;

reg rstn_filt, rstn_sync;
always @(posedge rx_slowclk or negedge rstn) begin
    if (!rstn) begin
        rstn_filt <= 1'b0;
        rstn_sync <= 1'b0;
    end else begin
        rstn_filt <= 1'b1;
        rstn_sync <= rstn_filt;
    end
end


/////// PRBS GENERATOR //////
prbs_gen gen(.clk(tx_slowclk), .rstn(rstn), .out(prbs_data));

/////// Frame aligner ///////
frame_aligner fa0(.clk(rx_slowclk), .rstn(rstn_sync), .start(start_fa), .data_in(rx_data0), .pattern(8'hE6), .lock(fa_lock), .data_out(fa_out0));

//////  PRBS checker ///////
prbs_det det0(.clk(rx_slowclk), .rstn(rstn_sync), .data(fa_out0), .testen(1'b1), .stat(stat0));


assign rxpll_rstn = rstn;
assign txpll_rstn = rstn;
assign rxpll_lockedo = rxpll_locked;
assign stat_all = stat0;

//////////////// USER_LEDS //////////////////
assign led [0] = pass;
//assign led [0] = txpll_locked;
assign led [1] =  rxpll_locked;
assign led [2] = rx_heartbeat;
assign led [3] = tx_heartbeat; 
//assign led [5] = 1'b1;		 
//assign led [6] = 1'b1; 
//assign led [7] = 1'b1; 


/////////////// Pass test ////////////////////
reg [9:0] pass_cnt;
reg [9:0] start_cnt;


always @(posedge rx_slowclk or negedge rstn) begin
        if (!rstn) begin
        pass <= 1'b0;
        pass_cnt <= 10'b0;
        end else begin
			if (stat_all) begin
			pass_cnt <= pass_cnt + 10'b1;
				if (pass_cnt == 10'h3FF) begin
                    pass_cnt <= 10'h000;
                    pass <= 1'b1; 
				end
			end
			else begin
			pass_cnt <= 10'b0;
			pass <= 1'b0; end
        end
end

reg error;
always @(negedge pass or negedge rstn) begin
		if (!rstn) error <= 1'b0;
		else error <=  1'b1;		
end



////////////////heart beat//////////////////
// tx_slowclk = 62.5MHz ///
// rx_slowclk = 62.5MHz ///
reg [25:0] tx_clk_cnt;
reg tx_heartbeat;
always @(posedge tx_slowclk or negedge rstn) begin
	if (!rstn) begin
		tx_heartbeat <= 1'b1;
		tx_clk_cnt <= 26'b0;
		end 
	else begin
		tx_heartbeat <= tx_clk_cnt[25];
		tx_clk_cnt <= tx_clk_cnt + 1'b1;
		end
end

reg [25:0] rx_clk_cnt;
reg rx_heartbeat;
always @(posedge rx_slowclk or negedge rstn) begin
	if (!rstn) begin
		rx_heartbeat <= 1'b1;
		rx_clk_cnt <= 26'b0;
		end 
	else begin
		rx_heartbeat <= rx_clk_cnt[25];
		rx_clk_cnt <= rx_clk_cnt + 1'b1;
		end
end
		

always @(posedge rx_slowclk or negedge rstn) begin
		if (!rstn) begin
		start_cnt <= 10'b0;
		start_fa <= 1'b0;
		end else begin
			if(rxpll_locked == 1'b1) begin
				start_cnt <= start_cnt + 10'b1;
			end else begin
				start_cnt <= 10'b0;
			end
			if (start_cnt == 10'h3FF) begin
				start_cnt <= 10'h000;
				start_fa <= 1'b1;
			end
		end
end

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
