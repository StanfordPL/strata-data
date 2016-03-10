  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vhaddps %xmm1, %xmm2, %xmm8  #  1     0     4      OPC=vhaddps_xmm_xmm_xmm  
  vmovups %xmm8, %xmm0         #  2     0x4   5      OPC=vmovups_xmm_xmm      
  movlhps %xmm8, %xmm1         #  3     0x9   4      OPC=movlhps_xmm_xmm      
  movhlps %xmm0, %xmm1         #  4     0xd   3      OPC=movhlps_xmm_xmm      
  retq                         #  5     0x10  1      OPC=retq                 
                                                                              
.size target, .-target
