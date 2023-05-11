module InstMemory(
    input [63:0] inst_addr,
    output reg [31:0] inst
);

reg [7:0] IMEM [167:0];
integer i;
initial begin
    IMEM[0] = 8'h13;
    IMEM[1] = 8'h00;
    IMEM[2] = 8'h00;
    IMEM[3] = 8'h00;
    IMEM[4] = 8'h13;
    IMEM[5] = 8'h04;
    IMEM[6] = 8'h90;
    IMEM[7] = 8'h00;
    IMEM[8] = 8'h93;
    IMEM[9] = 8'h04;
    IMEM[10] = 8'h00;
    IMEM[11] = 8'h00;
    IMEM[12] = 8'h93;
    IMEM[13] = 8'h02;
    IMEM[14] = 8'h80;
    IMEM[15] = 8'h00;
    IMEM[16] = 8'h23;
    IMEM[17] = 8'hb0;
    IMEM[18] = 8'h54;
    IMEM[19] = 8'h00;
    IMEM[20] = 8'h93;
    IMEM[21] = 8'h02;
    IMEM[22] = 8'h20;
    IMEM[23] = 8'h00;
    IMEM[24] = 8'h23;
    IMEM[25] = 8'hb4;
    IMEM[26] = 8'h54;
    IMEM[27] = 8'h00;
    IMEM[28] = 8'h93;
    IMEM[29] = 8'h02;
    IMEM[30] = 8'h40;
    IMEM[31] = 8'h00;
    IMEM[32] = 8'h23;
    IMEM[33] = 8'hb8;
    IMEM[34] = 8'h54;
    IMEM[35] = 8'h00;
    IMEM[36] = 8'h93;
    IMEM[37] = 8'h02;
    IMEM[38] = 8'h90;
    IMEM[39] = 8'h00;
    IMEM[40] = 8'h23;
    IMEM[41] = 8'hbc;
    IMEM[42] = 8'h54;
    IMEM[43] = 8'h00;
    IMEM[44] = 8'h93;
    IMEM[45] = 8'h02;
    IMEM[46] = 8'h30;
    IMEM[47] = 8'h00;
    IMEM[48] = 8'h23;
    IMEM[49] = 8'hb0;
    IMEM[50] = 8'h54;
    IMEM[51] = 8'h02;
    IMEM[52] = 8'h93;
    IMEM[53] = 8'h02;
    IMEM[54] = 8'h10;
    IMEM[55] = 8'h00;
    IMEM[56] = 8'h23;
    IMEM[57] = 8'hb4;
    IMEM[58] = 8'h54;
    IMEM[59] = 8'h02;
    IMEM[60] = 8'h93;
    IMEM[61] = 8'h02;
    IMEM[62] = 8'h60;
    IMEM[63] = 8'h00;
    IMEM[64] = 8'h23;
    IMEM[65] = 8'hb8;
    IMEM[66] = 8'h54;
    IMEM[67] = 8'h02;
    IMEM[68] = 8'h93;
    IMEM[69] = 8'h02;
    IMEM[70] = 8'h50;
    IMEM[71] = 8'h00;
    IMEM[72] = 8'h23;
    IMEM[73] = 8'hbc;
    IMEM[74] = 8'h54;
    IMEM[75] = 8'h02;
    IMEM[76] = 8'h93;
    IMEM[77] = 8'h02;
    IMEM[78] = 8'h00;
    IMEM[79] = 8'h00;
    IMEM[80] = 8'h23;
    IMEM[81] = 8'hb0;
    IMEM[82] = 8'h54;
    IMEM[83] = 8'h04;
    IMEM[84] = 8'h93;
    IMEM[85] = 8'h02;
    IMEM[86] = 8'h70;
    IMEM[87] = 8'h00;
    IMEM[88] = 8'h23;
    IMEM[89] = 8'hb4;
    IMEM[90] = 8'h54;
    IMEM[91] = 8'h04;
    IMEM[92] = 8'h13;
    IMEM[93] = 8'h09;
    IMEM[94] = 8'h00;
    IMEM[95] = 8'h00;
    IMEM[96] = 8'h63;
    IMEM[97] = 8'h02;
    IMEM[98] = 8'h89;
    IMEM[99] = 8'h04;
    IMEM[100] = 8'h93;
    IMEM[101] = 8'h09;
    IMEM[102] = 8'h00;
    IMEM[103] = 8'h00;
    IMEM[104] = 8'hb3;
    IMEM[105] = 8'h02;
    IMEM[106] = 8'h24;
    IMEM[107] = 8'h41;
    IMEM[108] = 8'h63;
    IMEM[109] = 8'h88;
    IMEM[110] = 8'h59;
    IMEM[111] = 8'h02;
    IMEM[112] = 8'h93;
    IMEM[113] = 8'h92;
    IMEM[114] = 8'h39;
    IMEM[115] = 8'h00;
    IMEM[116] = 8'hb3;
    IMEM[117] = 8'h82;
    IMEM[118] = 8'h92;
    IMEM[119] = 8'h00;
    IMEM[120] = 8'h13;
    IMEM[121] = 8'h03;
    IMEM[122] = 8'h80;
    IMEM[123] = 8'h00;
    IMEM[124] = 8'h33;
    IMEM[125] = 8'h03;
    IMEM[126] = 8'h53;
    IMEM[127] = 8'h00;
    IMEM[128] = 8'h83;
    IMEM[129] = 8'hb3;
    IMEM[130] = 8'h02;
    IMEM[131] = 8'h00;
    IMEM[132] = 8'h03;
    IMEM[133] = 8'h3e;
    IMEM[134] = 8'h03;
    IMEM[135] = 8'h00;
    IMEM[136] = 8'h63;
    IMEM[137] = 8'h56;
    IMEM[138] = 8'h7e;
    IMEM[139] = 8'h00;
    IMEM[140] = 8'h23;
    IMEM[141] = 8'hb0;
    IMEM[142] = 8'hc2;
    IMEM[143] = 8'h01;
    IMEM[144] = 8'h23;
    IMEM[145] = 8'h30;
    IMEM[146] = 8'h73;
    IMEM[147] = 8'h00;
    IMEM[148] = 8'h93;
    IMEM[149] = 8'h89;
    IMEM[150] = 8'h19;
    IMEM[151] = 8'h00;
    IMEM[152] = 8'he3;
    IMEM[153] = 8'h08;
    IMEM[154] = 8'h00;
    IMEM[155] = 8'hfc;
    IMEM[156] = 8'h13;
    IMEM[157] = 8'h09;
    IMEM[158] = 8'h19;
    IMEM[159] = 8'h00;
    IMEM[160] = 8'he3;
    IMEM[161] = 8'h00;
    IMEM[162] = 8'h00;
    IMEM[163] = 8'hfc;
    IMEM[164] = 8'h13;
    IMEM[165] = 8'h00;
    IMEM[166] = 8'h00;
    IMEM[167] = 8'h00;
end

always @(*) begin
	inst = {
		IMEM[inst_addr + 3],
		IMEM[inst_addr + 2],
		IMEM[inst_addr + 1],
		IMEM[inst_addr]
	};
end

endmodule
