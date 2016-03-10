  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm10_xmm11           #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm15                    #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vpbroadcastq %xmm11, %ymm14                   #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm14, %ymm15, %ymm1               #  5     0x14  5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x19  5      OPC=callq_label            
  retq                                          #  7     0x1e  1      OPC=retq                   
                                                                                                 
.size target, .-target
