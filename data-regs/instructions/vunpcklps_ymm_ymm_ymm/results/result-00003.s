  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovddup %ymm2, %ymm12           #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm3, %ymm2            #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm2, %ymm12, %ymm13  #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm  
  vorpd %ymm13, %ymm13, %ymm1      #  4     0xc   5      OPC=vorpd_ymm_ymm_ymm      
  retq                             #  5     0x11  1      OPC=retq                   
                                                                                    
.size target, .-target
