module reg_array #(parameter data_width=16,address_width=3)

(input wire clk ,rst,write_enable,read_enable,input wire [(data_width-1):0] write_data ,input wire [(address_width-1):0] write_address,read_address,output reg  [(data_width-1):0] read_data ) ;

reg [(data_width-1):0] array_reg [2**address_width-1:0];
integer i;
always @(posedge clk or posedge rst)
 begin
if(rst)
for(i=0;i<2**address_width;i=i+1)
  array_reg[i]=0;
else if(write_enable)
    array_reg[write_address] =write_data ;

 end

always @(negedge clk or posedge rst)
 begin
if(rst)
 array_reg[read_address]=16'bzzzzzzzzzzzzzzzz;
 else if(read_enable)
 read_data =array_reg[read_address];
else
  read_data=16'bzzzzzzzzzzzzzzzz;

 end

endmodule