  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm11, %xmm13, %xmm1    #  3     0xa   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_byte_16_of_ymm1_to_r8b   #  4     0xf   5      OPC=callq_label              
  callq .move_r8b_to_byte_30_of_ymm1   #  5     0x14  5      OPC=callq_label              
  retq                                 #  6     0x19  1      OPC=retq                     
                                                                                          
.size target, .-target
