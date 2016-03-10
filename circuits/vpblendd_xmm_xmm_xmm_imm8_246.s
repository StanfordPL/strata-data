  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  maxps %xmm2, %xmm2              #  1     0     3      OPC=maxps_xmm_xmm          
  vmovsldup %xmm3, %xmm15         #  2     0x3   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm2, %xmm15, %xmm1  #  3     0x7   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm2, %xmm3, %xmm2      #  4     0xb   4      OPC=vmovss_xmm_xmm_xmm     
  movsd %xmm2, %xmm1              #  5     0xf   4      OPC=movsd_xmm_xmm          
  retq                            #  6     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
