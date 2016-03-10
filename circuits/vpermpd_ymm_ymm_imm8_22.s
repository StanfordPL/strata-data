  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpmovzxdq %xmm2, %ymm1              #  1     0     5      OPC=vpmovzxdq_ymm_xmm        
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label              
  vphsubd %ymm1, %ymm1, %ymm4         #  3     0xa   5      OPC=vphsubd_ymm_ymm_ymm      
  callq .move_128_256_xmm8_xmm9_ymm3  #  4     0xf   5      OPC=callq_label              
  movsd %xmm9, %xmm8                  #  5     0x14  5      OPC=movsd_xmm_xmm            
  vpunpckhqdq %ymm4, %ymm3, %ymm9     #  6     0x19  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  7     0x1d  5      OPC=callq_label              
  retq                                #  8     0x22  1      OPC=retq                     
                                                                                         
.size target, .-target
