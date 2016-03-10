  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm14           #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm2, %ymm13           #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm14, %ymm13, %ymm7  #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm  
  vminpd %ymm7, %ymm7, %ymm1       #  4     0xd   4      OPC=vminpd_ymm_ymm_ymm     
  retq                             #  5     0x11  1      OPC=retq                   
                                                                                    
.size target, .-target
