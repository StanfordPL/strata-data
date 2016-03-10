  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vunpckhps %ymm2, %ymm2, %ymm5    #  1     0    4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm5, %ymm2, %ymm13   #  2     0x4  4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm13, %ymm5, %ymm1  #  3     0x8  5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
