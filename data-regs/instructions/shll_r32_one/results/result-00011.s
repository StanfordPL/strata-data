  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  xorq %rax, %rax    #  1     0    3      OPC=xorq_r64_r64     
  popcntq %rax, %r9  #  2     0x3  5      OPC=popcntq_r64_r64  
  adcl %ebx, %ebx    #  3     0x8  2      OPC=adcl_r32_r32     
  retq               #  4     0xa  1      OPC=retq             
                                                               
.size target, .-target
