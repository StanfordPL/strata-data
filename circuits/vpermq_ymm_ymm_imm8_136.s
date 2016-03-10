  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovddup %xmm12, %xmm11               #  2     0x5   5      OPC=vmovddup_xmm_xmm       
  vpbroadcastq %xmm11, %ymm4            #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vmovddup %ymm4, %ymm6                 #  4     0xf   4      OPC=vmovddup_ymm_ymm       
  callq .move_64_128_xmm12_xmm13_xmm2   #  5     0x13  5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm6, %ymm1         #  6     0x18  4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1   #  7     0x1c  5      OPC=callq_label            
  retq                                  #  8     0x21  1      OPC=retq                   
                                                                                         
.size target, .-target
