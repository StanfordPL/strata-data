  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %ymm2, %ymm2, %ymm6   #  1     0     4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm6, %ymm2, %ymm1    #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklps %ymm2, %ymm1, %ymm12   #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm12, %ymm1, %ymm11  #  4     0xc   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vminpd %ymm11, %ymm11, %ymm1     #  5     0x11  5      OPC=vminpd_ymm_ymm_ymm      
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
