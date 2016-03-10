  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vmovshdup %xmm1, %xmm10          #  1     0    4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %xmm10, %xmm2, %xmm15  #  2     0x4  5      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm15, %xmm1           #  3     0x9  5      OPC=unpcklpd_xmm_xmm       
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
