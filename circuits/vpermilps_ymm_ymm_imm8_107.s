  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm13            #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vunpckhps %ymm13, %ymm2, %ymm11    #  2     0x4   5      OPC=vunpckhps_ymm_ymm_ymm    
  vmovups %ymm11, %ymm12             #  3     0x9   5      OPC=vmovups_ymm_ymm          
  vpunpckhqdq %ymm12, %ymm11, %ymm0  #  4     0xe   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm0, %ymm2      #  5     0x13  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm2, %ymm11, %ymm1    #  6     0x17  4      OPC=vpunpckhdq_ymm_ymm_ymm   
  retq                               #  7     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
