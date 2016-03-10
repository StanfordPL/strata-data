  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmulss %xmm2, %xmm2, %xmm7           #  1     0     4      OPC=vmulss_xmm_xmm_xmm      
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label             
  vunpcklps %xmm12, %xmm7, %xmm9       #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm   
  punpckhdq %xmm7, %xmm9               #  4     0xe   5      OPC=punpckhdq_xmm_xmm       
  vpunpckhdq %xmm9, %xmm12, %xmm9      #  5     0x13  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovdqa %xmm9, %xmm1                 #  6     0x18  5      OPC=vmovdqa_xmm_xmm         
  retq                                 #  7     0x1d  1      OPC=retq                    
                                                                                         
.size target, .-target
