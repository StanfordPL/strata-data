  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm1           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vunpckhps %ymm1, %ymm3, %ymm11   #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckhdq %ymm11, %ymm1, %ymm9  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm11, %ymm1, %ymm4  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vpor %ymm4, %ymm4, %ymm14        #  5     0x12  4      OPC=vpor_ymm_ymm_ymm        
  vunpcklps %ymm14, %ymm9, %ymm1   #  6     0x16  5      OPC=vunpcklps_ymm_ymm_ymm   
  retq                             #  7     0x1b  1      OPC=retq                    
                                                                                     
.size target, .-target
