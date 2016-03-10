  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm8, %xmm9, %xmm8       #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vpmovzxdq %xmm8, %ymm12             #  3     0xa   5      OPC=vpmovzxdq_ymm_xmm      
  vphaddd %ymm12, %ymm12, %ymm1       #  4     0xf   5      OPC=vphaddd_ymm_ymm_ymm    
  retq                                #  5     0x14  1      OPC=retq                   
                                                                                       
.size target, .-target
