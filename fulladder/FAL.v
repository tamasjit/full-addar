module FAL(A, B , C , S , Cout);
input A, B ,C;
output reg S, Cout ;

always @(*)
	begin 
		case ({A,B,C})
	
			3'b001: begin
                S=1; Cout=0;
            end 
			3'b010:begin
                S=1; Cout=0;
            end 
			3'b011: begin
                S=0; Cout=1;
            end 
			3'b100: begin
                S=1;Cout=0;
            end
			3'b101: begin
                S=0;Cout=1;
            end
			3'b110: begin
                S=0;Cout=1;
            end
			3'b111: begin
                S=1;Cout=1;
            end
			default : begin
                S=0;Cout=0;
            end
		endcase
	end
	endmodule