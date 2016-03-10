  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  cvtps2pd %xmm2, %xmm3    #  1     0    3      OPC=cvtps2pd_xmm_xmm    
  cvtpd2ps %xmm3, %xmm1    #  2     0x3  4      OPC=cvtpd2ps_xmm_xmm    
  punpckhqdq %xmm1, %xmm1  #  3     0x7  4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  4     0xb  1      OPC=retq                
                                                                        
.size target, .-target
