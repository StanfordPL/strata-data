  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vpbroadcastd %xmm2, %ymm10    #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  vminps %ymm10, %ymm10, %ymm1  #  2     0x5  5      OPC=vminps_ymm_ymm_ymm    
  retq                          #  3     0xa  1      OPC=retq                  
                                                                               
.size target, .-target
