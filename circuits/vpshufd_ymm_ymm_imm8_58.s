  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vhaddps %ymm2, %ymm2, %ymm0     #  1     0     4      OPC=vhaddps_ymm_ymm_ymm    
  vcvtpd2dqx %xmm0, %xmm9         #  2     0x4   4      OPC=vcvtpd2dqx_xmm_xmm     
  vunpckhpd %ymm9, %ymm2, %ymm13  #  3     0x8   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm13, %ymm6  #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklps %ymm6, %ymm13, %ymm1  #  5     0x11  4      OPC=vunpcklps_ymm_ymm_ymm  
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
