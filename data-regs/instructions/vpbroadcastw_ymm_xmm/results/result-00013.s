  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastw %xmm2, %xmm0  #  1     0    5      OPC=vpbroadcastw_xmm_xmm  
  vpbroadcastd %xmm0, %ymm1  #  2     0x5  5      OPC=vpbroadcastd_ymm_xmm  
  retq                       #  3     0xa  1      OPC=retq                  
                                                                            
.size target, .-target
