  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %ymm2, %ymm2, %ymm11  #  1     0     4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm11, %ymm1   #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm1, %ymm1, %ymm5   #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm11, %ymm5, %ymm7  #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm7, %ymm1, %ymm1   #  5     0x11  4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
