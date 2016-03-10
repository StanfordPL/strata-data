  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm7           #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm7, %ymm2, %ymm1       #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  3     0x9   5      OPC=callq_label            
  callq .move_64_128_xmm8_xmm9_xmm1   #  4     0xe   5      OPC=callq_label            
  retq                                #  5     0x13  1      OPC=retq                   
                                                                                       
.size target, .-target
