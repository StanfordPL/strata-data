  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovaps %ymm2, %ymm8           #  1     0    4      OPC=vmovaps_ymm_ymm        
  vmovdqu %ymm3, %ymm2           #  2     0x4  4      OPC=vmovdqu_ymm_ymm        
  vunpcklps %ymm2, %ymm8, %ymm1  #  3     0x8  4      OPC=vunpcklps_ymm_ymm_ymm  
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
