  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm11  #  1     0    4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm11, %ymm1  #  2     0x4  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm11, %ymm1, %ymm1   #  3     0x8  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
