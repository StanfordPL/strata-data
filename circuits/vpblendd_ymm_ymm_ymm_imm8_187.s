  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vunpckhpd %ymm2, %ymm3, %ymm12   #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm  
  vpand %ymm3, %ymm3, %ymm1        #  2     0x4   4      OPC=vpand_ymm_ymm_ymm      
  vmovshdup %ymm1, %ymm4           #  3     0x8   4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %ymm4, %ymm12, %ymm13  #  4     0xc   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklpd %ymm13, %ymm1, %ymm1   #  5     0x10  5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                   
                                                                                    
.size target, .-target
