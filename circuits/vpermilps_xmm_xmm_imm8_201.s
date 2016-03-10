  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovdqa %xmm2, %xmm15             #  1     0     4      OPC=vmovdqa_xmm_xmm        
  vunpcklps %ymm15, %ymm15, %ymm11  #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklps %ymm11, %ymm15, %ymm7   #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %xmm15, %xmm7, %xmm1    #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm  
  retq                              #  5     0x13  1      OPC=retq                   
                                                                                     
.size target, .-target
