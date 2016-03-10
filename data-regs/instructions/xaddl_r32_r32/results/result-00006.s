  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  clc               #  1     0    1      OPC=clc            
  adcl %ebx, %ecx   #  2     0x1  2      OPC=adcl_r32_r32   
  xchgl %ecx, %ebx  #  3     0x3  2      OPC=xchgl_r32_r32  
  retq              #  4     0x5  1      OPC=retq           
                                                            
.size target, .-target
