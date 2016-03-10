  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpmovzxdq %xmm1, %ymm9                #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vunpckhpd %ymm9, %ymm9, %ymm2         #  2     0x5   5      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  callq .move_64_128_xmm10_xmm11_xmm1   #  4     0xf   5      OPC=callq_label            
  retq                                  #  5     0x14  1      OPC=retq                   
                                                                                         
.size target, .-target
