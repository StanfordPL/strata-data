  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vpand %ymm3, %ymm2, %ymm12     #  1     0    4      OPC=vpand_ymm_ymm_ymm    
  vpor %ymm3, %ymm2, %ymm10      #  2     0x4  4      OPC=vpor_ymm_ymm_ymm     
  vandnps %ymm10, %ymm12, %ymm1  #  3     0x8  5      OPC=vandnps_ymm_ymm_ymm  
  retq                           #  4     0xd  1      OPC=retq                 
                                                                               
.size target, .-target
