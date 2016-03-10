  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movapd %xmm11, %xmm12                           #  2     0x5   5      OPC=movapd_xmm_xmm          
  vpunpckldq %xmm8, %xmm12, %xmm1                 #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm12, %xmm2, %xmm3                  #  4     0xf   5      OPC=vunpcklps_xmm_xmm_xmm   
  vunpcklps %xmm3, %xmm1, %xmm1                   #  5     0x14  4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
