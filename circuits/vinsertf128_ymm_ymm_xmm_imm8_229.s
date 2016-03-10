  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm10_xmm11   #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm3, %ymm1             #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label              
  vpbroadcastq %xmm11, %ymm6            #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpcklqdq %ymm6, %ymm1, %ymm13      #  5     0x14  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label              
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
