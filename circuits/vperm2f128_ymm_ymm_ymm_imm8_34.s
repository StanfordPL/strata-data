  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm3, %ymm0  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpbroadcastq %xmm0, %ymm9        #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm     
  vpbroadcastq %xmm3, %ymm4        #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm     
  vunpcklpd %ymm9, %ymm4, %ymm1    #  4     0xe   5      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  5     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
