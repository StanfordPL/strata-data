  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vunpckhps %ymm2, %ymm2, %ymm3  #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklps %ymm3, %ymm2, %ymm5  #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklps %ymm5, %ymm2, %ymm5  #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm  
  vmovdqa %ymm5, %ymm1           #  4     0xc   4      OPC=vmovdqa_ymm_ymm        
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
