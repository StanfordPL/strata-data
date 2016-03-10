  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckldq %xmm2, %xmm2, %xmm14  #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckhdq %xmm2, %xmm1, %xmm3   #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm14, %xmm3, %xmm8   #  3     0x8   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %ymm8, %ymm3, %ymm11  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  movdqa %xmm11, %xmm1             #  5     0x12  5      OPC=movdqa_xmm_xmm          
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
