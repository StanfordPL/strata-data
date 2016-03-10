  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  sbbw %cx, %bx    #  2     0x2  3      OPC=sbbw_r16_r16  
  retq             #  3     0x5  1      OPC=retq          
                                                          
.size target, .-target
