  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vpmovzxdq %xmm2, %xmm1                          #  1     0     5      OPC=vpmovzxdq_xmm_xmm   
  vminps %ymm1, %ymm1, %ymm8                      #  2     0x5   4      OPC=vminps_ymm_ymm_ymm  
  vmaxpd %ymm1, %ymm8, %ymm9                      #  3     0x9   4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_byte_2_of_ymm1_to_r8b               #  4     0xd   5      OPC=callq_label         
  callq .move_64_128_xmm8_xmm9_xmm3               #  5     0x12  5      OPC=callq_label         
  callq .move_128_64_xmm3_xmm10_xmm11             #  6     0x17  5      OPC=callq_label         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label         
  callq .move_r8b_to_byte_14_of_ymm1              #  8     0x21  5      OPC=callq_label         
  retq                                            #  9     0x26  1      OPC=retq                
                                                                                                
.size target, .-target
