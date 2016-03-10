  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11           #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vpunpckldq %xmm3, %xmm6, %xmm13               #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm13, %xmm11, %xmm1             #  4     0xe   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  5     0x13  1      OPC=retq                     
                                                                                                   
.size target, .-target
