  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm10, %ymm11           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vpbroadcastq %xmm11, %ymm8            #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpcklqdq %ymm8, %ymm11, %ymm1      #  5     0x14  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  6     0x19  1      OPC=retq                     
                                                                                           
.size target, .-target
