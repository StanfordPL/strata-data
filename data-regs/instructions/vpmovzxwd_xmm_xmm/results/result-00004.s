  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label          
  movd %r11d, %xmm0                             #  2     0x5   5      OPC=movd_xmm_r32         
  callq .move_128_64_xmm2_xmm12_xmm13           #  3     0xa   5      OPC=callq_label          
  vpmovzxwq %xmm0, %xmm1                        #  4     0xf   5      OPC=vpmovzxwq_xmm_xmm    
  vpmovzxwq %xmm12, %xmm0                       #  5     0x14  5      OPC=vpmovzxwq_xmm_xmm    
  vhsubps %ymm1, %ymm0, %ymm1                   #  6     0x19  4      OPC=vhsubps_ymm_ymm_ymm  
  retq                                          #  7     0x1d  1      OPC=retq                 
                                                                                               
.size target, .-target
