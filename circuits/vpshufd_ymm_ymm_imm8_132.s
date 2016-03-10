  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhdq %ymm2, %ymm2, %ymm10  #  1     0    4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckldq %ymm10, %ymm2, %ymm6  #  2     0x4  5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpcklqdq %ymm6, %ymm2, %ymm1  #  3     0x9  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
