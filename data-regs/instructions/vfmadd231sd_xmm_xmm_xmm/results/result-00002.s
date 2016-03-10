  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vminsd %xmm3, %xmm2, %xmm14          #  1     0     4      OPC=vminsd_xmm_xmm_xmm       
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vfmadd231pd %xmm3, %xmm2, %xmm12     #  3     0x9   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovss %xmm12, %xmm14, %xmm1         #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
