  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpbroadcastq %xmm2, %xmm11       #  1     0    5      OPC=vpbroadcastq_xmm_xmm     
  unpcklpd %xmm11, %xmm2           #  2     0x5  5      OPC=unpcklpd_xmm_xmm         
  vpunpckhqdq %ymm3, %ymm2, %ymm1  #  3     0xa  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
