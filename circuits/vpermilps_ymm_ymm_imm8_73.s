  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovapd %xmm2, %xmm8             #  1     0     4      OPC=vmovapd_xmm_xmm          
  vunpcklps %ymm8, %ymm2, %ymm7    #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm2, %ymm7, %ymm6   #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm2, %ymm6, %ymm1  #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
