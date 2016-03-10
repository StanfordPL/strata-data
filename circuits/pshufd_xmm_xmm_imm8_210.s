  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm13, %xmm7      #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm13, %xmm7, %xmm12      #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm12, %xmm7, %xmm5      #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm13, %xmm5, %xmm6          #  5     0x13  5      OPC=vmovss_xmm_xmm_xmm      
  movdqu %xmm6, %xmm1                  #  6     0x18  4      OPC=movdqu_xmm_xmm          
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
