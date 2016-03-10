  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovshdup %ymm2, %ymm11          #  1     0     4      OPC=vmovshdup_ymm_ymm      
  vmovshdup %ymm11, %ymm3          #  2     0x4   5      OPC=vmovshdup_ymm_ymm      
  vunpcklps %ymm2, %ymm3, %ymm2    #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %ymm11, %ymm2, %ymm13  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklps %ymm13, %ymm11, %ymm1  #  5     0x12  5      OPC=vunpcklps_ymm_ymm_ymm  
  retq                             #  6     0x17  1      OPC=retq                   
                                                                                    
.size target, .-target
