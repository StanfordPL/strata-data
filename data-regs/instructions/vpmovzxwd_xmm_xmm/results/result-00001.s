  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm9, %xmm1                          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  vpmovzxwq %xmm8, %xmm5                          #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm    
  vhaddps %ymm1, %ymm5, %ymm1                     #  4     0xf   4      OPC=vhaddps_ymm_ymm_ymm  
  retq                                            #  5     0x13  1      OPC=retq                 
                                                                                                 
.size target, .-target
