  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  popcntq %rax, %rbx  #  2     0x3  5      OPC=popcntq_r64_r64  
  retq                #  3     0x8  1      OPC=retq             
                                                                
.size target, .-target
