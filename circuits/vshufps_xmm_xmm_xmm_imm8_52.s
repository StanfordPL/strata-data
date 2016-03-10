  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastd %xmm3, %xmm1             #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vunpcklpd %xmm3, %xmm2, %xmm2         #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label            
  vunpckhps %xmm1, %xmm3, %xmm2         #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm12, %xmm2, %xmm1           #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
