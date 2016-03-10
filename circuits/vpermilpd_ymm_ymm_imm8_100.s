  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpmovzxbq %xmm7, %ymm0                        #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm        
  vpunpckhqdq %ymm0, %ymm2, %ymm10              #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm10_xmm11           #  4     0xe   5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm10, %ymm1              #  5     0x13  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
