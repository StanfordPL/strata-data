  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode               
.target:                                        #        0    0      OPC=<label>          
  vmovdqa %xmm1, %xmm3                          #  1     0    4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4  5      OPC=callq_label      
  movq %xmm7, %rbx                              #  3     0x9  5      OPC=movq_r64_xmm     
  retq                                          #  4     0xe  1      OPC=retq             
                                                                                          
.size target, .-target
