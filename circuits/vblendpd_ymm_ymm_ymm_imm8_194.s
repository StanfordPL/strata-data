  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_64_xmm3_xmm8_xmm9     #  1     0     5      OPC=callq_label      
  movlhps %xmm9, %xmm2                  #  2     0x5   4      OPC=movlhps_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label      
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                  #  5     0x13  1      OPC=retq             
                                                                                   
.size target, .-target
