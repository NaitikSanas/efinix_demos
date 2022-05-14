module top (    
    input  clk,
    output reg [3:0] led
);

reg [24:0] cnt = 24'd0;
wire clk_int = cnt[22];
reg [2:0] led_cnt;

always@(posedge clk)begin
    cnt <= cnt + 24'd1;
end

 
always @(posedge clk_int) 
begin
    if(led_cnt != 3'b100)led_cnt <= led_cnt + 3'd1;
    else led_cnt <= 3'd0;
end 

always @(led_cnt)begin
    case (led_cnt)
    3'b000 : led = 4'b0000;
    3'b001 : led = 4'b1000;  
    3'b010 : led = 4'b1100;  
    3'b011 : led = 4'b1110; 
    3'b100 : led = 4'b1111;     
    endcase
end 

endmodule