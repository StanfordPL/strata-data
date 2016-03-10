  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %ymm2, %ymm3, %ymm13  #  1     0    4      OPC=vandnps_ymm_ymm_ymm  
  vandnps %ymm3, %ymm2, %ymm11  #  2     0x4  4      OPC=vandnps_ymm_ymm_ymm  
  vpor %ymm11, %ymm13, %ymm1    #  3     0x8  5      OPC=vpor_ymm_ymm_ymm     
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
