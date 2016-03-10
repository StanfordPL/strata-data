  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm4   #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  vbroadcastsd %xmm4, %ymm11      #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm11, %ymm2, %ymm1  #  3     0x9  5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
