module top(
    input clk,
    input reset,
    input [7:0] T,
	 input read,
	 output reg ready_out 
    );



reg [7:0] image [128:0][128:0];
reg [7:0] image_temp [16383:0];
reg image_out [127:0][127:0];

reg [4:0] i1 =0;
reg [4:0] j1 =0;

wire out1;
wire out2;
wire out3;
wire out4;
wire out5;
wire out6;
wire out7;
wire out8;
wire out9;
wire out10;
wire out11;
wire out12;
wire out13;
wire out14;
wire out15;
wire out16;

//reg ready = 0;

integer i = 0;
integer j = 0;

initial
begin
$readmemb("out.txt",image_temp);
end

initial
begin
	for(i = 0;i<129;i = i + 1)begin
		image[0][i] = 0;
		image[i][0] = 0;
	end
end

initial
begin
	for(i = 0;i<128;i = i + 1)begin
		for(j = 0;j<128;j = j + 1)begin
			image[i+1][j+1] = image_temp[i*128+j];
		end
	end
end


ed_32 ed1 (.clk(clk), .t(T),
.IM_i_1_j_1 (image[(i1+1)-1][(j1+1)-1]), .IM_i_1_j (image[(i1+1)-1][(j1+1)]),.IM_i_1_j__1 (image[(i1+1)-1][(j1+1)+1]),
.IM_i_j_1   (image[(i1+1)][(j1+1)-1])  , .IM_i_j   (image[(i1+1)][(j1+1)])  ,.IM_i_j__1   (image[(i1+1)][(j1+1)+1])  ,
.IM_i__1_j_1(image[(i1+1)+1][(j1+1)-1]), .IM_i__1_j(image[(i1+1)+1][(j1+1)]),.IM_i__1_j__1(image[(i1+1)+1][(j1+1)+1]),
.out(out1));

ed_32 ed2 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1)-1][(j1+1+32)-1]), .IM_i_1_j (image[(i1+1)-1][(j1+1+32)]),.IM_i_1_j__1 (image[(i1+1)-1][(j1+1+32)+1]),
.IM_i_j_1   (image[(i1+1)][(j1+1+32)-1])  , .IM_i_j   (image[(i1+1)][(j1+1+32)])  ,.IM_i_j__1   (image[(i1+1)][(j1+1+32)+1])  ,
.IM_i__1_j_1(image[(i1+1)+1][(j1+1+32)-1]), .IM_i__1_j(image[(i1+1)+1][(j1+1+32)]),.IM_i__1_j__1(image[(i1+1)+1][(j1+1+32)+1]),
.out(out2));

ed_32 ed3 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1)-1][(j1+1+64)-1]), .IM_i_1_j (image[(i1+1)-1][(j1+1+64)]),.IM_i_1_j__1 (image[(i1+1)-1][(j1+1+64)+1]),
.IM_i_j_1   (image[(i1+1)][(j1+1+64)-1])  , .IM_i_j   (image[(i1+1)][(j1+1+64)])  ,.IM_i_j__1   (image[(i1+1)][(j1+1+64)+1])  ,
.IM_i__1_j_1(image[(i1+1)+1][(j1+1+64)-1]), .IM_i__1_j(image[(i1+1)+1][(j1+1+64)]),.IM_i__1_j__1(image[(i1+1)+1][(j1+1+64)+1]),
.out(out3));

ed_32 ed4 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1)-1][(j1+1+96)-1]), .IM_i_1_j (image[(i1+1)-1][(j1+1+96)]),.IM_i_1_j__1 (image[(i1+1)-1][(j1+1+96)+1]),
.IM_i_j_1   (image[(i1+1)][(j1+1+96)-1])  , .IM_i_j   (image[(i1+1)][(j1+1+96)])  ,.IM_i_j__1   (image[(i1+1)][(j1+1+96)+1])  ,
.IM_i__1_j_1(image[(i1+1)+1][(j1+1+96)-1]), .IM_i__1_j(image[(i1+1)+1][(j1+1+96)]),.IM_i__1_j__1(image[(i1+1)+1][(j1+1+96)+1]),
.out(out4));

ed_32 ed5 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+32)-1][(j1+1)-1]), .IM_i_1_j (image[(i1+1+32)-1][(j1+1)]),.IM_i_1_j__1 (image[(i1+1+32)-1][(j1+1)+1]),
.IM_i_j_1   (image[(i1+1+32)][(j1+1)-1])  , .IM_i_j   (image[(i1+1+32)][(j1+1)])  ,.IM_i_j__1   (image[(i1+1+32)][(j1+1)+1])  ,
.IM_i__1_j_1(image[(i1+1+32)+1][(j1+1)-1]), .IM_i__1_j(image[(i1+1+32)+1][(j1+1)]),.IM_i__1_j__1(image[(i1+1+32)+1][(j1+1)+1]),
.out(out5));

ed_32 ed6 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+32)-1][(j1+1+32)-1]), .IM_i_1_j (image[(i1+1+32)-1][(j1+1+32)]),.IM_i_1_j__1 (image[(i1+1+32)-1][(j1+1+32)+1]),
.IM_i_j_1   (image[(i1+1+32)][(j1+1+32)-1])  , .IM_i_j   (image[(i1+1+32)][(j1+1+32)])  ,.IM_i_j__1   (image[(i1+1+32)][(j1+1+32)+1])  ,
.IM_i__1_j_1(image[(i1+1+32)+1][(j1+1+32)-1]), .IM_i__1_j(image[(i1+1+32)+1][(j1+1+32)]),.IM_i__1_j__1(image[(i1+1+32)+1][(j1+1+32)+1]),
.out(out6));

ed_32 ed7 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+32)-1][(j1+1+64)-1]), .IM_i_1_j (image[(i1+1+32)-1][(j1+1+64)]),.IM_i_1_j__1 (image[(i1+1+32)-1][(j1+1+64)+1]),
.IM_i_j_1   (image[(i1+1+32)][(j1+1+64)-1])  , .IM_i_j   (image[(i1+1+32)][(j1+1+64)])  ,.IM_i_j__1   (image[(i1+1+32)][(j1+1+64)+1])  ,
.IM_i__1_j_1(image[(i1+1+32)+1][(j1+1+64)-1]), .IM_i__1_j(image[(i1+1+32)+1][(j1+1+64)]),.IM_i__1_j__1(image[(i1+1+32)+1][(j1+1+64)+1]),
.out(out7));

ed_32 ed8 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+32)-1][(j1+1+96)-1]), .IM_i_1_j (image[(i1+1+32)-1][(j1+1+96)]),.IM_i_1_j__1 (image[(i1+1+32)-1][(j1+1+96)+1]),
.IM_i_j_1   (image[(i1+1+32)][(j1+1+96)-1])  , .IM_i_j   (image[(i1+1+32)][(j1+1+96)])  ,.IM_i_j__1   (image[(i1+1+32)][(j1+1+96)+1])  ,
.IM_i__1_j_1(image[(i1+1+32)+1][(j1+1+96)-1]), .IM_i__1_j(image[(i1+1+32)+1][(j1+1+96)]),.IM_i__1_j__1(image[(i1+1+32)+1][(j1+1+96)+1]),
.out(out8));

ed_32 ed9 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+64)-1][(j1+1)-1]), .IM_i_1_j (image[(i1+1+64)-1][(j1+1)]),.IM_i_1_j__1 (image[(i1+1+64)-1][(j1+1)+1]),
.IM_i_j_1   (image[(i1+1+64)][(j1+1)-1])  , .IM_i_j   (image[(i1+1+64)][(j1+1)])  ,.IM_i_j__1   (image[(i1+1+64)][(j1+1)+1])  ,
.IM_i__1_j_1(image[(i1+1+64)+1][(j1+1)-1]), .IM_i__1_j(image[(i1+1+64)+1][(j1+1)]),.IM_i__1_j__1(image[(i1+1+64)+1][(j1+1)+1]),
.out(out9));

ed_32 ed10 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+64)-1][(j1+1+32)-1]), .IM_i_1_j (image[(i1+1+64)-1][(j1+1+32)]),.IM_i_1_j__1 (image[(i1+1+64)-1][(j1+1+32)+1]),
.IM_i_j_1   (image[(i1+1+64)][(j1+1+32)-1])  , .IM_i_j   (image[(i1+1+64)][(j1+1+32)])  ,.IM_i_j__1   (image[(i1+1+64)][(j1+1+32)+1])  ,
.IM_i__1_j_1(image[(i1+1+64)+1][(j1+1+32)-1]), .IM_i__1_j(image[(i1+1+64)+1][(j1+1+32)]),.IM_i__1_j__1(image[(i1+1+64)+1][(j1+1+32)+1]),
.out(out10));

ed_32 ed11 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+64)-1][(j1+1+64)-1]), .IM_i_1_j (image[(i1+1+64)-1][(j1+1+64)]),.IM_i_1_j__1 (image[(i1+1+64)-1][(j1+1+64)+1]),
.IM_i_j_1   (image[(i1+1+64)][(j1+1+64)-1])  , .IM_i_j   (image[(i1+1+64)][(j1+1+64)])  ,.IM_i_j__1   (image[(i1+1+64)][(j1+1+64)+1])  ,
.IM_i__1_j_1(image[(i1+1+64)+1][(j1+1+64)-1]), .IM_i__1_j(image[(i1+1+64)+1][(j1+1+64)]),.IM_i__1_j__1(image[(i1+1+64)+1][(j1+1+64)+1]),
.out(out11));

ed_32 ed12 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+64)-1][(j1+1+96)-1]), .IM_i_1_j (image[(i1+1+64)-1][(j1+1+96)]),.IM_i_1_j__1 (image[(i1+1+64)-1][(j1+1+96)+1]),
.IM_i_j_1   (image[(i1+1+64)][(j1+1+96)-1])  , .IM_i_j   (image[(i1+1+64)][(j1+1+96)])  ,.IM_i_j__1   (image[(i1+1+64)][(j1+1+96)+1])  ,
.IM_i__1_j_1(image[(i1+1+64)+1][(j1+1+96)-1]), .IM_i__1_j(image[(i1+1+64)+1][(j1+1+96)]),.IM_i__1_j__1(image[(i1+1+64)+1][(j1+1+96)+1]),
.out(out12));

ed_32 ed13 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+96)-1][(j1+1)-1]), .IM_i_1_j (image[(i1+1+96)-1][(j1+1)]),.IM_i_1_j__1 (image[(i1+1+96)-1][(j1+1)+1]),
.IM_i_j_1   (image[(i1+1+96)][(j1+1)-1])  , .IM_i_j   (image[(i1+1+96)][(j1+1)])  ,.IM_i_j__1   (image[(i1+1+96)][(j1+1)+1])  ,
.IM_i__1_j_1(image[(i1+1+96)+1][(j1+1)-1]), .IM_i__1_j(image[(i1+1+96)+1][(j1+1)]),.IM_i__1_j__1(image[(i1+1+96)+1][(j1+1)+1]),
.out(out13));

ed_32 ed14 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+96)-1][(j1+1+32)-1]), .IM_i_1_j (image[(i1+1+96)-1][(j1+1+32)]),.IM_i_1_j__1 (image[(i1+1+96)-1][(j1+1+32)+1]),
.IM_i_j_1   (image[(i1+1+96)][(j1+1+32)-1])  , .IM_i_j   (image[(i1+1+96)][(j1+1+32)])  ,.IM_i_j__1   (image[(i1+1+96)][(j1+1+32)+1])  ,
.IM_i__1_j_1(image[(i1+1+96)+1][(j1+1+32)-1]), .IM_i__1_j(image[(i1+1+96)+1][(j1+1+32)]),.IM_i__1_j__1(image[(i1+1+96)+1][(j1+1+32)+1]),
.out(out14));

ed_32 ed15 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+96)-1][(j1+1+64)-1]), .IM_i_1_j (image[(i1+1+96)-1][(j1+1+64)]),.IM_i_1_j__1 (image[(i1+1+96)-1][(j1+1+64)+1]),
.IM_i_j_1   (image[(i1+1+96)][(j1+1+64)-1])  , .IM_i_j   (image[(i1+1+96)][(j1+1+64)])  ,.IM_i_j__1   (image[(i1+1+96)][(j1+1+64)+1])  ,
.IM_i__1_j_1(image[(i1+1+96)+1][(j1+1+64)-1]), .IM_i__1_j(image[(i1+1+96)+1][(j1+1+64)]),.IM_i__1_j__1(image[(i1+1+96)+1][(j1+1+64)+1]),
.out(out15));

ed_32 ed16 (.clk(clk), .t(T), 
.IM_i_1_j_1 (image[(i1+1+96)-1][(j1+1+96)-1]), .IM_i_1_j (image[(i1+1+96)-1][(j1+1+96)]),.IM_i_1_j__1 (image[(i1+1+96)-1][(j1+1+96)+1]),
.IM_i_j_1   (image[(i1+1+96)][(j1+1+96)-1])  , .IM_i_j   (image[(i1+1+96)][(j1+1+96)])  ,.IM_i_j__1   (image[(i1+1+96)][(j1+1+96)+1])  ,
.IM_i__1_j_1(image[(i1+1+96)+1][(j1+1+96)-1]), .IM_i__1_j(image[(i1+1+96)+1][(j1+1+96)]),.IM_i__1_j__1(image[(i1+1+96)+1][(j1+1+96)+1]),
.out(out16));

always@(posedge clk)
begin
	if(reset)
	begin
		i1=0;
		j1=0;
		ready_out = 0;
	end
	else
	begin		
		image_out[i1][j1]       = out1;
		image_out[i1][j1+32]    = out2;
		image_out[i1][j1+64]    = out3;
		image_out[i1][j1+96]    = out4;
		image_out[i1+32][j1]    = out5;
		image_out[i1+32][j1+32] = out6;
		image_out[i1+32][j1+64] = out7;
		image_out[i1+32][j1+96] = out8;
		image_out[i1+64][j1]    = out9;
		image_out[i1+64][j1+32] = out10;
		image_out[i1+64][j1+64] = out11;
		image_out[i1+64][j1+96] = out12;
		image_out[i1+96][j1]    = out13;
		image_out[i1+96][j1+32] = out14;
		image_out[i1+96][j1+64] = out15;
		image_out[i1+96][j1+96] = out16;
		if(j1 == 31 & i1 == 31)
		begin
			ready_out = 1;
		end	
		else if(j1 == 31)
		begin
			i1 = i1 + 1;
			j1 = 0;
		end
		else
		begin
			j1 = j1 + 1;
		end
	end
end
//assign data_out = {image_out[i2][j2],image_out[i2][j2+1],image_out[i2][j2+2],image_out[i2][j2+3]
//					   ,image_out[i2][j2+4],image_out[i2][j2+5],image_out[i2][j2+6],image_out[i2][j2+7]};

endmodule
