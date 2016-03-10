  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vxorpd %xmm12, %xmm12, %xmm3  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  pmovzxbd %xmm3, %xmm5         #  2     0x5  5      OPC=pmovzxbd_xmm_xmm    
  cvtpd2ps %xmm5, %xmm1         #  3     0xa  4      OPC=cvtpd2ps_xmm_xmm    
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target
