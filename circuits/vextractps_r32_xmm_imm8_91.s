  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode            
.target:                                        #        0    0      OPC=<label>       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label   
  movq %xmm7, %r12                              #  2     0x5  5      OPC=movq_r64_xmm  
  movq %r12, %rbx                               #  3     0xa  3      OPC=movq_r64_r64  
  retq                                          #  4     0xd  1      OPC=retq          
                                                                                       
.size target, .-target
