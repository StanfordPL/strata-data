  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  pmovzxwq %xmm11, %xmm12      #  2     0x4  6      OPC=pmovzxwq_xmm_xmm    
  cvtpd2ps %xmm12, %xmm1       #  3     0xa  5      OPC=cvtpd2ps_xmm_xmm    
  retq                         #  4     0xf  1      OPC=retq                
                                                                            
.size target, .-target
