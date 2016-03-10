  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  clc              #  1     0    1      OPC=clc             
  sbbl %ecx, %ebx  #  2     0x1  2      OPC=sbbl_r32_r32    
  cmovsw %bx, %bx  #  3     0x3  4      OPC=cmovsw_r16_r16  
  retq             #  4     0x7  1      OPC=retq            
                                                            
.size target, .-target
