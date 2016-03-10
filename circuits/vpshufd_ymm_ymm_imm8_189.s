  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqa %ymm2, %ymm12           #  1     0     4      OPC=vmovdqa_ymm_ymm        
  vmovshdup %ymm2, %ymm4          #  2     0x4   4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %ymm12, %ymm4, %ymm7  #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklps %ymm7, %ymm4, %ymm0   #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklpd %ymm7, %ymm0, %ymm1   #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
