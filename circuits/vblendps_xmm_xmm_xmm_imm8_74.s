  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovss %xmm2, %xmm3, %xmm5     #  1     0     4      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm3, %xmm3, %xmm6  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhps %xmm6, %xmm2, %xmm9  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  vpbroadcastq %xmm5, %xmm1      #  4     0xc   5      OPC=vpbroadcastq_xmm_xmm   
  unpcklpd %xmm9, %xmm1          #  5     0x11  5      OPC=unpcklpd_xmm_xmm       
  retq                           #  6     0x16  1      OPC=retq                   
                                                                                  
.size target, .-target
