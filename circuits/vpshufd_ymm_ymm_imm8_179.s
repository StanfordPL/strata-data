  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm12          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vunpckhps %ymm2, %ymm2, %ymm8    #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm8, %ymm12, %ymm14  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm14, %ymm8, %ymm1  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
