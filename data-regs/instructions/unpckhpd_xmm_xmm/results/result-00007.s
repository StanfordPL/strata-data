  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm8_xmm9    #  1     0     5      OPC=callq_label      
  callq .move_128_256_xmm8_xmm9_ymm3   #  2     0x5   5      OPC=callq_label      
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label      
  callq .move_256_128_ymm3_xmm8_xmm9   #  4     0xf   5      OPC=callq_label      
  vmovapd %xmm9, %xmm12                #  5     0x14  5      OPC=vmovapd_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x19  5      OPC=callq_label      
  retq                                 #  7     0x1e  1      OPC=retq             
                                                                                  
.size target, .-target
