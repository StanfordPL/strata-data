  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpcklps %ymm3, %ymm2, %ymm5  #  1     0    4      OPC=vunpcklps_ymm_ymm_ymm  
  vminpd %ymm5, %ymm5, %ymm8     #  2     0x4  4      OPC=vminpd_ymm_ymm_ymm     
  vmovupd %ymm8, %ymm1           #  3     0x8  5      OPC=vmovupd_ymm_ymm        
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
