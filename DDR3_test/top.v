module top (

input check_rstn,  //switch 0 (SW6)
input ddr_rstn,   // switch 1 (SW7)

output [7:0] aid_0,
output [31:0] aaddr_0,
output [7:0] alen_0,
output [2:0] asize_0,
output [1:0] aburst_0,
output [1:0] alock_0,
output avalid_0,
input aready_0,
output atype_0,

output [7:0] aid_1,
output [31:0] aaddr_1,
output [7:0] alen_1,
output [2:0] asize_1,
output [1:0] aburst_1,
output [1:0] alock_1,
output avalid_1,
input aready_1,
output atype_1,

output [7:0] wid_0,
output [255:0] wdata_0,
output [31:0] wstrb_0,
output wlast_0,
output wvalid_0,
input wready_0,

output [7:0] wid_1,
output [127:0] wdata_1,
output [15:0] wstrb_1,
output wlast_1,
output wvalid_1,
input wready_1,

input [7:0] rid_0,
input [255:0] rdata_0,
input rlast_0,
input rvalid_0,
output rready_0,
input [1:0] rresp_0,

input [7:0] rid_1,
input [127:0] rdata_1,
input rlast_1,
input rvalid_1,
output rready_1,
input [1:0] rresp_1,

input [7:0] bid_0,
input bvalid_0,
output bready_0,

input [7:0] bid_1,
input bvalid_1,
output bready_1,

input axi_clk,
input pll_rstni,
input br0_pll_locked,
input br1_pll_locked,
output br0_pll_rstn,
output br1_pll_rstn,
output pass,
output pll_locked,
output o_br0_pll_locked,
output o_br1_pll_locked,
output done,

// DDR reset seq
output ddr_inst1_RSTN,
output ddr_inst1_CFG_SEQ_RST,
output ddr_inst1_CFG_SEQ_START,

// VIO interface
input           bscan_DRCK,
input           bscan_RESET,    
input           bscan_TMS,   
input           bscan_RUNTEST,    
input           bscan_SEL,    
input           bscan_SHIFT,    
input           bscan_TDI,    
input           bscan_CAPTURE,    
input           bscan_TCK,    
input           bscan_UPDATE,    
output           bscan_TDO

);

wire	[0:0]w_check_rstn;
wire	[0:0]w_pll_rstni;
wire	[3:0]w_axi0_states;
wire	[3:0]w_axi1_states;

wire ddr_rstn,ddr_rstn_seq, ddr_cfg_seq_rst, ddr_cfg_seq_start;

assign ddr_inst1_RSTN = ddr_rstn_seq;
assign ddr_inst1_CFG_SEQ_RST = ddr_cfg_seq_rst;
assign ddr_inst1_CFG_SEQ_START = ddr_cfg_seq_start;

assign br0_pll_rstn = w_pll_rstni[0];
//assign br1_pll_rstn = pll_rstni;
assign br1_pll_rstn = 1'b1;


assign pll_locked = br0_pll_locked & br1_pll_locked;
assign o_br0_pll_locked = br0_pll_locked;
assign o_br1_pll_locked = br1_pll_locked;


wire fail_0, done_0, fail_1, done_1;
assign pass = !(fail_0 | fail_1);
assign done = done_0 & done_1;
wire [255:0] obs_rdata_det0, obs_rdata_det1, obs_rdata_exp0, obs_rdata_exp1;
//DDR3 2G x16: ROW address = 14 bits, COL address = 10 bits, bank address = 3 bits
//Address space : 32'h0000_0000 => 32'h07FF_FFFF 
memory_checker #(.START_ADDR(32'h00000000), .STOP_ADDR(32'h07FFFE00), .ALEN(7)) itest_axi0 ( .axi_clk(axi_clk),
//                            .rstn(check_rstn),
                            .rstn(w_check_rstn[0]&check_rstn),
                            .start(pll_locked),
                            .aid(aid_0),
                            .aaddr(aaddr_0),
                            .alen(alen_0),
                            .asize(asize_0),
                            .aburst(aburst_0),
                            .alock(alock_0),
                            .avalid(avalid_0),
                            .aready(aready_0),
                            .atype(atype_0),
                            .wid(wid_0),
                            .wdata(wdata_0),
                            .wstrb(wstrb_0),
                            .wlast(wlast_0),
                            .wvalid(wvalid_0),
                            .wready(wready_0),
                            .rid(rid_0),
                            .rdata(rdata_0),
                            .rlast(rlast_0),
                            .rvalid(rvalid_0),
                            .rready(rready_0),
                            .rresp(rresp_0),
                            .bid(bid_0),
                            .bvalid(bvalid_0),
                            .bready(bready_0),
                            .fail(fail_0),
                            .done(done_0),
							.obs_rdata_exp(obs_rdata_exp0),
							.obs_rdata_det(obs_rdata_det0),
							.o_states(w_axi0_states)
							);
wire [15:0] nc_wstrb_1;
wire [127:0] nc_wdata_1;
memory_checker #(.START_ADDR(32'h0F000000), .STOP_ADDR(32'h0FFFFE00), .ASIZE(4), .ALEN(7)) itest_axi1 ( .axi_clk(axi_clk),
//                            .rstn(check_rstn),
                            .rstn(w_check_rstn[0]&check_rstn),
                            .start(pll_locked),
                            .aid(aid_1),
                            .aaddr(aaddr_1),
                            .alen(alen_1),
                            .asize(asize_1),
                            .aburst(aburst_1),
                            .alock(alock_1),
                            .avalid(avalid_1),
                            .aready(aready_1),
                            .atype(atype_1),
                            .wid(wid_1),
                            .wdata({nc_wdata_1,wdata_1}),
                            .wstrb({nc_wstrb_1,wstrb_1}),
                            .wlast(wlast_1),
                            .wvalid(wvalid_1),
                            .wready(wready_1),
                            .rid(rid_1),
                            .rdata({~rdata_1,rdata_1}),
                            .rlast(rlast_1),
                            .rvalid(rvalid_1),
                            .rready(rready_1),
                            .rresp(rresp_1),
                            .bid(bid_1),
                            .bvalid(bvalid_1),
                            .bready(bready_1),
                            .fail(fail_1),
                            .done(done_1),
							.obs_rdata_exp(obs_rdata_exp1),
							.obs_rdata_det(obs_rdata_det1),
							.o_states(w_axi1_states)
					);

					
edb_top edb_top_inst (
    .bscan_CAPTURE      ( bscan_CAPTURE ),
    .bscan_DRCK         ( bscan_DRCK ),
    .bscan_RESET        ( bscan_RESET ),
    .bscan_RUNTEST      ( bscan_RUNTEST ),
    .bscan_SEL          ( bscan_SEL ),
    .bscan_SHIFT        ( bscan_SHIFT ),
    .bscan_TCK          ( bscan_TCK ),
    .bscan_TDI          ( bscan_TDI ),
    .bscan_TMS          ( bscan_TMS ),
    .bscan_UPDATE       ( bscan_UPDATE ),
    .bscan_TDO          ( bscan_TDO ),
    .vio0_clk           ( axi_clk ),
    .vio0_rdata_exp0    ( obs_rdata_exp0 ),
    .vio0_rdata_det0    ( obs_rdata_det0 ),
    .vio0_rdata_exp1    ( obs_rdata_exp1 ),
    .vio0_rdata_det1    ( obs_rdata_det1 ),
	.vio0_check_rstn    ( w_check_rstn ),
	.vio0_pll_rstni     ( w_pll_rstni ),
	.vio0_axi0_states   ( w_axi0_states ),
	.vio0_axi1_states   ( w_axi1_states )

);

ddr_reset_sequencer ddr_reset_sequencer_inst (
	.ddr_rstn_i		(ddr_rstn),
	.clk		(axi_clk),
	.ddr_rstn		(ddr_rstn_seq),
	.ddr_cfg_seq_rst	(ddr_cfg_seq_rst),
	.ddr_cfg_seq_start	(ddr_cfg_seq_start)
);

endmodule
