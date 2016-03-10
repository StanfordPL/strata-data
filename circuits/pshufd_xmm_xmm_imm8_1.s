  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm2, %ymm5                       #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm   
  punpckldq %xmm5, %xmm9                          #  3     0xa   5      OPC=punpckldq_xmm_xmm      
  vunpcklpd %xmm5, %xmm9, %xmm4                   #  4     0xf   4      OPC=vunpcklpd_xmm_xmm_xmm  
  movdqa %xmm4, %xmm1                             #  5     0x13  4      OPC=movdqa_xmm_xmm         
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
