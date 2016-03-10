  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movddup %xmm3, %xmm11        #  1     0     5      OPC=movddup_xmm_xmm     
  vmovss %xmm2, %xmm2, %xmm0   #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm  
  vpmovzxdq %xmm11, %xmm13     #  3     0x9   5      OPC=vpmovzxdq_xmm_xmm   
  vmaxps %xmm13, %xmm0, %xmm2  #  4     0xe   5      OPC=vmaxps_xmm_xmm_xmm  
  vmovss %xmm2, %xmm0, %xmm1   #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm  
  retq                         #  6     0x17  1      OPC=retq                
                                                                             
.size target, .-target
