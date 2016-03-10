  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhdq %xmm1, %xmm1, %xmm2   #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %ymm2, %ymm2, %ymm7  #  2     0x4  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movd %xmm7, %ebx                 #  3     0x8  4      OPC=movd_r32_xmm             
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
