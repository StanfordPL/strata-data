  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm14          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vunpcklpd %ymm14, %ymm14, %ymm8  #  2     0x4   5      OPC=vunpcklpd_ymm_ymm_ymm   
  vpunpckhdq %ymm2, %ymm8, %ymm3   #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm8, %ymm3, %ymm1   #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
