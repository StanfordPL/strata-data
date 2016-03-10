  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x1, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setbe %al        #  2     0xa   3      OPC=setbe_r8        
  cltq             #  3     0xd   2      OPC=cltq            
  cltq             #  4     0xf   2      OPC=cltq            
  xaddb %ah, %al   #  5     0x11  3      OPC=xaddb_r8_rh     
  retq             #  6     0x14  1      OPC=retq            
                                                             
.size target, .-target
