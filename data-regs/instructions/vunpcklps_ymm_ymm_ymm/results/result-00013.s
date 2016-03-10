  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vmovddup %ymm3, %ymm10           #  1     0    4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm2, %ymm14           #  2     0x4  4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm10, %ymm14, %ymm1  #  3     0x8  5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                   
                                                                                   
.size target, .-target
