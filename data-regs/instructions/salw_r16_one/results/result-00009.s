  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32   
  xaddw %ax, %bx   #  2     0x2  4      OPC=xaddw_r16_r16  
  addw %bx, %bx    #  3     0x6  3      OPC=addw_r16_r16   
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
