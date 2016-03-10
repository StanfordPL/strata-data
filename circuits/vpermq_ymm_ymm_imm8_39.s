  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label              
  vandps %xmm8, %xmm10, %xmm13          #  3     0xa   5      OPC=vandps_xmm_xmm_xmm       
  movlhps %xmm13, %xmm11                #  4     0xf   4      OPC=movlhps_xmm_xmm          
  vpunpckhqdq %xmm2, %xmm9, %xmm10      #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label              
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
