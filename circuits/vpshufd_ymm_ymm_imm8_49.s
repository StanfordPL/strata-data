  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklps %ymm2, %ymm2, %ymm8    #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpcklps %ymm8, %ymm2, %ymm0    #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhps %ymm0, %ymm2, %ymm1    #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm0, %ymm1  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
