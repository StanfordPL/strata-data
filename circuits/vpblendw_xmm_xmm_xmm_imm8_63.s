  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  movshdup %xmm2, %xmm13           #  1     0    5      OPC=movshdup_xmm_xmm       
  vunpckhps %xmm13, %xmm3, %xmm13  #  2     0x5  5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovlhps %xmm13, %xmm3, %xmm1    #  3     0xa  5      OPC=vmovlhps_xmm_xmm_xmm   
  retq                             #  4     0xf  1      OPC=retq                   
                                                                                   
.size target, .-target
