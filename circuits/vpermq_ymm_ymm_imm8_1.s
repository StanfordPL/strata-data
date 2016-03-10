  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vbroadcastsd %xmm2, %ymm1           #  1     0     5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %ymm2, %ymm2, %ymm8     #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1   #  4     0xe   5      OPC=callq_label              
  retq                                #  5     0x13  1      OPC=retq                     
                                                                                         
.size target, .-target
