  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  clc                 #  1     0    1      OPC=clc              
  cmovbel %ecx, %ebx  #  2     0x1  3      OPC=cmovbel_r32_r32  
  movl %ecx, %r12d    #  3     0x4  3      OPC=movl_r32_r32     
  cmovll %r12d, %ebx  #  4     0x7  4      OPC=cmovll_r32_r32   
  retq                #  5     0xb  1      OPC=retq             
                                                                
.size target, .-target
