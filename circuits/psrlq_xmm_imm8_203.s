  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  cvtpd2ps %xmm1, %xmm13   #  1     0    5      OPC=cvtpd2ps_xmm_xmm   
  punpckhdq %xmm13, %xmm1  #  2     0x5  5      OPC=punpckhdq_xmm_xmm  
  subpd %xmm1, %xmm1       #  3     0xa  4      OPC=subpd_xmm_xmm      
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
