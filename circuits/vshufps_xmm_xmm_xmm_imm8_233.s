  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vaddss %xmm3, %xmm2, %xmm12      #  1     0     4      OPC=vaddss_xmm_xmm_xmm     
  vpmovsxdq %xmm2, %xmm1           #  2     0x4   5      OPC=vpmovsxdq_xmm_xmm      
  vunpckhps %ymm12, %ymm1, %ymm5   #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm5, %ymm1, %ymm15   #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhpd %xmm15, %xmm3, %xmm12  #  5     0x12  5      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklpd %xmm12, %xmm5, %xmm1   #  6     0x17  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                             #  7     0x1c  1      OPC=retq                   
                                                                                    
.size target, .-target
