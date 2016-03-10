  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhps %ymm3, %ymm2, %ymm8  #  1     0    4      OPC=vunpckhps_ymm_ymm_ymm  
  vsubsd %xmm8, %xmm8, %xmm0     #  2     0x4  5      OPC=vsubsd_xmm_xmm_xmm     
  vpor %ymm8, %ymm0, %ymm1       #  3     0x9  5      OPC=vpor_ymm_ymm_ymm       
  retq                           #  4     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
