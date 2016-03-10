  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxbd %xmm1, %xmm1                        #  1     0     5      OPC=vpmovzxbd_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  vpmovzxbq %xmm6, %ymm1                        #  3     0xa   5      OPC=vpmovzxbq_ymm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0xf   5      OPC=callq_label        
  callq .move_032_064_r10d_r11d_rbx             #  5     0x14  5      OPC=callq_label        
  retq                                          #  6     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
