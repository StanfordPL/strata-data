  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm15         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vmovss %xmm15, %xmm3, %xmm6     #  2     0x4   5      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm6, %xmm15, %xmm0  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm6, %xmm0, %xmm1      #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
