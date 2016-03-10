  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  movsldup %xmm1, %xmm4                 #  1     0     4      OPC=movsldup_xmm_xmm      
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  vpbroadcastd %xmm4, %ymm9             #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm  
  vpmovzxwq %xmm9, %xmm1                #  4     0xe   5      OPC=vpmovzxwq_xmm_xmm     
  movaps %xmm11, %xmm1                  #  5     0x13  4      OPC=movaps_xmm_xmm        
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
