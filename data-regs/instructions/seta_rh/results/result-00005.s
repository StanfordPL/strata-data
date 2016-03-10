  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  setnbe %dl       #  1     0    3      OPC=setnbe_r8     
  xorl %eax, %eax  #  2     0x3  2      OPC=xorl_r32_r32  
  xchgb %ah, %al   #  3     0x5  2      OPC=xchgb_r8_rh   
  xchgb %ah, %dl   #  4     0x7  2      OPC=xchgb_r8_rh   
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
