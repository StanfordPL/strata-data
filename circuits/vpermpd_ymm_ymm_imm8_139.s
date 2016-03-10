  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm4             #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm2, %ymm4, %ymm1         #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  callq .move_256_128_ymm1_xmm12_xmm13  #  4     0xe   5      OPC=callq_label            
  vunpckhpd %xmm12, %xmm11, %xmm10      #  5     0x13  5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  6     0x18  5      OPC=callq_label            
  retq                                  #  7     0x1d  1      OPC=retq                   
                                                                                         
.size target, .-target
