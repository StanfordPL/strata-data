  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovsldup %ymm2, %ymm9         #  1     0    4      OPC=vmovsldup_ymm_ymm      
  movsldup %xmm2, %xmm9          #  2     0x4  5      OPC=movsldup_xmm_xmm       
  vunpckhps %ymm9, %ymm2, %ymm1  #  3     0x9  5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                           #  4     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
