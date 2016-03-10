  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm12       #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vmovshdup %xmm2, %xmm3           #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %ymm12, %ymm3, %ymm14  #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm3, %ymm12, %ymm11  #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm  
  movsd %xmm11, %xmm14             #  5     0x12  5      OPC=movsd_xmm_xmm          
  movupd %xmm14, %xmm1             #  6     0x17  5      OPC=movupd_xmm_xmm         
  retq                             #  7     0x1c  1      OPC=retq                   
                                                                                    
.size target, .-target
