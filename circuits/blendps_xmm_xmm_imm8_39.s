  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0xa   5      OPC=callq_label         
  vmovss %xmm13, %xmm11, %xmm2         #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm1              #  5     0x14  4      OPC=punpcklqdq_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq                
                                                                                     
.size target, .-target
