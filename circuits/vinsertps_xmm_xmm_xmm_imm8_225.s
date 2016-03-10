  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label                 
  vfmaddsub213pd %xmm7, %xmm7, %xmm10             #  3     0xa   5      OPC=vfmaddsub213pd_xmm_xmm_xmm  
  vpbroadcastw %xmm2, %xmm1                       #  4     0xf   5      OPC=vpbroadcastw_xmm_xmm        
  vcvttpd2dq %xmm9, %xmm8                         #  5     0x14  5      OPC=vcvttpd2dq_xmm_xmm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label                 
  retq                                            #  7     0x1e  1      OPC=retq                        
                                                                                                        
.size target, .-target
