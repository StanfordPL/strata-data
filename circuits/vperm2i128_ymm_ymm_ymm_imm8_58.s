  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovddup %xmm2, %xmm13          #  1     0     4      OPC=vmovddup_xmm_xmm       
  vunpcklps %ymm13, %ymm3, %ymm6  #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm  
  vminss %xmm6, %xmm3, %xmm0      #  3     0x9   4      OPC=vminss_xmm_xmm_xmm     
  vpandn %ymm3, %ymm0, %ymm1      #  4     0xd   4      OPC=vpandn_ymm_ymm_ymm     
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
