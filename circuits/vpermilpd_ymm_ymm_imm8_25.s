  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vorpd %ymm2, %ymm2, %ymm1       #  1     0     4      OPC=vorpd_ymm_ymm_ymm      
  vpmovzxdq %xmm2, %xmm10         #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm      
  vunpcklpd %xmm2, %xmm10, %xmm2  #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  punpckhqdq %xmm2, %xmm1         #  4     0xd   4      OPC=punpckhqdq_xmm_xmm     
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
