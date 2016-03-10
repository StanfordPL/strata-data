  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm3                          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vpunpckhdq %xmm11, %xmm3, %xmm7                 #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovdqa %xmm7, %xmm10                           #  4     0xe   4      OPC=vmovdqa_xmm_xmm         
  vpmovsxdq %xmm3, %xmm8                          #  5     0x12  5      OPC=vpmovsxdq_xmm_xmm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label             
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
