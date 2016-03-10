  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd132pd %ymm1, %ymm3, %ymm2  #  1     0    5      OPC=vfmadd132pd_ymm_ymm_ymm  
  vminpd %ymm2, %ymm2, %ymm1       #  2     0x5  4      OPC=vminpd_ymm_ymm_ymm       
  vmaxpd %ymm2, %ymm1, %ymm1       #  3     0x9  4      OPC=vmaxpd_ymm_ymm_ymm       
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
