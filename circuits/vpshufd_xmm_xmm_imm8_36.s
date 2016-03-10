  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovdqu %xmm8, %xmm5                            #  2     0x5   5      OPC=vmovdqu_xmm_xmm    
  vpmovzxbq %xmm10, %xmm1                         #  3     0xa   5      OPC=vpmovzxbq_xmm_xmm  
  vmovddup %ymm5, %ymm11                          #  4     0xf   4      OPC=vmovddup_ymm_ymm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label        
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
