  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64     
  cltq                     #  2     0x3   2      OPC=cltq             
  callq .read_pf_into_rcx  #  3     0x5   5      OPC=callq_label      
  cltq                     #  4     0xa   2      OPC=cltq             
  popcntq %rax, %rdi       #  5     0xc   5      OPC=popcntq_r64_r64  
  adcl %ecx, %ebx          #  6     0x11  2      OPC=adcl_r32_r32     
  retq                     #  7     0x13  1      OPC=retq             
                                                                      
.size target, .-target
