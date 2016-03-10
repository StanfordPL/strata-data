  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label     
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label     
  phaddd %xmm3, %xmm12                  #  3     0xa   6      OPC=phaddd_xmm_xmm  
  movupd %xmm11, %xmm14                 #  4     0x10  5      OPC=movupd_xmm_xmm  
  phaddd %xmm14, %xmm13                 #  5     0x15  6      OPC=phaddd_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x1b  5      OPC=callq_label     
  retq                                  #  7     0x20  1      OPC=retq            
                                                                                  
.size target, .-target
