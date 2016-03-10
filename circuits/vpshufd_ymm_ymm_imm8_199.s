  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm11          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vmovddup %ymm11, %ymm6           #  2     0x4   5      OPC=vmovddup_ymm_ymm        
  vunpckhps %ymm6, %ymm11, %ymm12  #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm12, %ymm2, %ymm8  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklpd %ymm8, %ymm12, %ymm1   #  5     0x12  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
