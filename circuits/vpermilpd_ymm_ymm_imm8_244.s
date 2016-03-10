  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm3  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm3, %ymm2, %ymm1    #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vaddsd %xmm3, %xmm1, %xmm7       #  3     0x8  4      OPC=vaddsd_xmm_xmm_xmm       
  movhlps %xmm7, %xmm1             #  4     0xc  3      OPC=movhlps_xmm_xmm          
  retq                             #  5     0xf  1      OPC=retq                     
                                                                                     
.size target, .-target
