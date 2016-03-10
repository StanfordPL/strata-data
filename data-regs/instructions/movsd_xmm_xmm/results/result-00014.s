  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm1, %xmm9  #  1     0    4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vminps %xmm9, %xmm9, %xmm6       #  2     0x4  5      OPC=vminps_xmm_xmm_xmm       
  movhlps %xmm6, %xmm1             #  3     0x9  3      OPC=movhlps_xmm_xmm          
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
