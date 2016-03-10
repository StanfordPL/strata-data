  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %ymm1        #  1     0     5      OPC=vpbroadcastd_ymm_xmm     
  vpunpcklqdq %ymm2, %ymm1, %ymm8  #  2     0x5   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  maxss %xmm1, %xmm8               #  3     0x9   5      OPC=maxss_xmm_xmm            
  vunpckhps %ymm8, %ymm2, %ymm13   #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm    
  vmovddup %ymm13, %ymm1           #  5     0x13  5      OPC=vmovddup_ymm_ymm         
  retq                             #  6     0x18  1      OPC=retq                     
                                                                                      
.size target, .-target
