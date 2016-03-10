  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovdqu %ymm2, %ymm8             #  1     0     4      OPC=vmovdqu_ymm_ymm        
  vunpckhps %ymm2, %ymm2, %ymm13   #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklps %ymm13, %ymm8, %ymm13  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm13, %ymm9   #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmovddup %ymm9, %ymm1            #  5     0x11  5      OPC=vmovddup_ymm_ymm       
  retq                             #  6     0x16  1      OPC=retq                   
                                                                                    
.size target, .-target
