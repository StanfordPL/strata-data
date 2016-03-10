  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm0  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %ymm0, %ymm0, %ymm8   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhps %ymm0, %ymm2, %ymm14   #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhps %ymm14, %ymm2, %ymm10  #  4     0xc   5      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklps %ymm8, %ymm10, %ymm1   #  5     0x11  5      OPC=vunpcklps_ymm_ymm_ymm    
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
