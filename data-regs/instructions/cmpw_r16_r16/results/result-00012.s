  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  popcntw %ax, %r13w  #  2     0x3  6      OPC=popcntw_r16_r16  
  sbbw %cx, %bx       #  3     0x9  3      OPC=sbbw_r16_r16     
  retq                #  4     0xc  1      OPC=retq             
                                                                
.size target, .-target
