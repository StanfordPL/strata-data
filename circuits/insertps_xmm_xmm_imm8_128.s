  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                       
.target:                                        #        0    0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label              
  vpunpckhqdq %xmm4, %xmm2, %xmm11              #  2     0x5  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movss %xmm11, %xmm1                           #  3     0x9  5      OPC=movss_xmm_xmm            
  retq                                          #  4     0xe  1      OPC=retq                     
                                                                                                  
.size target, .-target
