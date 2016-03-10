  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandpd %ymm2, %ymm3, %ymm11   #  1     0     4      OPC=vandpd_ymm_ymm_ymm   
  vorps %ymm2, %ymm3, %ymm5     #  2     0x4   4      OPC=vorps_ymm_ymm_ymm    
  vandnpd %ymm5, %ymm11, %ymm2  #  3     0x8   4      OPC=vandnpd_ymm_ymm_ymm  
  vandpd %ymm5, %ymm2, %ymm1    #  4     0xc   4      OPC=vandpd_ymm_ymm_ymm   
  retq                          #  5     0x10  1      OPC=retq                 
                                                                               
.size target, .-target
