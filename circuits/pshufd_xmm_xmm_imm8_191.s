  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovsd %xmm11, %xmm10, %xmm5                    #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm      
  vmovsd %xmm5, %xmm10, %xmm15                    #  3     0xa   4      OPC=vmovsd_xmm_xmm_xmm      
  vpmovzxdq %xmm10, %ymm7                         #  4     0xe   5      OPC=vpmovzxdq_ymm_xmm       
  vpunpckldq %ymm7, %ymm15, %ymm11                #  5     0x13  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpbroadcastd %xmm11, %ymm10                     #  6     0x17  5      OPC=vpbroadcastd_ymm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1             #  7     0x1c  5      OPC=callq_label             
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
