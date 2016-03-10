  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vcvtss2sd %xmm2, %xmm2, %xmm4  #  1     0    4      OPC=vcvtss2sd_xmm_xmm_xmm  
  unpckhps %xmm2, %xmm2          #  2     0x4  3      OPC=unpckhps_xmm_xmm       
  vunpckhps %xmm4, %xmm2, %xmm1  #  3     0x7  4      OPC=vunpckhps_xmm_xmm_xmm  
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
