  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  movd %r11d, %xmm10                            #  2     0x5   5      OPC=movd_xmm_r32            
  movd %r13d, %xmm9                             #  3     0xa   5      OPC=movd_xmm_r32            
  vunpcklps %xmm2, %xmm10, %xmm13               #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm   
  unpcklps %xmm13, %xmm9                        #  5     0x13  4      OPC=unpcklps_xmm_xmm        
  vpunpckldq %xmm13, %xmm9, %xmm1               #  6     0x17  5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
