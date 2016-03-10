  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %xmm2, %xmm1, %xmm5    #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckldq %xmm2, %xmm1, %xmm11  #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %ymm5, %ymm11, %ymm4   #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm5, %ymm11, %ymm9  #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vsubps %ymm9, %ymm4, %ymm9       #  5     0x10  5      OPC=vsubps_ymm_ymm_ymm      
  movups %xmm9, %xmm1              #  6     0x15  4      OPC=movups_xmm_xmm          
  retq                             #  7     0x19  1      OPC=retq                    
                                                                                     
.size target, .-target
