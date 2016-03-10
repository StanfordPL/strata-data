  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  minsd %xmm13, %xmm13                  #  2     0x5   5      OPC=minsd_xmm_xmm          
  vpbroadcastq %xmm2, %ymm8             #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm2, %ymm8, %ymm1         #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movapd %xmm13, %xmm1                  #  5     0x13  5      OPC=movapd_xmm_xmm         
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
