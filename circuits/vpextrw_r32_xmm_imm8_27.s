  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  movapd %xmm1, %xmm2                           #  1     0     4      OPC=movapd_xmm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label        
  vpmovzxwq %xmm5, %xmm3                        #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  4     0xe   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx             #  5     0x13  5      OPC=callq_label        
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
