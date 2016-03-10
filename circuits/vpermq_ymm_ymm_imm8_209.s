  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm9, %ymm11         #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm2, %ymm11, %ymm1   #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  punpcklqdq %xmm8, %xmm1            #  4     0xe   5      OPC=punpcklqdq_xmm_xmm       
  retq                               #  5     0x13  1      OPC=retq                     
                                                                                        
.size target, .-target
