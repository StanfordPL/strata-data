  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm8, %xmm1, %xmm12                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm3             #  3     0xa   5      OPC=callq_label             
  vunpckhps %xmm3, %xmm1, %xmm14                  #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm   
  vunpcklps %xmm12, %xmm14, %xmm3                 #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm   
  movdqa %xmm3, %xmm1                             #  6     0x18  4      OPC=movdqa_xmm_xmm          
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
