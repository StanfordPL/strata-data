  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  callq .move_128_256_xmm8_xmm9_ymm1              #  3     0xa   5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1               #  4     0xf   5      OPC=callq_label           
  callq .move_byte_1_of_ymm1_to_r8b               #  5     0x14  5      OPC=callq_label           
  callq .move_r8b_to_byte_3_of_ymm1               #  6     0x19  5      OPC=callq_label           
  vbroadcastss %xmm1, %ymm1                       #  7     0x1e  5      OPC=vbroadcastss_ymm_xmm  
  callq .move_r8b_to_byte_19_of_ymm1              #  8     0x23  5      OPC=callq_label           
  retq                                            #  9     0x28  1      OPC=retq                  
                                                                                                  
.size target, .-target
