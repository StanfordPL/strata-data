  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vunpcklps %ymm2, %ymm3, %ymm12   #  1     0    4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpcklps %ymm3, %ymm12, %ymm1   #  2     0x4  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm2, %ymm1, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
