  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckldq %ymm2, %ymm2, %ymm7   #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm7, %ymm2, %ymm4  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm4, %ymm5    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklps %ymm7, %ymm4, %ymm0    #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhps %ymm0, %ymm5, %ymm1    #  5     0x10  4      OPC=vunpckhps_ymm_ymm_ymm    
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
