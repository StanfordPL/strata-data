  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %ymm2, %ymm3, %ymm1  #  1     0    4      OPC=vandnps_ymm_ymm_ymm  
  vandnps %ymm3, %ymm2, %ymm9  #  2     0x4  4      OPC=vandnps_ymm_ymm_ymm  
  vpor %ymm1, %ymm9, %ymm1     #  3     0x8  4      OPC=vpor_ymm_ymm_ymm     
  retq                         #  4     0xc  1      OPC=retq                 
                                                                             
.size target, .-target
