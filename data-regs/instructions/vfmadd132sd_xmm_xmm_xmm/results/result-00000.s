  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd231pd %xmm3, %xmm1, %xmm2  #  1     0    5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm1, %xmm9       #  2     0x5  4      OPC=vmovsd_xmm_xmm_xmm       
  vminpd %ymm9, %ymm9, %ymm1       #  3     0x9  5      OPC=vminpd_ymm_ymm_ymm       
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
