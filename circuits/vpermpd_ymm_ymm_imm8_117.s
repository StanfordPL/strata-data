  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm11  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  vbroadcastsd %xmm11, %ymm1      #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm1, %ymm11, %ymm1  #  3     0x9  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
