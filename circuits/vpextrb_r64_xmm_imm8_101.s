  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovzxbq %xmm5, %xmm1                         #  2     0x5   5      OPC=pmovzxbq_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label       
  callq .move_032_064_r12d_r13d_rbx             #  4     0xf   5      OPC=callq_label       
  retq                                          #  5     0x14  1      OPC=retq              
                                                                                            
.size target, .-target
