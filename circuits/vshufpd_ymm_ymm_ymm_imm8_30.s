  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movsd %xmm2, %xmm1               #  2     0x4  4      OPC=movsd_xmm_xmm            
  retq                             #  3     0x8  1      OPC=retq                     
                                                                                     
.size target, .-target
