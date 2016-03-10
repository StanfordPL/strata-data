  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %ymm2, %ymm2, %ymm13   #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm13, %ymm2, %ymm14  #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm2, %ymm14, %ymm2  #  3     0x9   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm13, %ymm6  #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm14, %ymm6, %ymm1   #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
