  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklpd %xmm2, %xmm2, %xmm13  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vminps %ymm13, %ymm13, %ymm1    #  2     0x4  5      OPC=vminps_ymm_ymm_ymm     
  retq                            #  3     0x9  1      OPC=retq                   
                                                                                  
.size target, .-target
