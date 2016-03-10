  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovshdup %ymm2, %ymm0           #  1     0    4      OPC=vmovshdup_ymm_ymm        
  vpunpckhqdq %ymm0, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm1, %ymm0, %ymm1   #  3     0x8  4      OPC=vpunpckldq_ymm_ymm_ymm   
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
