  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm1   #  1     0     4      OPC=vandnpd_ymm_ymm_ymm  
  vandnpd %ymm2, %ymm3, %ymm13  #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm  
  vpor %ymm13, %ymm1, %ymm3     #  3     0x8   5      OPC=vpor_ymm_ymm_ymm     
  vminpd %ymm3, %ymm3, %ymm1    #  4     0xd   4      OPC=vminpd_ymm_ymm_ymm   
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
