  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovsldup %ymm2, %ymm12          #  1     0     4      OPC=vmovsldup_ymm_ymm      
  vmovddup %ymm12, %ymm10          #  2     0x4   5      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm2, %ymm10, %ymm11  #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm12, %ymm11, %ymm1  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                   
                                                                                    
.size target, .-target
