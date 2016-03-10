  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm8, %ymm2          #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vbroadcastsd %xmm9, %ymm4          #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm2  #  4     0xf   5      OPC=callq_label              
  vpunpckhqdq %ymm4, %ymm2, %ymm1    #  5     0x14  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
