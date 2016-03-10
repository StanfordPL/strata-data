  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  unpcklps %xmm2, %xmm11                          #  2     0x5   4      OPC=unpcklps_xmm_xmm        
  callq .move_64_128_xmm10_xmm11_xmm3             #  3     0x9   5      OPC=callq_label             
  vmovsldup %xmm2, %xmm14                         #  4     0xe   4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm14, %xmm3, %xmm1                 #  5     0x12  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
