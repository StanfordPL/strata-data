  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm11, %xmm0                #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm10, %xmm10, %xmm8                #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  4     0xf   5      OPC=callq_label             
  vunpcklps %xmm2, %xmm0, %xmm2                   #  5     0x14  4      OPC=vunpcklps_xmm_xmm_xmm   
  movdqu %xmm2, %xmm1                             #  6     0x18  4      OPC=movdqu_xmm_xmm          
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
