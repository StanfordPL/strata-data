  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vpmovzxdq %xmm3, %ymm7     #  1     0     5      OPC=vpmovzxdq_ymm_xmm  
  hsubps %xmm3, %xmm2        #  2     0x5   4      OPC=hsubps_xmm_xmm     
  andnpd %xmm7, %xmm7        #  3     0x9   4      OPC=andnpd_xmm_xmm     
  vorps %xmm7, %xmm2, %xmm1  #  4     0xd   4      OPC=vorps_xmm_xmm_xmm  
  retq                       #  5     0x11  1      OPC=retq               
                                                                          
.size target, .-target
