  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vpmovzxdq %xmm3, %ymm14          #  1     0    5      OPC=vpmovzxdq_ymm_xmm      
  vunpcklpd %xmm14, %xmm14, %xmm0  #  2     0x5  5      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovss %xmm2, %xmm0, %xmm1       #  3     0xa  4      OPC=vmovss_xmm_xmm_xmm     
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
