  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vpmovzxdq %xmm3, %ymm1              #  1     0     5      OPC=vpmovzxdq_ymm_xmm    
  movupd %xmm3, %xmm9                 #  2     0x5   5      OPC=movupd_xmm_xmm       
  vphaddd %ymm1, %ymm2, %ymm4         #  3     0xa   5      OPC=vphaddd_ymm_ymm_ymm  
  rcpps %xmm4, %xmm8                  #  4     0xf   4      OPC=rcpps_xmm_xmm        
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label          
  movaps %xmm2, %xmm1                 #  6     0x18  3      OPC=movaps_xmm_xmm       
  retq                                #  7     0x1b  1      OPC=retq                 
                                                                                     
.size target, .-target
