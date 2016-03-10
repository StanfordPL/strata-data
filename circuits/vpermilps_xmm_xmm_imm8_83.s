  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label         
  vpmovzxdq %xmm2, %ymm4                        #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm   
  vmovd %r13d, %xmm1                            #  3     0xa   5      OPC=vmovd_xmm_r32       
  vmovsldup %xmm4, %xmm5                        #  4     0xf   4      OPC=vmovsldup_xmm_xmm   
  vmovss %xmm1, %xmm5, %xmm1                    #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
