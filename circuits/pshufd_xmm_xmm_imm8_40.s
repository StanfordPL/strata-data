  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm12, %xmm13, %xmm14    #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm14, %xmm2, %xmm7       #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm   
  vunpcklps %ymm14, %ymm7, %ymm13      #  4     0xf   5      OPC=vunpcklps_ymm_ymm_ymm   
  movdqa %xmm13, %xmm1                 #  5     0x14  5      OPC=movdqa_xmm_xmm          
  retq                                 #  6     0x19  1      OPC=retq                    
                                                                                         
.size target, .-target
