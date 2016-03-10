  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm1             #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm1       #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label              
  movupd %xmm13, %xmm1                  #  4     0xe   5      OPC=movupd_xmm_xmm           
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
