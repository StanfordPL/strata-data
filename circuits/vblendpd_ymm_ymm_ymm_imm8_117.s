  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtss2sd %xmm2, %xmm2, %xmm1  #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vpmovsxwd %xmm1, %xmm1         #  2     0x4   5      OPC=vpmovsxwd_xmm_xmm      
  vsubpd %ymm3, %ymm3, %ymm7     #  3     0x9   4      OPC=vsubpd_ymm_ymm_ymm     
  vminpd %xmm7, %xmm1, %xmm7     #  4     0xd   4      OPC=vminpd_xmm_xmm_xmm     
  vunpcklpd %ymm3, %ymm7, %ymm9  #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm9, %ymm1  #  6     0x15  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  7     0x19  1      OPC=retq                   
                                                                                  
.size target, .-target
