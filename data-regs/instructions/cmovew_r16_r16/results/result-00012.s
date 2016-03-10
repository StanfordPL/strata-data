  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  clc                  #  1     0    1      OPC=clc              
  movzwq %cx, %r12     #  2     0x1  4      OPC=movzwq_r64_r16   
  cmovnal %r12d, %ebx  #  3     0x5  4      OPC=cmovnal_r32_r32  
  retq                 #  4     0x9  1      OPC=retq             
                                                                 
.size target, .-target
