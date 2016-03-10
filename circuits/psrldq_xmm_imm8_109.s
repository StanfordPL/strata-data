  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  cvtpd2ps %xmm1, %xmm1        #  1     0    4      OPC=cvtpd2ps_xmm_xmm     
  vsqrtss %xmm1, %xmm1, %xmm5  #  2     0x4  4      OPC=vsqrtss_xmm_xmm_xmm  
  vaddpd %xmm1, %xmm5, %xmm7   #  3     0x8  4      OPC=vaddpd_xmm_xmm_xmm   
  movhlps %xmm7, %xmm1         #  4     0xc  3      OPC=movhlps_xmm_xmm      
  retq                         #  5     0xf  1      OPC=retq                 
                                                                             
.size target, .-target
