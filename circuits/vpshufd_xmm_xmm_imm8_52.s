  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %ymm7      #  1     0     5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhps %xmm7, %xmm2, %xmm6  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm6, %xmm6     #  3     0x9   4      OPC=vmovsd_xmm_xmm_xmm     
  vmovups %xmm6, %xmm1           #  4     0xd   4      OPC=vmovups_xmm_xmm        
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
