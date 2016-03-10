  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm10          #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm10, %xmm15  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm2, %xmm3, %xmm10      #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm     
  vmovsd %xmm10, %xmm15, %xmm1     #  4     0xc   5      OPC=vmovsd_xmm_xmm_xmm     
  retq                             #  5     0x11  1      OPC=retq                   
                                                                                    
.size target, .-target
