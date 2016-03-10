  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %xmm1, %xmm2, %xmm13   #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm   
  andnpd %xmm1, %xmm1              #  2     0x4   4      OPC=andnpd_xmm_xmm          
  vpunpckhdq %xmm13, %xmm1, %xmm7  #  3     0x8   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movapd %xmm7, %xmm1              #  4     0xd   4      OPC=movapd_xmm_xmm          
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
