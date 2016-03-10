  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  cmovzw %cx, %cx     #  2     0x3  4      OPC=cmovzw_r16_r16   
  roll $0x1, %ecx     #  3     0x7  2      OPC=roll_r32_one     
  popcntq %rcx, %rbx  #  4     0x9  5      OPC=popcntq_r64_r64  
  retq                #  5     0xe  1      OPC=retq             
                                                                
.size target, .-target
