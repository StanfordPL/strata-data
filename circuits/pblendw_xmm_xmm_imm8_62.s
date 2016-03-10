  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vxorps %xmm2, %xmm1, %xmm13                   #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm      
  callq .move_128_64_xmm1_xmm10_xmm11           #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %xmm10, %xmm2, %xmm6               #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movshdup %xmm2, %xmm5                         #  5     0x13  4      OPC=movshdup_xmm_xmm        
  vpmovzxwq %xmm13, %ymm15                      #  6     0x17  5      OPC=vpmovzxwq_ymm_xmm       
  vxorpd %xmm2, %xmm15, %xmm4                   #  7     0x1c  4      OPC=vxorpd_xmm_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x20  5      OPC=callq_label             
  retq                                          #  9     0x25  1      OPC=retq                    
                                                                                                  
.size target, .-target
