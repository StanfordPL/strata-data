  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  movaps %xmm13, %xmm8                  #  3     0xa   4      OPC=movaps_xmm_xmm           
  callq .move_64_128_xmm8_xmm9_xmm2     #  4     0xe   5      OPC=callq_label              
  punpckhqdq %xmm9, %xmm8               #  5     0x13  5      OPC=punpckhqdq_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm1, %ymm1       #  7     0x1d  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  8     0x21  1      OPC=retq                     
                                                                                           
.size target, .-target
