  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm3, %ymm9  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm3, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklwd %ymm9, %ymm1, %ymm1   #  3     0x8  5      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
