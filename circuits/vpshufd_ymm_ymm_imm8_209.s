  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklpd %ymm2, %ymm2, %ymm11   #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm    
  vmovsldup %ymm11, %ymm8          #  2     0x4   5      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm8, %ymm11, %ymm1  #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhps %ymm2, %ymm11, %ymm8   #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm8, %ymm1, %ymm1  #  5     0x12  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
