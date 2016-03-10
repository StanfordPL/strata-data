  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  pmovzxwq %xmm1, %xmm13               #  1     0     6      OPC=pmovzxwq_xmm_xmm    
  vpandn %xmm13, %xmm13, %xmm2         #  2     0x6   5      OPC=vpandn_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0xb   5      OPC=callq_label         
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0x10  5      OPC=callq_label         
  retq                                 #  5     0x15  1      OPC=retq                
                                                                                     
.size target, .-target
