  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm10_xmm11   #  1     0     5      OPC=callq_label         
  vpmovzxbq %xmm10, %ymm8               #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0xa   5      OPC=callq_label         
  vandpd %ymm1, %ymm8, %ymm6            #  4     0xf   4      OPC=vandpd_ymm_ymm_ymm  
  vorps %xmm6, %xmm3, %xmm1             #  5     0x13  4      OPC=vorps_xmm_xmm_xmm   
  callq .move_256_128_ymm2_xmm8_xmm9    #  6     0x17  5      OPC=callq_label         
  vpand %ymm1, %ymm1, %ymm9             #  7     0x1c  4      OPC=vpand_ymm_ymm_ymm   
  callq .move_128_256_xmm8_xmm9_ymm1    #  8     0x20  5      OPC=callq_label         
  retq                                  #  9     0x25  1      OPC=retq                
                                                                                      
.size target, .-target
