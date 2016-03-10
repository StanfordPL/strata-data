  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  orl %ecx, %ecx      #  1     0    2      OPC=orl_r32_r32      
  popcntq %rcx, %rbx  #  2     0x2  5      OPC=popcntq_r64_r64  
  retq                #  3     0x7  1      OPC=retq             
                                                                
.size target, .-target
