  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm12, %ymm5           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vpbroadcastq %xmm13, %ymm4           #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_128_64_xmm2_xmm10_xmm11  #  4     0xf   5      OPC=callq_label            
  vunpckhpd %ymm4, %ymm5, %ymm1        #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label            
  retq                                 #  7     0x1d  1      OPC=retq                   
                                                                                        
.size target, .-target
