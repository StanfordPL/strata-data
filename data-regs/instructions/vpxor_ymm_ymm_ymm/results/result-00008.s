  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm0   #  1     0     4      OPC=vandnpd_ymm_ymm_ymm  
  vandnpd %ymm3, %ymm0, %ymm14  #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm  
  vpor %ymm0, %ymm2, %ymm7      #  3     0x8   4      OPC=vpor_ymm_ymm_ymm     
  vandnps %ymm7, %ymm14, %ymm1  #  4     0xc   4      OPC=vandnps_ymm_ymm_ymm  
  retq                          #  5     0x10  1      OPC=retq                 
                                                                               
.size target, .-target
