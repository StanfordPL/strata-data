  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode            
.target:                                        #        0    0      OPC=<label>       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label   
  movq %xmm7, %rbp                              #  2     0x5  5      OPC=movq_r64_xmm  
  movl %ebp, %ebx                               #  3     0xa  2      OPC=movl_r32_r32  
  retq                                          #  4     0xc  1      OPC=retq          
                                                                                       
.size target, .-target
