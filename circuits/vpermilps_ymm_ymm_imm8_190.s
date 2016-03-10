  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovsldup %ymm2, %ymm14          #  1     0    4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm14, %ymm2, %ymm7  #  2     0x4  5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhqdq %ymm7, %ymm2, %ymm1  #  3     0x9  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
