  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vpmovzxdq %xmm1, %ymm9           #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vsubpd %ymm9, %ymm9, %ymm13      #  2     0x5   5      OPC=vsubpd_ymm_ymm_ymm     
  vunpcklpd %xmm13, %xmm13, %xmm4  #  3     0xa   5      OPC=vunpcklpd_xmm_xmm_xmm  
  cvtdq2pd %xmm4, %xmm1            #  4     0xf   4      OPC=cvtdq2pd_xmm_xmm       
  retq                             #  5     0x13  1      OPC=retq                   
                                                                                    
.size target, .-target
