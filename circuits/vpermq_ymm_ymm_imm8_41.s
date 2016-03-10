  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm6           #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label            
  vunpcklpd %ymm6, %ymm2, %ymm1       #  3     0xa   4      OPC=vunpcklpd_ymm_ymm_ymm  
  unpckhpd %xmm6, %xmm8               #  4     0xe   5      OPC=unpckhpd_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1   #  5     0x13  5      OPC=callq_label            
  retq                                #  6     0x18  1      OPC=retq                   
                                                                                       
.size target, .-target
