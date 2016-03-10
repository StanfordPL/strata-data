  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  clc                 #  1     0    1      OPC=clc              
  cmovpol %ebx, %ecx  #  2     0x1  3      OPC=cmovpol_r32_r32  
  cmovael %ecx, %ebx  #  3     0x4  3      OPC=cmovael_r32_r32  
  retq                #  4     0x7  1      OPC=retq             
                                                                
.size target, .-target
