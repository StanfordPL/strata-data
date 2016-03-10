  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vminss %xmm3, %xmm3, %xmm0     #  1     0     4      OPC=vminss_xmm_xmm_xmm     
  vmovsldup %xmm2, %xmm3         #  2     0x4   4      OPC=vmovsldup_xmm_xmm      
  vunpcklps %xmm3, %xmm3, %xmm6  #  3     0x8   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm6, %xmm0, %xmm1     #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
