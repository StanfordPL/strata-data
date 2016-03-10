  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vpmovzxbq %xmm3, %ymm13                       #  1     0     5      OPC=vpmovzxbq_ymm_xmm    
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label          
  callq .move_128_64_xmm2_xmm10_xmm11           #  3     0xa   5      OPC=callq_label          
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  4     0xf   5      OPC=callq_label          
  vhaddpd %xmm13, %xmm10, %xmm4                 #  5     0x14  5      OPC=vhaddpd_xmm_xmm_xmm  
  vmovd %r13d, %xmm7                            #  6     0x19  5      OPC=vmovd_xmm_r32        
  vcvttpd2dq %ymm4, %xmm1                       #  7     0x1e  4      OPC=vcvttpd2dq_xmm_ymm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x22  5      OPC=callq_label          
  retq                                          #  9     0x27  1      OPC=retq                 
                                                                                               
.size target, .-target
