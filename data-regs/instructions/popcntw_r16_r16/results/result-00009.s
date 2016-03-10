  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  addw %cx, %ax       #  2     0x3  3      OPC=addw_r16_r16     
  popcntq %rax, %rbx  #  3     0x6  5      OPC=popcntq_r64_r64  
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
