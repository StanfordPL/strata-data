  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label     
  movdqa %xmm12, %xmm2                 #  2     0x5   5      OPC=movdqa_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label     
  sqrtpd %xmm13, %xmm1                 #  4     0xf   5      OPC=sqrtpd_xmm_xmm  
  retq                                 #  5     0x14  1      OPC=retq            
                                                                                 
.size target, .-target
