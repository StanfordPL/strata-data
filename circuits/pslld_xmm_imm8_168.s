  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vmovdqa %xmm1, %xmm7         #  1     0     4      OPC=vmovdqa_xmm_xmm      
  vmaxps %ymm7, %ymm7, %ymm13  #  2     0x4   4      OPC=vmaxps_ymm_ymm_ymm   
  vpor %xmm13, %xmm1, %xmm5    #  3     0x8   5      OPC=vpor_xmm_xmm_xmm     
  vandnpd %xmm5, %xmm7, %xmm0  #  4     0xd   4      OPC=vandnpd_xmm_xmm_xmm  
  cvtdq2pd %xmm0, %xmm1        #  5     0x11  4      OPC=cvtdq2pd_xmm_xmm     
  retq                         #  6     0x15  1      OPC=retq                 
                                                                              
.size target, .-target
