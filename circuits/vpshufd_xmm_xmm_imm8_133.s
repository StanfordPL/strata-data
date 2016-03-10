  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpcklpd %xmm2, %xmm2, %xmm4  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovshdup %xmm4, %xmm1         #  2     0x4  4      OPC=vmovshdup_xmm_xmm      
  unpckhps %xmm2, %xmm4          #  3     0x8  3      OPC=unpckhps_xmm_xmm       
  unpcklpd %xmm4, %xmm1          #  4     0xb  4      OPC=unpcklpd_xmm_xmm       
  retq                           #  5     0xf  1      OPC=retq                   
                                                                                 
.size target, .-target
