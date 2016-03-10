  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vpmovzxdq %xmm2, %xmm6             #  1     0     5      OPC=vpmovzxdq_xmm_xmm      
  vunpckhps %xmm6, %xmm2, %xmm9      #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vbroadcastss %xmm2, %xmm13         #  3     0x9   5      OPC=vbroadcastss_xmm_xmm   
  vmovapd %xmm9, %xmm8               #  4     0xe   5      OPC=vmovapd_xmm_xmm        
  vunpckhpd %ymm13, %ymm13, %ymm9    #  5     0x13  5      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x18  5      OPC=callq_label            
  retq                               #  7     0x1d  1      OPC=retq                   
                                                                                      
.size target, .-target
