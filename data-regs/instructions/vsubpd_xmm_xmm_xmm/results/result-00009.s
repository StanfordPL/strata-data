  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm10   #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vminps %xmm3, %xmm3, %xmm11   #  2     0x4   4      OPC=vminps_xmm_xmm_xmm  
  vmaxss %xmm11, %xmm11, %xmm4  #  3     0x8   5      OPC=vmaxss_xmm_xmm_xmm  
  vsubpd %ymm4, %ymm10, %ymm1   #  4     0xd   4      OPC=vsubpd_ymm_ymm_ymm  
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
