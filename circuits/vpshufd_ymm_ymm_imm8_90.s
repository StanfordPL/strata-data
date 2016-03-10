  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpunpckldq %ymm2, %ymm2, %ymm11    #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm11, %ymm2, %ymm12  #  2     0x4   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhps %ymm12, %ymm2, %ymm2     #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckldq %ymm2, %ymm2, %ymm1     #  4     0xe   4      OPC=vpunpckldq_ymm_ymm_ymm   
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
