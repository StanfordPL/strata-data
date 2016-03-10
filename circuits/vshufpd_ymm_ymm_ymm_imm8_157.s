  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm1     #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vmovddup %ymm3, %ymm10              #  3     0x9   4      OPC=vmovddup_ymm_ymm         
  movlhps %xmm10, %xmm8               #  4     0xd   4      OPC=movlhps_xmm_xmm          
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x11  5      OPC=callq_label              
  retq                                #  6     0x16  1      OPC=retq                     
                                                                                         
.size target, .-target
