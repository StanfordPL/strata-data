  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cltq                            #  2     0xa   2      OPC=cltq            
  cwtl                            #  3     0xc   1      OPC=cwtl            
  cltq                            #  4     0xd   2      OPC=cltq            
  setbe %ah                       #  5     0xf   3      OPC=setbe_rh        
  cwtl                            #  6     0x12  1      OPC=cwtl            
  retq                            #  7     0x13  1      OPC=retq            
                                                                            
.size target, .-target
