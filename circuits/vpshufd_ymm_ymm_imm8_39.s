  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm10          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm10, %ymm2, %ymm3  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm10, %ymm2, %ymm4  #  3     0x9   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm4, %ymm3, %ymm1    #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
