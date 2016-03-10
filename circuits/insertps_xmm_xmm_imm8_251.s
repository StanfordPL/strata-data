  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  sqrtpd %xmm2, %xmm4             #  1     0     4      OPC=sqrtpd_xmm_xmm         
  vandnps %xmm4, %xmm4, %xmm4     #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm    
  vunpckhps %xmm1, %xmm4, %xmm15  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  movaps %xmm15, %xmm15           #  4     0xc   4      OPC=movaps_xmm_xmm         
  vpmovzxdq %xmm15, %ymm4         #  5     0x10  5      OPC=vpmovzxdq_ymm_xmm      
  movapd %xmm4, %xmm1             #  6     0x15  4      OPC=movapd_xmm_xmm         
  retq                            #  7     0x19  1      OPC=retq                   
                                                                                   
.size target, .-target
