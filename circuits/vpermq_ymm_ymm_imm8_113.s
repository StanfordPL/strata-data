  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm12   #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vpbroadcastq %xmm9, %ymm8          #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xe   5      OPC=callq_label              
  vunpcklpd %ymm8, %ymm12, %ymm1     #  5     0x13  5      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
