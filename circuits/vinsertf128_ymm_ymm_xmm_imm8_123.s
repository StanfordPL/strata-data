  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm14           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vpbroadcastq %xmm13, %ymm1           #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm1, %ymm14, %ymm8       #  4     0xf   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r10_r11     #  5     0x13  5      OPC=callq_label            
  vmovups %ymm8, %ymm1                 #  6     0x18  5      OPC=vmovups_ymm_ymm        
  callq .move_064_128_r10_r11_xmm1     #  7     0x1d  5      OPC=callq_label            
  retq                                 #  8     0x22  1      OPC=retq                   
                                                                                        
.size target, .-target
