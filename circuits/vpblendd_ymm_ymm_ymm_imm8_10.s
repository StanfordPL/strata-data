  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm12_xmm13            #  2     0x5   5      OPC=callq_label              
  callq .move_128_256_xmm12_xmm13_ymm1            #  3     0xa   5      OPC=callq_label              
  vpunpckhqdq %ymm3, %ymm2, %ymm10                #  4     0xf   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqu %ymm2, %ymm8                            #  5     0x13  4      OPC=vmovdqu_ymm_ymm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label              
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
