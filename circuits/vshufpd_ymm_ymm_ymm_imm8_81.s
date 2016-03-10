  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  movhlps %xmm2, %xmm2             #  1     0    3      OPC=movhlps_xmm_xmm          
  vpunpcklqdq %ymm3, %ymm2, %ymm1  #  2     0x3  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  3     0x7  1      OPC=retq                     
                                                                                     
.size target, .-target
