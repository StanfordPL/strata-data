  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm9           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vmovshdup %ymm2, %ymm2           #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vpunpckhqdq %ymm2, %ymm9, %ymm8  #  3     0x8   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm8, %ymm2, %ymm1  #  4     0xc   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
