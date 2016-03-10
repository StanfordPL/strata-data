  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm7  #  1     0     4      OPC=vandnpd_ymm_ymm_ymm  
  vandnpd %ymm2, %ymm3, %ymm0  #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm  
  movdqa %xmm2, %xmm7          #  3     0x8   4      OPC=movdqa_xmm_xmm       
  vorpd %ymm0, %ymm7, %ymm1    #  4     0xc   4      OPC=vorpd_ymm_ymm_ymm    
  xorps %xmm3, %xmm1           #  5     0x10  3      OPC=xorps_xmm_xmm        
  retq                         #  6     0x13  1      OPC=retq                 
                                                                              
.size target, .-target
