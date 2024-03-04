module task2(
    output logic A, B, C, D, E, F, G,
    output logic S0, S1, S2, S3, S4, S5, S6, S7,
    input logic l, m, n, o, p, q, r
);
    assign A = (~l & ~m & ~n & o) | (~l & m & ~n & ~o) | (l & m & ~n & o) | (l & ~m & n & o);
    assign B = (l & n & o) | (m & n & ~o) | (l & m & ~o) | (~l & m & ~n & o);
    assign C = (l & m & n) | (l & m & ~o) | (~l & ~m & n & ~o);
    assign D = (m & n & o) | (~l & ~m & ~n & o) | (~l & m & ~n & ~o) | (l & ~m & n & o);
    assign E = (~l & o) | (~l & m & ~n) | (~m & ~n & o);
    assign F = (~l & n & o) | (~l & ~m & o) | (~l & ~m & n) | (l & m & ~n & o);
    assign G = (~l & ~m & ~n) | (~l & m & n & o) | (l & m & ~n & ~o);

    assign S0 = p | q | r;   // 111
    assign S1 = p | q | ~r;  // 110
    assign S2 = p | ~q | r;  // 101
    assign S3 = p | ~q | ~r; // 100
    assign S4 = ~p | q | r;  // 011
    assign S5 = ~p | q | ~r; // 010
    assign S6 = ~p | ~q | r; // 001
    assign S7 = ~p | ~q | ~r; // 000
endmodule