  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm8, %xmm2, %xmm5                  #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm5, %xmm2, %xmm11                  #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm   
  unpcklps %xmm8, %xmm9                           #  4     0xe   4      OPC=unpcklps_xmm_xmm        
  movapd %xmm9, %xmm10                            #  5     0x12  5      OPC=movapd_xmm_xmm          
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x17  5      OPC=callq_label             
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
