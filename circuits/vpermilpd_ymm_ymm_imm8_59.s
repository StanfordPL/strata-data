  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovdqa %ymm2, %ymm1             #  1     0    4      OPC=vmovdqa_ymm_ymm          
  vpunpckhqdq %ymm2, %ymm1, %ymm4  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movdqa %xmm4, %xmm1              #  3     0x8  4      OPC=movdqa_xmm_xmm           
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
