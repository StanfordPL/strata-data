  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  vunpcklps %xmm10, %xmm9, %xmm6                  #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckldq %xmm4, %xmm11, %xmm13                #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %ymm13, %ymm6, %ymm6                #  5     0x13  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movdqu %xmm6, %xmm1                             #  6     0x18  4      OPC=movdqu_xmm_xmm           
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
