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
  vpbroadcastw %xmm10, %ymm10                     #  3     0xa   5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label           
  callq .move_r9b_to_byte_12_of_ymm1              #  5     0x14  5      OPC=callq_label           
  callq .move_byte_9_of_ymm1_to_r9b               #  6     0x19  5      OPC=callq_label           
  callq .move_r9b_to_byte_13_of_ymm1              #  7     0x1e  5      OPC=callq_label           
  retq                                            #  8     0x23  1      OPC=retq                  
                                                                                                  
.size target, .-target
