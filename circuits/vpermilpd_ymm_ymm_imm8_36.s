  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovddup %ymm2, %ymm4            #  1     0    4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm4, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movhlps %xmm4, %xmm1             #  3     0x8  3      OPC=movhlps_xmm_xmm          
  retq                             #  4     0xb  1      OPC=retq                     
                                                                                     
.size target, .-target
