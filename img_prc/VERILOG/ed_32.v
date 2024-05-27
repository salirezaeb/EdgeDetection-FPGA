module ed_32(
    input clk,
	 input [7:0] t,
    input [7:0] IM_i_1_j_1,
    input [7:0] IM_i_1_j,
    input [7:0] IM_i_1_j__1,
    input [7:0] IM_i_j_1,
    input [7:0] IM_i_j,
    input [7:0] IM_i_j__1,
    input [7:0] IM_i__1_j_1,
    input [7:0] IM_i__1_j,
    input [7:0] IM_i__1_j__1,
    output reg out = 0
    );
wire [7:0] x;
wire [7:0] y;

wire [7:0] IM_i_1_j_M2 = {IM_i_1_j[6:0],1'b0};
wire [7:0] IM_i_j_1_M2 = {IM_i_j_1[6:0],1'b0};
wire [7:0] IM_i_j__1_M2 = {IM_i_j__1[6:0],1'b0};
wire [7:0] IM_i__1_j_M2 = {IM_i__1_j[6:0],1'b0};

wire[7:0] nxny = (~x+1) + (~y+1);
wire[7:0] xny = x + (~y+1);
wire[7:0] nxy = (~x+1) + y;
wire[7:0] xy = x + y;

assign x = IM_i_1_j_1 - IM_i_1_j__1 + IM_i_j_1_M2 - IM_i_j__1_M2 + IM_i__1_j_1 - IM_i__1_j__1;
assign y = IM_i__1_j_1 + IM_i__1_j_M2 + IM_i__1_j__1 - IM_i_1_j_1 - IM_i_1_j_M2 - IM_i_1_j__1;
		

always@(posedge clk)
begin
	if(x[7] && y[7])
	begin
		if(nxny > t)begin
			out = 1;
		end
		else
		begin
			out = 0;
		end
	end
	else if(!x[7] && y[7])
	begin
		if(xny > t)begin
			out = 1;
		end
		else
		begin
			out = 0;
		end
	
	end
	else if(x[7] && !y[7])
	begin
		if(nxy > t)begin
			out = 1;
		end
		else
		begin
			out = 0;
		end
	end
	else
	begin
		if(xy > t)begin
			out = 1;
		end
		else
		begin
			out = 0;
		end
	end
end




endmodule
