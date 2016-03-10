  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm2, %ymm8          #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpbroadcastq %xmm9, %ymm4          #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpcklqdq %ymm8, %ymm4, %ymm1    #  4     0xf   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  5     0x14  1      OPC=retq                     
                                                                                        
.size target, .-target
