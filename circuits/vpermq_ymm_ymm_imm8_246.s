  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vorpd %ymm2, %ymm2, %ymm6             #  1     0     4      OPC=vorpd_ymm_ymm_ymm        
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  callq .move_64_128_xmm12_xmm13_xmm2   #  3     0x9   5      OPC=callq_label              
  vpunpckhqdq %ymm6, %ymm2, %ymm1       #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
