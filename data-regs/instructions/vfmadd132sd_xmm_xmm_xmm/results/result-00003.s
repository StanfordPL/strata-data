  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0    5      OPC=callq_label              
  vfmadd231pd %xmm12, %xmm1, %xmm2     #  2     0x5  5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm1, %xmm1           #  3     0xa  4      OPC=vmovsd_xmm_xmm_xmm       
  retq                                 #  4     0xe  1      OPC=retq                     
                                                                                         
.size target, .-target
