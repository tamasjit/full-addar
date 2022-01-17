module FA_tb ;
 reg A, B , C;
 wire S, Cout;
 
 integer i;
 FAL dut (A,B,C,S,Cout);
 
initial
 begin
 for (i=0 ; i <8 ; i = i+1)
	begin
		{A,B,C} = i;
		#10;
	end
end
	initial $monitor("A=%b,B=%b,C=%b,S=%b,Cout=%b",A,B,C,S,Cout);
	initial #100 $finish;
endmodule