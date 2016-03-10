  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  movups %xmm11, %xmm8                  #  3     0xa   4      OPC=movups_xmm_xmm           
  callq .move_128_256_xmm8_xmm9_ymm3    #  4     0xe   5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm3, %ymm1       #  5     0x13  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1     #  6     0x17  5      OPC=callq_label              
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
