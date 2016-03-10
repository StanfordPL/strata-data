  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm9, %ymm6             #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm6, %ymm2, %ymm1         #  3     0xa   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xe   5      OPC=callq_label            
  movhlps %xmm13, %xmm12                #  5     0x13  4      OPC=movhlps_xmm_xmm        
  callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
