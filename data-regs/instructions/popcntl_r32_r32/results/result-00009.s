  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  roll $0x1, %ecx     #  1     0    2      OPC=roll_r32_one     
  popcntq %rcx, %rdx  #  2     0x2  5      OPC=popcntq_r64_r64  
  movslq %edx, %rbx   #  3     0x7  3      OPC=movslq_r64_r32   
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
