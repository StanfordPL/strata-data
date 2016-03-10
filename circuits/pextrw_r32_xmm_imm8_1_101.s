  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm13, %ymm10             #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm    
  vphaddd %xmm1, %xmm10, %xmm11        #  3     0xa   5      OPC=vphaddd_xmm_xmm_xmm  
  punpckhdq %xmm11, %xmm10             #  4     0xf   5      OPC=punpckhdq_xmm_xmm    
  movd %xmm10, %ebx                    #  5     0x14  5      OPC=movd_r32_xmm         
  retq                                 #  6     0x19  1      OPC=retq                 
                                                                                      
.size target, .-target
