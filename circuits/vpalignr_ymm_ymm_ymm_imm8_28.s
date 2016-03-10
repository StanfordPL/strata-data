  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_256_128_ymm2_xmm12_xmm13            #  2     0x5   5      OPC=callq_label             
  vpmovzxdq %xmm13, %ymm1                         #  3     0xa   5      OPC=vpmovzxdq_ymm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1             #  4     0xf   5      OPC=callq_label             
  vmaxss %xmm12, %xmm11, %xmm8                    #  5     0x14  5      OPC=vmaxss_xmm_xmm_xmm      
  vpunpckhdq %ymm8, %ymm1, %ymm1                  #  6     0x19  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                                            #  7     0x1e  1      OPC=retq                    
                                                                                                    
.size target, .-target
