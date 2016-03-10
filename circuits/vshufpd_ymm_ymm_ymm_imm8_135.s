  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm12_xmm13   #  2     0x5   5      OPC=callq_label              
  vpbroadcastq %xmm11, %ymm1            #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm1       #  4     0xf   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  punpcklqdq %xmm13, %xmm1              #  5     0x13  5      OPC=punpcklqdq_xmm_xmm       
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
