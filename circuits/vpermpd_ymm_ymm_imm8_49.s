  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm1        #  1     0    5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm1  #  2     0x5  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movhlps %xmm2, %xmm1             #  3     0x9  3      OPC=movhlps_xmm_xmm          
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
