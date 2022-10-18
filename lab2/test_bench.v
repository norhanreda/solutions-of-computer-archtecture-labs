module test_bench ;

//inputs are reg

 localparam data_width=16;
localparam  address_width=3;

//contrlos
reg clk;
reg rst;
reg read_enable;
reg write_enable;

reg [(data_width-1):0] write_data;
reg [(address_width-1):0] write_address;
reg [(address_width-1):0] read_address;

//output wire

wire [(data_width-1):0] read_data_arr;//arr
wire [(data_width-1):0] read_data_for;//for
//instantiation 
reg_array #(data_width,address_width) regArr(
.clk(clk),.rst(rst),.write_enable(write_enable),.read_enable(read_enable),
.write_data(write_data),.write_address(write_address),.read_address(read_address),
.read_data(read_data_arr)


);

reg_for #(data_width, address_width) regFor (clk,rst,read_enable,write_enable,read_address,write_address,write_data,read_data_for);



always begin
#10 clk=~clk;
end
initial begin
$display ("hint: you should only read at negative edge clk if you try to read at positive edge clk you will get a garbage ");
$display("time rst read_enable write_enable read_address write_address read_data write_data");
$monitor ("%g \t%b \t%b \t%b \t%b \t%b \t%b \t%b \t%b", $time, rst, read_enable, write_enable, read_address, write_address, read_data_arr,read_data_for, write_data);

clk=0;
rst=0;
read_enable=0;
write_enable=0;


#10 
read_enable=0;
write_enable=1;
write_data=16'b1111111111111111;
write_address=3'b001;

#10 
read_enable=1;
write_enable=0;
read_address=3'b001;
#10 
rst=1;
read_enable=0;
write_enable=0;
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same  array %b , for %b ",read_data_arr,read_data_for);

#10 
rst=0;
read_enable=1;
write_enable=0;
read_address=3'b001;

#20 
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same  array %b , for %b ",read_data_arr,read_data_for);
read_enable=1;
write_enable=0;
read_address=3'b010;



#10 
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);


read_enable=0;
write_enable=1;
write_data=16'b0000000000000011;
write_address=3'b011;

#10 
read_enable=1;
write_enable=0;
read_address=3'b011;

#20 
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);

read_enable=1;
write_enable=0;
read_address=3'b110;


#10 
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);


read_enable=1;
write_enable=0;
read_address=3'b011;

#10 
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);
read_enable=0;
write_enable=1;
write_data=16'b1111100000011111;
write_address=3'b101;




#10
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);
 
read_enable=1;
write_enable=0;
read_address=3'b101;
#10
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);

#10
if(read_data_arr == read_data_for)
$display ("wow! Success array %b ,for %b ",read_data_arr,read_data_for);
else
$display("ohhhhhhh they are not same array %b , for %b ",read_data_arr,read_data_for);



end


endmodule
