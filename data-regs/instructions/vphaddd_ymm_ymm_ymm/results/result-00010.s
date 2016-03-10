  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label        
  phaddd %xmm3, %xmm8                   #  3     0xa   6      OPC=phaddd_xmm_xmm     
  phaddd %xmm11, %xmm9                  #  4     0x10  6      OPC=phaddd_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm2    #  5     0x16  5      OPC=callq_label        
  vorps %ymm2, %ymm2, %ymm1             #  6     0x1b  4      OPC=vorps_ymm_ymm_ymm  
  retq                                  #  7     0x1f  1      OPC=retq               
                                                                                     
.size target, .-target
