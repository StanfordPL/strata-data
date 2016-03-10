  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %xmm14       #  1     0     5      OPC=vpbroadcastd_xmm_xmm     
  vmovss %xmm2, %xmm2, %xmm0       #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm       
  vunpckhps %ymm14, %ymm0, %ymm9   #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm    
  unpcklps %xmm9, %xmm2            #  4     0xe   4      OPC=unpcklps_xmm_xmm         
  vpunpcklqdq %xmm9, %xmm2, %xmm3  #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovupd %xmm3, %xmm1             #  6     0x17  4      OPC=vmovupd_xmm_xmm          
  retq                             #  7     0x1b  1      OPC=retq                     
                                                                                      
.size target, .-target
