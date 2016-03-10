  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm8_xmm9     #  2     0x5   5      OPC=callq_label            
  callq .move_128_256_xmm8_xmm9_ymm3    #  3     0xa   5      OPC=callq_label            
  vbroadcastsd %xmm2, %ymm7             #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm7, %ymm3, %ymm1         #  5     0x14  4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x18  5      OPC=callq_label            
  retq                                  #  7     0x1d  1      OPC=retq                   
                                                                                         
.size target, .-target
