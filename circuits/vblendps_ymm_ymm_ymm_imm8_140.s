  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpckhpd %xmm3, %xmm3, %xmm6    #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpckhdq %ymm6, %ymm3, %ymm7   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhdq %ymm7, %ymm2, %ymm4   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  movhlps %xmm6, %xmm4             #  4     0xc   3      OPC=movhlps_xmm_xmm          
  vpunpcklqdq %ymm4, %ymm2, %ymm1  #  5     0xf   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  6     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
