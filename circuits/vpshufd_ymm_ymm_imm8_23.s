  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm4           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vunpcklps %ymm2, %ymm4, %ymm8    #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm8, %ymm4, %ymm11  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm8, %ymm11, %ymm1   #  4     0xd   5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
