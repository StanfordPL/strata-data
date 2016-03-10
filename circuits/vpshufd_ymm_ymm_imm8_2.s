  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovsldup %ymm2, %ymm15          #  1     0     4      OPC=vmovsldup_ymm_ymm      
  vmovddup %ymm15, %ymm10          #  2     0x4   5      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm10, %ymm15, %ymm9  #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm10, %ymm9, %ymm1   #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                             #  5     0x13  1      OPC=retq                   
                                                                                    
.size target, .-target
