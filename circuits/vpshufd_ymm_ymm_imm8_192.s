  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovddup %ymm2, %ymm15         #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovsldup %ymm15, %ymm1        #  2     0x4   5      OPC=vmovsldup_ymm_ymm      
  vunpckhps %ymm2, %ymm1, %ymm7  #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm7, %ymm1, %ymm1  #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm  
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
