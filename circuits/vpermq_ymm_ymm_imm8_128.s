  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm1      #  1     0    5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm2, %ymm1, %ymm5  #  2     0x5  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmovupd %ymm5, %ymm1           #  3     0x9  4      OPC=vmovupd_ymm_ymm        
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
