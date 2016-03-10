  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %ymm3, %ymm2, %ymm1    #  2     0x5   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm1, %ymm2, %ymm8    #  3     0x9   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xd   5      OPC=callq_label              
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
