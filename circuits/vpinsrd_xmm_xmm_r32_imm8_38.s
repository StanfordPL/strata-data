  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movd %ebx, %xmm15               #  1     0     5      OPC=movd_xmm_r32           
  vmovshdup %xmm2, %xmm9          #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vpbroadcastd %xmm15, %ymm10     #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm   
  vunpcklpd %xmm2, %xmm2, %xmm13  #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vunpckhps %xmm9, %xmm10, %xmm4  #  5     0x12  5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm4, %xmm1     #  6     0x17  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  7     0x1c  1      OPC=retq                   
                                                                                   
.size target, .-target
