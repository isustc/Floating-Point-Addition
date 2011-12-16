module Mux_2 (
    input clk, reset, x, y, en,
    output reg out);
    
    always @(posedge clk) begin
      begin
      if(en)
        out = y;
      else
        out = x;
      end
      begin
      if(reset)
        out = 0;
      end
    end
endmodule