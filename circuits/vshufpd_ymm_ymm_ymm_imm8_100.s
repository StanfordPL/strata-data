  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm3, %ymm7  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  punpcklqdq %xmm2, %xmm2          #  2     0x4  4      OPC=punpcklqdq_xmm_xmm       
  vpunpckhqdq %ymm7, %ymm2, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
