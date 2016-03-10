  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                     
.target:                             #        0    0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label            
  vunpcklps %xmm9, %xmm2, %xmm15     #  2     0x5  5      OPC=vunpcklps_xmm_xmm_xmm  
  punpcklqdq %xmm15, %xmm1           #  3     0xa  5      OPC=punpcklqdq_xmm_xmm     
  retq                               #  4     0xf  1      OPC=retq                   
                                                                                     
.size target, .-target
