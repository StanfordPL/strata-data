  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vbroadcastsd %xmm3, %ymm7       #  1     0    5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm7, %ymm3, %ymm11  #  2     0x5  4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklpd %ymm11, %ymm2, %ymm1  #  3     0x9  5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
