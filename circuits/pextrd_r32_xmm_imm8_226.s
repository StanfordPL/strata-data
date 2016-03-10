  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label   
  movq %xmm9, %rbx                   #  2     0x5  5      OPC=movq_r64_xmm  
  orl %ebx, %ebx                     #  3     0xa  2      OPC=orl_r32_r32   
  retq                               #  4     0xc  1      OPC=retq          
                                                                            
.size target, .-target
