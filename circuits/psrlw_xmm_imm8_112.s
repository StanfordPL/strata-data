  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorpd %xmm11, %xmm11, %xmm11  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  cvtdq2pd %xmm11, %xmm1         #  2     0x5  5      OPC=cvtdq2pd_xmm_xmm    
  retq                           #  3     0xa  1      OPC=retq                
                                                                              
.size target, .-target
