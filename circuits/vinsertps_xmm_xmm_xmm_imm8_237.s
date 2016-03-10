  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %xmm12                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovshdup %ymm12, %ymm1                         #  3     0xa   5      OPC=vmovshdup_ymm_ymm  
  callq .move_128_064_xmm1_r8_r9                  #  4     0xf   5      OPC=callq_label        
  callq .move_r8b_to_byte_30_of_ymm1              #  5     0x14  5      OPC=callq_label        
  punpckldq %xmm9, %xmm1                          #  6     0x19  5      OPC=punpckldq_xmm_xmm  
  retq                                            #  7     0x1e  1      OPC=retq               
                                                                                               
.size target, .-target
