  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm0  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovsldup %ymm0, %ymm6           #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm6, %ymm2, %ymm8   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhps %ymm0, %ymm8, %ymm1    #  4     0xc   4      OPC=vunpckhps_ymm_ymm_ymm    
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
