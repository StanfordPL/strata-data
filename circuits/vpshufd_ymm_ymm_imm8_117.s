  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovshdup %ymm2, %ymm8         #  1     0     4      OPC=vmovshdup_ymm_ymm      
  vmovddup %ymm8, %ymm4          #  2     0x4   5      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm4, %ymm8, %ymm9  #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklpd %ymm9, %ymm4, %ymm1  #  4     0xd   5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
