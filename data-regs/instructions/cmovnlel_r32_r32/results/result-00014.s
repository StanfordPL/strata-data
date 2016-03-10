  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movslq %ecx, %r12    #  1     0    3      OPC=movslq_r64_r32   
  cmovll %ebx, %r12d   #  2     0x3  4      OPC=cmovll_r32_r32   
  cmovnel %r12d, %ebx  #  3     0x7  4      OPC=cmovnel_r32_r32  
  retq                 #  4     0xb  1      OPC=retq             
                                                                 
.size target, .-target
