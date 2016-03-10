  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movdqu %xmm8, %xmm11                            #  2     0x5   5      OPC=movdqu_xmm_xmm          
  vunpcklps %xmm1, %xmm2, %xmm13                  #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm   
  vunpckhps %xmm1, %xmm13, %xmm6                  #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %xmm6, %xmm11, %xmm11                #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movaps %xmm11, %xmm1                            #  6     0x16  4      OPC=movaps_xmm_xmm          
  retq                                            #  7     0x1a  1      OPC=retq                    
                                                                                                    
.size target, .-target
