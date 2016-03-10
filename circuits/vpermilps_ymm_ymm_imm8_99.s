  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckhdq %ymm2, %ymm2, %ymm15  #  1     0    4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm15, %ymm13  #  2     0x4  4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm2, %ymm13, %ymm1   #  3     0x8  4      OPC=vunpcklps_ymm_ymm_ymm   
  retq                             #  4     0xc  1      OPC=retq                    
                                                                                    
.size target, .-target
