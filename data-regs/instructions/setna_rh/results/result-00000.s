  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cwtl              #  2     0xa   1      OPC=cwtl            
  setbe %ah         #  3     0xb   3      OPC=setbe_rh        
  incw %ax          #  4     0xe   3      OPC=incw_r16        
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
