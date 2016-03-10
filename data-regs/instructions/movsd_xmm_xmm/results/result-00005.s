  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm1, %xmm8, %xmm12     #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label              
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
