  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm3, %ymm4  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm4, %ymm2, %ymm12  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpcklps %ymm12, %ymm3, %ymm3   #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm3, %ymm12, %ymm4  #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklps %ymm12, %ymm4, %ymm1   #  5     0x11  5      OPC=vunpcklps_ymm_ymm_ymm    
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
