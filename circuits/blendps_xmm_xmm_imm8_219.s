  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpbroadcastq %xmm13, %xmm0           #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckldq %ymm0, %ymm0, %ymm8       #  3     0xa   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %xmm8, %xmm1, %xmm13       #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label             
  retq                                 #  6     0x18  1      OPC=retq                    
                                                                                         
.size target, .-target
