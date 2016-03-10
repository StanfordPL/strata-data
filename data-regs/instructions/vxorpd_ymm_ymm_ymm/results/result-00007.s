  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vandnps %ymm3, %ymm2, %ymm6  #  1     0     4      OPC=vandnps_ymm_ymm_ymm  
  vandnps %ymm2, %ymm3, %ymm1  #  2     0x4   4      OPC=vandnps_ymm_ymm_ymm  
  vpor %ymm6, %ymm1, %ymm13    #  3     0x8   4      OPC=vpor_ymm_ymm_ymm     
  vpor %ymm13, %ymm13, %ymm1   #  4     0xc   5      OPC=vpor_ymm_ymm_ymm     
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
