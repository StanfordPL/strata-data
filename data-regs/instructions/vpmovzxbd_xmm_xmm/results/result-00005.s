  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxbq %xmm2, %ymm1                #  1     0     5      OPC=vpmovzxbq_ymm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vorpd %xmm1, %xmm1, %xmm1             #  3     0xa   4      OPC=vorpd_xmm_xmm_xmm  
  haddps %xmm11, %xmm1                  #  4     0xe   5      OPC=haddps_xmm_xmm     
  retq                                  #  5     0x13  1      OPC=retq               
                                                                                     
.size target, .-target
