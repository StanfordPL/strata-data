  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vandnpd %xmm1, %xmm1, %xmm7  #  1     0     4      OPC=vandnpd_xmm_xmm_xmm  
  vsqrtpd %xmm7, %xmm5         #  2     0x4   4      OPC=vsqrtpd_xmm_xmm      
  vcvttpd2dq %ymm5, %xmm8      #  3     0x8   4      OPC=vcvttpd2dq_xmm_ymm   
  cvtdq2pd %xmm8, %xmm1        #  4     0xc   5      OPC=cvtdq2pd_xmm_xmm     
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
