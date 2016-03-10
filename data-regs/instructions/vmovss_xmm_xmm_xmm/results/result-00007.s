  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm4, %xmm9, %xmm1                 #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpbroadcastq %xmm3, %xmm8                       #  4     0xe   5      OPC=vpbroadcastq_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  5     0x13  5      OPC=callq_label              
  callq .move_128_064_xmm2_r10_r11                #  6     0x18  5      OPC=callq_label              
  callq .move_064_128_r10_r11_xmm1                #  7     0x1d  5      OPC=callq_label              
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
