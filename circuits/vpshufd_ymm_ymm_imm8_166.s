  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm0  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqu %ymm0, %ymm1             #  2     0x4   4      OPC=vmovdqu_ymm_ymm          
  vmovsldup %ymm1, %ymm3           #  3     0x8   4      OPC=vmovsldup_ymm_ymm        
  vunpcklps %ymm3, %ymm2, %ymm4    #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhps %ymm4, %ymm3, %ymm1    #  5     0x10  4      OPC=vunpckhps_ymm_ymm_ymm    
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
