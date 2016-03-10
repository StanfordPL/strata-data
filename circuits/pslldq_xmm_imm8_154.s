  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  cvtdq2pd %xmm1, %xmm5          #  1     0     4      OPC=cvtdq2pd_xmm_xmm     
  vminpd %xmm5, %xmm1, %xmm11    #  2     0x4   4      OPC=vminpd_xmm_xmm_xmm   
  vandnpd %xmm11, %xmm11, %xmm2  #  3     0x8   5      OPC=vandnpd_xmm_xmm_xmm  
  pmovzxbd %xmm2, %xmm1          #  4     0xd   5      OPC=pmovzxbd_xmm_xmm     
  retq                           #  5     0x12  1      OPC=retq                 
                                                                                
.size target, .-target
