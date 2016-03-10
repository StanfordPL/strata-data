  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovddup %ymm2, %ymm1            #  1     0    4      OPC=vmovddup_ymm_ymm         
  movlhps %xmm1, %xmm2             #  2     0x4  3      OPC=movlhps_xmm_xmm          
  vpunpckhqdq %ymm1, %ymm2, %ymm1  #  3     0x7  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xb  1      OPC=retq                     
                                                                                     
.size target, .-target
