  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm9      #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vmovshdup %xmm2, %xmm1         #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %ymm9, %ymm1, %ymm6  #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm  
  vminps %ymm6, %ymm6, %ymm14    #  4     0xe   4      OPC=vminps_ymm_ymm_ymm     
  punpckhqdq %xmm14, %xmm1       #  5     0x12  5      OPC=punpckhqdq_xmm_xmm     
  retq                           #  6     0x17  1      OPC=retq                   
                                                                                  
.size target, .-target
