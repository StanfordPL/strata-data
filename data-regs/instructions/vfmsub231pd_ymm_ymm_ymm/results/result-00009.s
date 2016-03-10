  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vsqrtps %ymm1, %ymm9             #  1     0     4      OPC=vsqrtps_ymm_ymm          
  vfmsub132pd %ymm3, %ymm1, %ymm2  #  2     0x4   5      OPC=vfmsub132pd_ymm_ymm_ymm  
  vmaxpd %ymm2, %ymm9, %ymm9       #  3     0x9   4      OPC=vmaxpd_ymm_ymm_ymm       
  vminpd %ymm2, %ymm9, %ymm1       #  4     0xd   4      OPC=vminpd_ymm_ymm_ymm       
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
