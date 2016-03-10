  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vorpd %ymm2, %ymm2, %ymm1       #  1     0    4      OPC=vorpd_ymm_ymm_ymm      
  vpbroadcastq %xmm2, %ymm14      #  2     0x4  5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm1, %ymm14, %ymm1  #  3     0x9  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
