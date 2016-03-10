  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %ymm2, %ymm2, %ymm6    #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm   
  vmovups %ymm6, %ymm1             #  2     0x4   4      OPC=vmovups_ymm_ymm         
  vunpckhps %ymm6, %ymm1, %ymm3    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm3, %ymm2, %ymm11  #  4     0xc   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm11, %ymm1  #  5     0x10  4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
