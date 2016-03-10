  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpmovzxwd %xmm2, %ymm0     #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  vorpd %xmm0, %xmm0, %xmm1  #  2     0x5  4      OPC=vorpd_xmm_xmm_xmm  
  vpmovzxdq %xmm1, %ymm1     #  3     0x9  5      OPC=vpmovzxdq_ymm_xmm  
  retq                       #  4     0xe  1      OPC=retq               
                                                                         
.size target, .-target
