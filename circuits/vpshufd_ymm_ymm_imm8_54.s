  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm1           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm1, %ymm2, %ymm11  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm11, %ymm2, %ymm13  #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm   
  vorps %ymm13, %ymm13, %ymm1      #  4     0xd   5      OPC=vorps_ymm_ymm_ymm       
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
