  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm10, %ymm8            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  movaps %xmm11, %xmm5                  #  3     0xa   4      OPC=movaps_xmm_xmm         
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vpbroadcastq %xmm5, %ymm6             #  5     0x13  5      OPC=vpbroadcastq_ymm_xmm   
  unpcklpd %xmm11, %xmm8                #  6     0x18  5      OPC=unpcklpd_xmm_xmm       
  vunpckhpd %ymm8, %ymm6, %ymm1         #  7     0x1d  5      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  8     0x22  1      OPC=retq                   
                                                                                         
.size target, .-target
