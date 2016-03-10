  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm10_xmm11           #  1     0     5      OPC=callq_label         
  vmovss %xmm11, %xmm1, %xmm2                   #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  vmovupd %ymm2, %ymm5                          #  3     0xa   4      OPC=vmovupd_ymm_ymm     
  vpmovzxwq %xmm5, %xmm3                        #  4     0xe   5      OPC=vpmovzxwq_xmm_xmm   
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  5     0x13  5      OPC=callq_label         
  callq .move_032_064_r12d_r13d_rbx             #  6     0x18  5      OPC=callq_label         
  retq                                          #  7     0x1d  1      OPC=retq                
                                                                                              
.size target, .-target
