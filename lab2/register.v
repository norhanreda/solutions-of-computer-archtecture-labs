module register #(parameter data_width=16)

(clk,rst,read_enable,write_enable,d,q);

input  clk, rst,read_enable, write_enable;
input [data_width - 1 : 0] d;
output reg [data_width - 1 : 0] q;


reg [data_width - 1 : 0] temp;

always @(posedge clk,posedge rst) begin
  if(rst)
   temp=0;
 else if (write_enable)
   temp= d;

end

always @(negedge clk,posedge rst ) begin
if(rst)
   temp=16'bzzzzzzzzzzzzzzzz;
else if (read_enable)
   q= temp;
else
    q=16'bzzzzzzzzzzzzzzzz;

end


endmodule

