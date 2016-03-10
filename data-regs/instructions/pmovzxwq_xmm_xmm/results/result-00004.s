  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm8, %xmm3                          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9               #  3     0xa   5      OPC=callq_label        
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xf   5      OPC=callq_label        
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
