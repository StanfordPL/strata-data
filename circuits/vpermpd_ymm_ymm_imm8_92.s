  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vmovapd %xmm2, %xmm4                  #  1     0     4      OPC=vmovapd_xmm_xmm      
  vpmovzxdq %xmm4, %ymm0                #  2     0x4   5      OPC=vpmovzxdq_ymm_xmm    
  vphaddd %ymm0, %ymm0, %ymm3           #  3     0x9   5      OPC=vphaddd_ymm_ymm_ymm  
  vmovdqa %ymm3, %ymm1                  #  4     0xe   4      OPC=vmovdqa_ymm_ymm      
  callq .move_256_128_ymm2_xmm12_xmm13  #  5     0x12  5      OPC=callq_label          
  unpckhpd %xmm13, %xmm1                #  6     0x17  5      OPC=unpckhpd_xmm_xmm     
  retq                                  #  7     0x1c  1      OPC=retq                 
                                                                                       
.size target, .-target
