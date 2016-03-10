  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11           #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vpunpckldq %xmm7, %xmm11, %xmm6               #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vmovaps %ymm6, %ymm11                         #  4     0xe   4      OPC=vmovaps_ymm_ymm          
  callq .move_128_64_xmm3_xmm12_xmm13           #  5     0x12  5      OPC=callq_label              
  vpunpcklqdq %xmm11, %xmm12, %xmm1             #  6     0x17  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
