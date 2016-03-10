  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpcklps %xmm3, %xmm2, %xmm15   #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm   
  vunpckhpd %ymm15, %ymm15, %ymm7  #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckhdq %xmm3, %xmm7, %xmm8   #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm8, %xmm7, %xmm1    #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
