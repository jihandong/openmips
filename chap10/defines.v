//全局
`define RstEnable 1'b1          //复位有效
`define RstDisable 1'b0         //复位无效
`define ZeroWord 32'h00000000   //32位0
`define WriteEnable 1'b1        //可写
`define WriteDisable 1'b0       //不可写
`define ReadEnable 1'b1         //可读
`define ReadDisable 1'b0        //不可读
`define AluOpBus 7:0            //译码阶段的输出aluop_o的宽度
`define AluSelBus 2:0           //译码阶段的输出alusel_o的宽度
`define InstValid 1'b1          //指令有效
`define InstInvalid 1'b0        //指令无效
`define Stop 1'b1
`define NoStop 1'b0
`define InDelaySlot 1'b1
`define NotInDelaySlot 1'b0
`define Branch 1'b1
`define NotBranch 1'b0
`define InterruptAssert 1'b1
`define InterruptNotAssert 1'b0
`define TrapAssert 1'b1
`define TrapNotAssert 1'b0
`define True_v 1'b1         //逻辑真
`define False_v 1'b0        //逻辑假
`define ChipEnable 1'b1     //芯片有效
`define ChipDisable 1'b0    //芯片无效
//div
`define DivStart 1'b1
`define DivStop 1'b0
`define DivResultNotReady 1'b1
`define DivResultReady 1'b0
`define DivFree     2'b00
`define DivByZero   2'b01
`define DivOn       2'b10
`define DivEnd      2'b11
//jump-branch
`define InDelaySlot 1'b1
`define NotInDelaySlot 1'b0
`define Branch 1'b1
`define NotBranch 1'b0
//data_ram
`define DataAddrBus 31:0
`define DataBus 31:0
`define DataMemNum 131071
`define DataMemNumLog2 17
`define ByteWidth 7:0
//interrupt
`define InterruptAssert 1'b1
`define InterruptNotAssert 1'b0


//inst op & func
//inst special
`define EXE_SPECIAL     6'b000000
`define EXE_REGIMM      6'b000001
`define EXE_SPECIAL2    6'b011100
`define EXE_SYNC        6'b001111
`define EXE_PREF        6'b110011
//inst logic
`define EXE_ANDI        6'b001100
`define EXE_ORI         6'b001101
`define EXE_XORI        6'b001110    
`define EXE_LUI         6'b001111
`define EXE_AND         6'b100100
`define EXE_OR          6'b100101
`define EXE_XOR         6'b100110
`define EXE_NOR         6'b100111
//inst shift
`define EXE_SLL         6'b000000
`define EXE_SRL         6'b000010
`define EXE_SRA         6'b000011
`define EXE_SLLV        6'b000100
`define EXE_SRLV        6'b000110
`define EXE_SRAV        6'b000111
//inst move
`define EXE_MOVZ        6'b001010
`define EXE_MOVN        6'b001011
`define EXE_MFHI        6'b010000
`define EXE_MTHI        6'b010001
`define EXE_MFLO        6'b010010
`define EXE_MTLO        6'b010011
//inst arithmatic
`define EXE_ADD         6'b100000
`define EXE_ADDU        6'b100001
`define EXE_SUB         6'b100010
`define EXE_SUBU        6'b100011
`define EXE_SLT         6'b101010
`define EXE_SLTU        6'b101011
`define EXE_ADDI        6'b001000
`define EXE_ADDIU       6'b001001
`define EXE_SLTI        6'b001010
`define EXE_SLTIU       6'b001011
`define EXE_CLZ         6'b100000
`define EXE_CLO         6'b100001
//inst mul
`define EXE_MUL         6'b000010
`define EXE_MULT        6'b011000
`define EXE_MULTU       6'b011001
`define EXE_MADD        6'b000000
`define EXE_MADDU       6'b000001
`define EXE_MSUB        6'b000100
`define EXE_MSUBU       6'b000101
//div
`define EXE_DIV         6'b011010
`define EXE_DIVU        6'b011011
//branch
`define EXE_J           6'b000010
`define EXE_JAL         6'b000011
`define EXE_JALR        6'b001001
`define EXE_JR          6'b001000
`define EXE_BEQ         6'b000100
`define EXE_BGEZ        5'b00001
`define EXE_BGEZAL      5'b10001
`define EXE_BGTZ        6'b000111
`define EXE_BLEZ        6'b000110
`define EXE_BLTZ        5'b00000
`define EXE_BLTZAL      5'b10000
`define EXE_BNE         6'b000101
//load&save
`define EXE_LB          6'b100000
`define EXE_LBU         6'b100100
`define EXE_LH          6'b100001
`define EXE_LHU         6'b100101
`define EXE_LL          6'b110000
`define EXE_LW          6'b100011
`define EXE_LWL         6'b100010
`define EXE_LWR         6'b100110
`define EXE_SB          6'b101000
`define EXE_SC          6'b111000
`define EXE_SH          6'b101001
`define EXE_SW          6'b101011
`define EXE_SWL         6'b101010
`define EXE_SWR         6'b101110

//AluOp
//logic
`define EXE_NOP_OP      8'b00000000
`define EXE_AND_OP      8'b00100100
`define EXE_OR_OP       8'b00100101
`define EXE_XOR_OP      8'b00100110
`define EXE_NOR_OP      8'b00100111
//shift 
`define EXE_SLL_OP      8'b01111100
`define EXE_SRL_OP      8'b00000010
`define EXE_SRA_OP      8'b00000011
//move  
`define EXE_MOVZ_OP     8'b00001010
`define EXE_MOVN_OP     8'b00001011
`define EXE_MFHI_OP     8'b00010000
`define EXE_MTHI_OP     8'b00010001
`define EXE_MFLO_OP     8'b00010010
`define EXE_MTLO_OP     8'b00010011
//arithmetic
`define EXE_ADD_OP      8'b00100000
`define EXE_ADDU_OP     8'b00100001
`define EXE_SUB_OP      8'b00100010
`define EXE_SUBU_OP     8'b00100011
`define EXE_ADDI_OP     8'b01010101
`define EXE_ADDIU_OP    8'b01010110
`define EXE_CLZ_OP      8'b10110000
`define EXE_CLO_OP      8'b10110001
`define EXE_SLT_OP      8'b00101010
`define EXE_SLTU_OP     8'b00101011
//mul
`define EXE_MULT_OP     8'b00011000
`define EXE_MULTU_OP    8'b00011001
`define EXE_MUL_OP      8'b10101001
`define EXE_MADD_OP     8'b10100110
`define EXE_MADDU_OP    8'b10101000
`define EXE_MSUB_OP     8'b10101010
`define EXE_MSUBU_OP    8'b10101011
//div
`define EXE_DIV_OP      8'b00011010
`define EXE_DIVU_OP     8'b00011011
//branch
`define EXE_J_OP        8'b01001111
`define EXE_JAL_OP      8'b01010000
`define EXE_JALR_OP     8'b00001001
`define EXE_JR_OP       8'b00001000
`define EXE_BEQ_OP      8'b01010001
`define EXE_BGEZ_OP     8'b01000001
`define EXE_BGEZAL_OP   8'b01001011
`define EXE_BGTZ_OP     8'b01010100
`define EXE_BLEZ_OP     8'b01010011
`define EXE_BLTZ_OP     8'b01000000
`define EXE_BLTZAL_OP   8'b01001010
`define EXE_BNE_OP      8'b01010010
//load&save
`define EXE_LB_OP       8'b11100000
`define EXE_LBU_OP      8'b11100100
`define EXE_LH_OP       8'b11100001
`define EXE_LHU_OP      8'b11100101
`define EXE_LL_OP       8'b11110000
`define EXE_LW_OP       8'b11100011
`define EXE_LWL_OP      8'b11100010
`define EXE_LWR_OP      8'b11100110
`define EXE_PREF_OP     8'b11110011
`define EXE_SB_OP       8'b11101000
`define EXE_SC_OP       8'b11111000
`define EXE_SH_OP       8'b11101001
`define EXE_SW_OP       8'b11101011
`define EXE_SWL_OP      8'b11101010
`define EXE_SWR_OP      8'b11101110
`define EXE_SYNC_OP     8'b00001111
//MFC0 and MTC0
`define EXE_MFC0_OP     8'b01011101
`define EXE_MTC0_OP     8'b01100000

//AluSel
`define EXE_RES_NOP         3'b000
`define EXE_RES_LOGIC       3'b001
`define EXE_RES_SHIFT       3'b010
`define EXE_RES_MOVE        3'b011
`define EXE_RES_ARITHMETIC  3'b100
`define EXE_RES_MUL         3'b101
`define EXE_RES_JUMP_BRANCH 3'b110
`define EXE_RES_LOAD_STORE  3'b111

//指令存储器inst_rom
`define InstAddrBus 31:0    //地址总线宽度
`define InstBus 31:0        //数据总线宽度
`define InstMemNum 131071   //实际大小128KB
`define InstMemNumLog2 17   //实际地址线宽度

//通用寄存器regfile
`define RegAddrBus 4:0
`define RegBus 31:0
`define RegWidth 32
`define DoubleRegWidth 64
`define DoubleRegBus 63:0
`define RegNum 32
`define RegNumLog2 5    //通用寄存器寻址的地址位数
`define NOPRegAddr 5'b00000

//CP0寄存器地址
`define CP0_REG_COUNT       5'b01001  
`define CP0_REG_COMPARE     5'b01011
`define CP0_REG_STATUS      5'b01100
`define CP0_REG_CAUSE       5'b01101
`define CP0_REG_EPC         5'b01110  
`define CP0_REG_PrId        5'b01111         
`define CP0_REG_CONFIG      5'b10000       