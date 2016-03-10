  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %ymm9          #  1     0     5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhps %xmm2, %xmm9, %xmm14     #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovddup %ymm14, %ymm8             #  3     0x9   5      OPC=vmovddup_ymm_ymm       
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label            
  retq                               #  5     0x13  1      OPC=retq                   
                                                                                      
.size target, .-target
