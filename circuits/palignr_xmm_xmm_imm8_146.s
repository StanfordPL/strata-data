  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vxorpd %xmm13, %xmm13, %xmm12      #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label         
  punpcklqdq %xmm8, %xmm12           #  3     0xa   5      OPC=punpcklqdq_xmm_xmm  
  pmovsxdq %xmm12, %xmm1             #  4     0xf   6      OPC=pmovsxdq_xmm_xmm    
  retq                               #  5     0x15  1      OPC=retq                
                                                                                   
.size target, .-target
