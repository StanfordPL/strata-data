  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm9, %xmm2, %xmm5     #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastd %xmm9, %ymm10         #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm    
  vunpcklpd %ymm5, %ymm10, %ymm13    #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm   
  movupd %xmm13, %xmm1               #  5     0x13  5      OPC=movupd_xmm_xmm          
  retq                               #  6     0x18  1      OPC=retq                    
                                                                                       
.size target, .-target
