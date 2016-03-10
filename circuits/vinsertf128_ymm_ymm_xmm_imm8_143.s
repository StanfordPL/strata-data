  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_256_128_ymm2_xmm8_xmm9   #  2     0x5   5      OPC=callq_label       
  movaps %xmm3, %xmm9                  #  3     0xa   4      OPC=movaps_xmm_xmm    
  unpcklpd %xmm11, %xmm9               #  4     0xe   5      OPC=unpcklpd_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1   #  5     0x13  5      OPC=callq_label       
  retq                                 #  6     0x18  1      OPC=retq              
                                                                                   
.size target, .-target
