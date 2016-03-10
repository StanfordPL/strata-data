  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vmovshdup %ymm2, %ymm14          #  1     0    4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %ymm14, %ymm2, %ymm12  #  2     0x4  5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklpd %ymm12, %ymm14, %ymm1  #  3     0x9  5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
