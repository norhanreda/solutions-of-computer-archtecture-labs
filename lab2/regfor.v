include "register.v";
include "decoder.v";
module reg_for #(parameter data_width=16, address_width=3)
(clk,rst,read_enable,write_enable,read_address,write_address,write_data,read_data);



input read_enable, write_enable, clk, rst;
output wire[data_width - 1 : 0] read_data;
input [data_width - 1 : 0] write_data;
input [address_width - 1 : 0] read_address,write_address;

wire [2**address_width - 1 : 0] read_enables;
wire [2**address_width- 1 : 0] write_enables;


generate
decoder decr (read_address,read_enables);
decoder decw (write_address,write_enables);
endgenerate

genvar i;
generate
for (i=0; i<2**address_width;i=i+1)


register #(data_width) REG (clk,rst,read_enables[i]&read_enable,write_enables[i]&write_enable,write_data,read_data);
endgenerate

 

endmodule
