  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpckhpd %ymm2, %ymm2, %ymm8         #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movhlps %xmm8, %xmm12                 #  3     0x9   4      OPC=movhlps_xmm_xmm        
  vpbroadcastq %xmm8, %ymm1             #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x12  5      OPC=callq_label            
  vunpckhpd %ymm1, %ymm8, %ymm1         #  6     0x17  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  7     0x1b  1      OPC=retq                   
                                                                                         
.size target, .-target
