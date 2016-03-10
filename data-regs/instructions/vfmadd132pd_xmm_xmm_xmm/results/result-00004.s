  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmaxpd %xmm3, %xmm3, %xmm7       #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm       
  vfmadd231pd %xmm7, %xmm1, %xmm2  #  2     0x4  5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovapd %xmm2, %xmm1             #  3     0x9  4      OPC=vmovapd_xmm_xmm          
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
