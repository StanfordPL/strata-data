  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cbtw             #  2     0xa   2      OPC=cbtw            
  cbtw             #  3     0xc   2      OPC=cbtw            
  cbtw             #  4     0xe   2      OPC=cbtw            
  setz %ah         #  5     0x10  3      OPC=setz_rh         
  cltq             #  6     0x13  2      OPC=cltq            
  retq             #  7     0x15  1      OPC=retq            
                                                             
.size target, .-target
