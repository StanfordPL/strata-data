  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovapd %ymm2, %ymm6          #  1     0     4      OPC=vmovapd_ymm_ymm     
  vandps %ymm6, %ymm2, %ymm4    #  2     0x4   4      OPC=vandps_ymm_ymm_ymm  
  vandps %ymm4, %ymm3, %ymm15   #  3     0x8   4      OPC=vandps_ymm_ymm_ymm  
  vminpd %ymm15, %ymm15, %ymm1  #  4     0xc   5      OPC=vminpd_ymm_ymm_ymm  
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
