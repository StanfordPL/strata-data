  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpckhpd %ymm2, %ymm2, %ymm8   #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpckhps %ymm3, %ymm2, %ymm5   #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm3, %ymm8, %ymm13  #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklpd %ymm13, %ymm3, %ymm1  #  4     0xc   5      OPC=vunpcklpd_ymm_ymm_ymm   
  vpunpckhdq %ymm5, %ymm1, %ymm1  #  5     0x11  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
