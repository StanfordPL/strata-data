  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label              
  callq .move_064_128_r12_r13_xmm2    #  2     0x5   5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm8_xmm9   #  3     0xa   5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm2, %xmm9     #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label              
  callq .move_64_128_xmm8_xmm9_xmm1   #  6     0x18  5      OPC=callq_label              
  retq                                #  7     0x1d  1      OPC=retq                     
                                                                                         
.size target, .-target
