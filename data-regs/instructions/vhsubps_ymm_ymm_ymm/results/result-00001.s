  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpcklps %ymm3, %ymm2, %ymm14   #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhps %ymm3, %ymm2, %ymm4    #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckhdq %ymm4, %ymm14, %ymm3  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm4, %ymm14, %ymm1   #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm   
  vsubps %ymm3, %ymm1, %ymm1       #  5     0x10  4      OPC=vsubps_ymm_ymm_ymm      
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
