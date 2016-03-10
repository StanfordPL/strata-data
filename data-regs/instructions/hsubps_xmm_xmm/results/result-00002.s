  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpunpckldq %xmm2, %xmm1, %xmm10      #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckhdq %xmm2, %xmm1, %xmm7       #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm7, %xmm10, %xmm6       #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm   
  vmaxss %xmm6, %xmm2, %xmm9           #  4     0xc   4      OPC=vmaxss_xmm_xmm_xmm      
  vunpcklps %xmm7, %xmm10, %xmm12      #  5     0x10  4      OPC=vunpcklps_xmm_xmm_xmm   
  vsubps %ymm6, %ymm12, %ymm12         #  6     0x14  4      OPC=vsubps_ymm_ymm_ymm      
  vunpckhpd %xmm9, %xmm12, %xmm13      #  7     0x18  5      OPC=vunpckhpd_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  8     0x1d  5      OPC=callq_label             
  retq                                 #  9     0x22  1      OPC=retq                    
                                                                                         
.size target, .-target
