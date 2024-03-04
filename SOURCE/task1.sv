module task1(output logic red,green,blue,
            input [3:0] a
            
);
always_comb begin

    red = (((~a[3])&(~a[2]))|((~a[2])&a[1])|((~a[3])&a[1])|((~a[3])&a[0])|(a[1]&a[0]));
    green = ((a[3]&(~a[1]))|(a[2]&(~a[0]))|((~a[2])&a[0])|((~a[3])&a[1]));
    blue = ((a[3]&(~a[1]))|((~a[1])&(~a[0]))|(a[2]&(~a[1]))|(a[3]&(~a[0]))|(a[3]&a[2]));


    end
endmodule