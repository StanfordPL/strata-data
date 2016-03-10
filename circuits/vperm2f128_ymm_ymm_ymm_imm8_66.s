  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label      
  vmovdqa %xmm2, %xmm9                #  2     0x5   4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x9   5      OPC=callq_label      
  callq .move_128_064_xmm3_r10_r11    #  4     0xe   5      OPC=callq_label      
  callq .move_064_128_r10_r11_xmm1    #  5     0x13  5      OPC=callq_label      
  retq                                #  6     0x18  1      OPC=retq             
                                                                                 
.size target, .-target
