  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vmovapd %xmm2, %xmm14                           #  3     0xa   4      OPC=vmovapd_xmm_xmm         
  punpckhdq %xmm14, %xmm11                        #  4     0xe   5      OPC=punpckhdq_xmm_xmm       
  movaps %xmm5, %xmm9                             #  5     0x13  4      OPC=movaps_xmm_xmm          
  vpunpckldq %xmm9, %xmm11, %xmm1                 #  6     0x17  5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
