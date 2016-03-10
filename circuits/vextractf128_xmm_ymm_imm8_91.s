  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm8_xmm9    #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  movhlps %xmm9, %xmm10                 #  3     0xa   4      OPC=movhlps_xmm_xmm          
  vpunpcklqdq %xmm10, %xmm9, %xmm1      #  4     0xe   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
