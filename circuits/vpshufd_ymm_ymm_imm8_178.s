  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm13          #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vunpckhps %ymm13, %ymm2, %ymm0   #  2     0x4   5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckldq %ymm13, %ymm0, %ymm7  #  3     0x9   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vmovdqa %ymm0, %ymm1             #  4     0xe   4      OPC=vmovdqa_ymm_ymm          
  vpunpckhqdq %ymm1, %ymm7, %ymm1  #  5     0x12  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
