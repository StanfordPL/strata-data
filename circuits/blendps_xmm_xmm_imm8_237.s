  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_byte_14_of_ymm1_to_r8b              #  1     0     5      OPC=callq_label        
  callq .move_r8b_to_byte_11_of_ymm1              #  2     0x5   5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xf   5      OPC=callq_label        
  vpmovzxdq %xmm9, %ymm5                          #  5     0x14  5      OPC=vpmovzxdq_ymm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  6     0x19  5      OPC=callq_label        
  retq                                            #  7     0x1e  1      OPC=retq               
                                                                                               
.size target, .-target
