  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpmovzxbq %xmm2, %xmm9           #  1     0    5      OPC=vpmovzxbq_xmm_xmm        
  vfmsub231ps %xmm2, %xmm9, %xmm3  #  2     0x5  5      OPC=vfmsub231ps_xmm_xmm_xmm  
  vaddss %xmm3, %xmm2, %xmm1       #  3     0xa  4      OPC=vaddss_xmm_xmm_xmm       
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
