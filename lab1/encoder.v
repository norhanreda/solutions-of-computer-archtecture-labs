module encoder(in,enable,out);
	input [7:0]in;
        input enable;
	output reg [2:0]out;
	
        always @(in,enable)
   if(enable==1)
      begin
       case(in)
         8'b00000001:out=0;
         8'b00000010:out=1;
         8'b00000100:out=2;
         8'b00001000:out=3;
         8'b00010000:out=4;
         8'b00100000:out=5;
         8'b01000000:out=6;
         8'b10000000:out=7;
         default:out=3'bzzz;
        endcase
       end
    else
    out=3'bzzz;
 
endmodule