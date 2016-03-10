  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                 
.target:                       #        0    0      OPC=<label>            
  vpmovzxwd %xmm2, %xmm1       #  1     0    5      OPC=vpmovzxwd_xmm_xmm  
  vpmovzxwd %xmm1, %ymm10      #  2     0x5  5      OPC=vpmovzxwd_ymm_xmm  
  vorpd %ymm10, %ymm10, %ymm1  #  3     0xa  5      OPC=vorpd_ymm_ymm_ymm  
  retq                         #  4     0xf  1      OPC=retq               
                                                                           
.size target, .-target
