  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  xorps %xmm1, %xmm1       #  1     0    3      OPC=xorps_xmm_xmm      
  vcvtps2dq %xmm1, %xmm14  #  2     0x3  4      OPC=vcvtps2dq_xmm_xmm  
  cvtpd2ps %xmm14, %xmm1   #  3     0x7  5      OPC=cvtpd2ps_xmm_xmm   
  retq                     #  4     0xc  1      OPC=retq               
                                                                       
.size target, .-target
