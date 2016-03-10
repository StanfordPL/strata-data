  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cwtl              #  2     0xa   1      OPC=cwtl            
  cwtl              #  3     0xb   1      OPC=cwtl            
  cwtl              #  4     0xc   1      OPC=cwtl            
  setnp %ah         #  5     0xd   3      OPC=setnp_rh        
  cltq              #  6     0x10  2      OPC=cltq            
  retq              #  7     0x12  1      OPC=retq            
                                                              
.size target, .-target
