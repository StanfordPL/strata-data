  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm12    #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vpmovzxdq %xmm2, %ymm1        #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm     
  vpmovzxdq %xmm12, %ymm13      #  3     0xa   5      OPC=vpmovzxdq_ymm_xmm     
  vphaddd %ymm13, %ymm1, %ymm1  #  4     0xf   5      OPC=vphaddd_ymm_ymm_ymm   
  retq                          #  5     0x14  1      OPC=retq                  
                                                                                
.size target, .-target
