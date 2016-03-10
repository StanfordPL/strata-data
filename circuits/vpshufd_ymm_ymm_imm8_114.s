  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpmovzxwq %xmm10, %ymm8                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm        
  vpunpckhqdq %ymm8, %ymm2, %ymm1                 #  3     0xa   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm1, %ymm1                   #  4     0xf   4      OPC=vunpcklps_ymm_ymm_ymm    
  retq                                            #  5     0x13  1      OPC=retq                     
                                                                                                     
.size target, .-target
