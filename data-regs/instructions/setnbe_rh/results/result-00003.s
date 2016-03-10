  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setbe %ah        #  2     0xa   3      OPC=setbe_rh        
  xaddb %al, %ah   #  3     0xd   3      OPC=xaddb_rh_r8     
  setpe %ah        #  4     0x10  3      OPC=setpe_rh        
  retq             #  5     0x13  1      OPC=retq            
                                                             
.size target, .-target
