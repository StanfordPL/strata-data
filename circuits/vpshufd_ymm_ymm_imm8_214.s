  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm11          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm11, %ymm2, %ymm1  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm1, %ymm11, %ymm4   #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklps %ymm11, %ymm4, %ymm3   #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm4, %ymm3, %ymm1   #  5     0x12  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
