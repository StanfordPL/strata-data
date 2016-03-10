  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x40, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cltq              #  2     0xa   2      OPC=cltq            
  setnz %ah         #  3     0xc   3      OPC=setnz_rh        
  cltq              #  4     0xf   2      OPC=cltq            
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
