  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_256_128_ymm2_xmm10_xmm11          #  1     0     5      OPC=callq_label     
  callq .move_256_128_ymm3_xmm8_xmm9            #  2     0x5   5      OPC=callq_label     
  phaddd %xmm9, %xmm11                          #  3     0xa   6      OPC=phaddd_xmm_xmm  
  phaddd %xmm8, %xmm2                           #  4     0x10  6      OPC=phaddd_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x16  5      OPC=callq_label     
  callq .move_128_256_xmm10_xmm11_ymm1          #  6     0x1b  5      OPC=callq_label     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x20  5      OPC=callq_label     
  retq                                          #  8     0x25  1      OPC=retq            
                                                                                          
.size target, .-target
