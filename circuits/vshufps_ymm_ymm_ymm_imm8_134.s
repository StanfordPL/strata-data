  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm3, %ymm5  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm3, %ymm2, %ymm0   #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm0, %ymm5, %ymm10   #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklps %ymm5, %ymm3, %ymm2    #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpcklpd %ymm2, %ymm10, %ymm1   #  5     0x10  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
