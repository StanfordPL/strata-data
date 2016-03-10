  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm5           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpckldq %ymm5, %ymm2, %ymm6   #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm6, %ymm2, %ymm0    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm6, %ymm0, %ymm1  #  4     0xc   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
