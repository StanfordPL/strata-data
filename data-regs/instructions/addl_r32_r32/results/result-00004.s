  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32   
  cbtw              #  2     0x2  2      OPC=cbtw           
  xaddl %eax, %ecx  #  3     0x4  3      OPC=xaddl_r32_r32  
  clc               #  4     0x7  1      OPC=clc            
  adcl %eax, %ebx   #  5     0x8  2      OPC=adcl_r32_r32   
  retq              #  6     0xa  1      OPC=retq           
                                                            
.size target, .-target
