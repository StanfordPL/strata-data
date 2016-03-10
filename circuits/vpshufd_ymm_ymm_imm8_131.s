  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm14          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vunpckhpd %ymm14, %ymm2, %ymm0   #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckldq %ymm14, %ymm0, %ymm1  #  3     0x9   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm0, %ymm1, %ymm8    #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpckhps %ymm8, %ymm1, %ymm1    #  5     0x12  5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
