  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmaxps %ymm2, %ymm2, %ymm7       #  1     0     4      OPC=vmaxps_ymm_ymm_ymm       
  vpunpckhqdq %ymm2, %ymm7, %ymm9  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm9, %ymm2, %ymm2   #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckldq %ymm9, %ymm2, %ymm1   #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm   
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
