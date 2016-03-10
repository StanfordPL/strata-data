  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vmovdqu %ymm2, %ymm12              #  1     0    4      OPC=vmovdqu_ymm_ymm          
  movddup %xmm12, %xmm12             #  2     0x4  5      OPC=movddup_xmm_xmm          
  vpunpckhqdq %ymm12, %ymm12, %ymm1  #  3     0x9  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  4     0xe  1      OPC=retq                     
                                                                                       
.size target, .-target
