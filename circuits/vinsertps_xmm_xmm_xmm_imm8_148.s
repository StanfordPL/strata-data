  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label             
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm8, %xmm14                 #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckldq %xmm10, %xmm1                         #  5     0x13  5      OPC=punpckldq_xmm_xmm       
  vmovsd %xmm1, %xmm14, %xmm1                     #  6     0x18  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
