  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vunpckhps %xmm2, %xmm2, %xmm5  #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm5, %xmm2, %xmm14    #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm     
  vmovdqa %ymm14, %ymm8          #  3     0x8   5      OPC=vmovdqa_ymm_ymm        
  vunpcklps %xmm8, %xmm5, %xmm1  #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
