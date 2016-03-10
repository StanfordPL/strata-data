  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovzxwq %xmm1, %ymm15         #  1     0     5      OPC=vpmovzxwq_ymm_xmm      
  vmovshdup %xmm15, %xmm3         #  2     0x5   5      OPC=vmovshdup_xmm_xmm      
  vunpcklpd %xmm15, %xmm3, %xmm6  #  3     0xa   5      OPC=vunpcklpd_xmm_xmm_xmm  
  cvtdq2pd %xmm6, %xmm1           #  4     0xf   4      OPC=cvtdq2pd_xmm_xmm       
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
