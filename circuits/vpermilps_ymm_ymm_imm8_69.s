  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovshdup %ymm2, %ymm8           #  1     0    4      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %ymm2, %ymm8, %ymm1  #  2     0x4  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  3     0x8  1      OPC=retq                     
                                                                                     
.size target, .-target
