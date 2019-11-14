module asynchreset(
  input clk, reset, // input ports
  output reg [4:0] counter
);
  
  always @(posedge clk or posedge reset) 
	begin
          
 	 if (reset) counter <= 0;
 	 else
   		counter <= counter + 1;
end
// or always @(posedge clk)
//begin
//if (reset) counter <= 0;
//else
//counter <= counter + 1;
//end
endmodule

module asynchreset_test_top(
  input clk,
  output reg[2:0] counter
);
  

  reg rst = 0;
  
  always @(posedge clk)
    begin
      asynchreset uut(clk, rst, counter) ;
      rst <= ~rst;
    end
endmodule 