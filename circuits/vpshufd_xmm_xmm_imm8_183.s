  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmaxpd %xmm2, %xmm2, %xmm5     #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm     
  vmovshdup %ymm5, %ymm1         #  2     0x4   4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %xmm5, %xmm1, %xmm2  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklps %ymm1, %ymm2, %ymm1  #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm  
  punpcklqdq %xmm2, %xmm1        #  5     0x10  4      OPC=punpcklqdq_xmm_xmm     
  retq                           #  6     0x14  1      OPC=retq                   
                                                                                  
.size target, .-target
