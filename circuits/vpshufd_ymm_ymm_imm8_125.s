  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm8          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vunpckhps %ymm8, %ymm2, %ymm0   #  2     0x4   5      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm8, %ymm0, %ymm3   #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm0, %ymm3, %ymm9  #  4     0xe   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm3, %ymm9, %ymm1   #  5     0x12  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
