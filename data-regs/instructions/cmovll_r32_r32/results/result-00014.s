  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x8, %rdx     #  1     0     10     OPC=movq_r64_imm64   
  setge %r13b         #  2     0xa   4      OPC=setge_r8         
  xaddb %r13b, %dl    #  3     0xe   4      OPC=xaddb_r8_r8      
  cmovpol %ecx, %ebx  #  4     0x12  3      OPC=cmovpol_r32_r32  
  retq                #  5     0x15  1      OPC=retq             
                                                                 
.size target, .-target
