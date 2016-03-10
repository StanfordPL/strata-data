  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm12_xmm13             #  2     0x5   5      OPC=callq_label           
  vmovss %xmm11, %xmm1, %xmm12                    #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm    
  vpmovzxdq %xmm13, %ymm14                        #  4     0xf   5      OPC=vpmovzxdq_ymm_xmm     
  vmovlhps %xmm14, %xmm14, %xmm13                 #  5     0x14  5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x19  5      OPC=callq_label           
  retq                                            #  7     0x1e  1      OPC=retq                  
                                                                                                  
.size target, .-target
