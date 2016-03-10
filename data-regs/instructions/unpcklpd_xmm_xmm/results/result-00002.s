  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm8_xmm9_ymm2              #  2     0x5   5      OPC=callq_label         
  vminps %ymm2, %ymm2, %ymm3                      #  3     0xa   4      OPC=vminps_ymm_ymm_ymm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  callq .move_256_128_ymm3_xmm10_xmm11            #  5     0x13  5      OPC=callq_label         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label         
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
