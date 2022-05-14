module top (
    input  clk,
    output [39:0] led,
    output [3:0] blink
);

reg [24:0] cnt = 24'd0;

assign led[0] = cnt[22];
assign led[1] = cnt[22];
assign led[2] = cnt[22];
assign led[3] = cnt[22];
assign led[4] = cnt[22];
assign led[5] = cnt[22];
assign led[6] = cnt[22];
assign led[7] = cnt[22];
assign led[8] = cnt[22];
assign led[9] = cnt[22];
assign led[10] = cnt[22];
assign led[11] = cnt[22];
assign led[12] = cnt[22];
assign led[13] = cnt[22];
assign led[14] = cnt[22];
assign led[15] = cnt[22];
assign led[16] = cnt[22];
assign led[17] = cnt[22];
assign led[18] = cnt[22];
assign led[19] = cnt[22];
assign led[20] = cnt[22];
assign led[21] = cnt[22];
assign led[22] = cnt[22];
assign led[23] = cnt[22];
assign led[24] = cnt[22];
assign led[25] = cnt[22];
assign led[26] = cnt[22];
assign led[27] = cnt[22];
assign led[28] = cnt[22];
assign led[29] = cnt[22];
assign led[30] = cnt[22];
assign led[31] = cnt[22];
assign led[32] = cnt[22];
assign led[33] = cnt[22];
assign led[34] = cnt[22];
assign led[35] = cnt[22];
assign led[36] = cnt[22];
assign led[37] = cnt[22];
assign led[38] = cnt[22];
assign led[39] = cnt[22];

assign blink[0] = cnt[23];
assign blink[1] = cnt[23];
assign blink[2] = cnt[23];
assign blink[3] = cnt[23];



always@(posedge clk)begin
    cnt <= cnt + 24'd1;
end

endmodule