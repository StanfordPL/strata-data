  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %ymm2, %ymm2, %ymm15  #  1     0     4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm15, %ymm3  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm15, %ymm3, %ymm0   #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckhdq %ymm3, %ymm0, %ymm1   #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
