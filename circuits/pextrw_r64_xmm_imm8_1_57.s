  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm8, %xmm2                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx             #  4     0xf   5      OPC=callq_label        
  retq                                          #  5     0x14  1      OPC=retq               
                                                                                             
.size target, .-target
