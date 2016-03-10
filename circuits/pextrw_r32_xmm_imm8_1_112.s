  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                 
.target:                                        #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm1                        #  1     0    5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5  5      OPC=callq_label        
  callq .move_032_064_r10d_r11d_rbx             #  3     0xa  5      OPC=callq_label        
  retq                                          #  4     0xf  1      OPC=retq               
                                                                                            
.size target, .-target
