  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovupd %xmm2, %xmm8           #  1     0     4      OPC=vmovupd_xmm_xmm        
  vpbroadcastq %xmm8, %ymm9      #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm   
  movsldup %xmm1, %xmm1          #  3     0x9   4      OPC=movsldup_xmm_xmm       
  vunpckhps %ymm8, %ymm9, %ymm4  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  unpcklpd %xmm4, %xmm1          #  5     0x12  4      OPC=unpcklpd_xmm_xmm       
  retq                           #  6     0x16  1      OPC=retq                   
                                                                                  
.size target, .-target
