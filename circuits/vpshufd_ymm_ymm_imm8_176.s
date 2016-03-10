  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovsldup %ymm2, %ymm14           #  1     0     4      OPC=vmovsldup_ymm_ymm      
  vmovddup %ymm14, %ymm10           #  2     0x4   5      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm14, %ymm2, %ymm1    #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklps %ymm10, %ymm10, %ymm11  #  4     0xe   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhpd %ymm1, %ymm11, %ymm1    #  5     0x13  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                              #  6     0x17  1      OPC=retq                   
                                                                                     
.size target, .-target
