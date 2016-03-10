  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm0           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckldq %ymm2, %ymm0, %ymm8   #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm0, %ymm8, %ymm10  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm8, %ymm10, %ymm1   #  4     0xc   5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
