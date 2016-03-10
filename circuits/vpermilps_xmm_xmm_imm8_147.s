  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm6, %xmm5, %xmm3                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm3, %xmm3, %xmm9               #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckldq %xmm2, %xmm7, %xmm1                #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm   
  callq .move_128_64_xmm1_xmm12_xmm13           #  5     0x11  5      OPC=callq_label              
  vpunpckhqdq %ymm1, %ymm9, %ymm13              #  6     0x16  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  7     0x1a  5      OPC=callq_label              
  retq                                          #  8     0x1f  1      OPC=retq                     
                                                                                                   
.size target, .-target
