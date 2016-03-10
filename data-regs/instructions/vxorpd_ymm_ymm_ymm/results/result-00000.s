  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandnps %ymm3, %ymm2, %ymm10  #  1     0     4      OPC=vandnps_ymm_ymm_ymm  
  vandnps %ymm2, %ymm3, %ymm7   #  2     0x4   4      OPC=vandnps_ymm_ymm_ymm  
  vorps %ymm10, %ymm7, %ymm9    #  3     0x8   5      OPC=vorps_ymm_ymm_ymm    
  vorpd %ymm9, %ymm9, %ymm1     #  4     0xd   5      OPC=vorpd_ymm_ymm_ymm    
  retq                          #  5     0x12  1      OPC=retq                 
                                                                               
.size target, .-target
