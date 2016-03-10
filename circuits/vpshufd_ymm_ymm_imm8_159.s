  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm8          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm8, %ymm8, %ymm4  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm4, %ymm8, %ymm3  #  3     0x9   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm3, %ymm7   #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklpd %ymm7, %ymm4, %ymm1   #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
