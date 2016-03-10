  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  vdivss %xmm1, %xmm6, %xmm0                      #  2     0x5   4      OPC=vdivss_xmm_xmm_xmm      
  mulpd %xmm2, %xmm1                              #  3     0x9   4      OPC=mulpd_xmm_xmm           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label             
  vpunpckldq %ymm0, %ymm0, %ymm11                 #  5     0x12  4      OPC=vpunpckldq_ymm_ymm_ymm  
  punpckhdq %xmm11, %xmm9                         #  6     0x16  5      OPC=punpckhdq_xmm_xmm       
  haddpd %xmm9, %xmm1                             #  7     0x1b  5      OPC=haddpd_xmm_xmm          
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
