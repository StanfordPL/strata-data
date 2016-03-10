  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm9, %xmm14      #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vpbroadcastq %xmm2, %ymm4           #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm2, %ymm4, %ymm1       #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movapd %xmm14, %xmm1                #  5     0x13  5      OPC=movapd_xmm_xmm         
  retq                                #  6     0x18  1      OPC=retq                   
                                                                                       
.size target, .-target
