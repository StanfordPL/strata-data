  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  movaps %xmm1, %xmm4              #  1     0    3      OPC=movaps_xmm_xmm           
  vmovups %xmm2, %xmm1             #  2     0x3  4      OPC=vmovups_xmm_xmm          
  vfmadd231pd %xmm3, %xmm4, %xmm1  #  3     0x7  5      OPC=vfmadd231pd_xmm_xmm_xmm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
