  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  unpcklpd %xmm2, %xmm2            #  1     0    4      OPC=unpcklpd_xmm_xmm         
  vmovaps %ymm2, %ymm1             #  2     0x4  4      OPC=vmovaps_ymm_ymm          
  vpunpckhqdq %ymm1, %ymm2, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target