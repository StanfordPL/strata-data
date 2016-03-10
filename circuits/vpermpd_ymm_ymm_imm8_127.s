  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  movdqa %xmm2, %xmm3                   #  1     0     4      OPC=movdqa_xmm_xmm           
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vpunpckhqdq %xmm13, %xmm13, %xmm8     #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vbroadcastsd %xmm8, %ymm8             #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %xmm3, %xmm8, %xmm9       #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x17  5      OPC=callq_label              
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
