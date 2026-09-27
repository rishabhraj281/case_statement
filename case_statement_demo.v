module case_example;
  reg [2:0] data;

  always @(data) begin
    case(data)
      3'h2: $display("Time = %0t : value of data is 2", $time);
      3'h4: $display("Time = %0t : value of data is 4", $time);
      3'h5: $display("Time = %0t : value of data is 5", $time);
      default: $display("Time = %0t : default statement is executed for data = %0d", $time, data);
    endcase
  end

  initial begin
    repeat(10) begin
      data = $random;
      #1;
    end
  end
endmodule
