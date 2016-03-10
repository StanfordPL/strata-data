  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpcklps %ymm2, %ymm2, %ymm11  #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm2, %ymm13  #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmaxpd %ymm13, %ymm13, %ymm7    #  3     0x8   5      OPC=vmaxpd_ymm_ymm_ymm     
  vunpckhpd %ymm7, %ymm11, %ymm1  #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
