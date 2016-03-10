  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm11  #  1     0    5      OPC=vpmovzxwq_ymm_xmm  
  cvtpd2ps %xmm11, %xmm1   #  2     0x5  5      OPC=cvtpd2ps_xmm_xmm   
  unpckhpd %xmm1, %xmm1    #  3     0xa  4      OPC=unpckhpd_xmm_xmm   
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
