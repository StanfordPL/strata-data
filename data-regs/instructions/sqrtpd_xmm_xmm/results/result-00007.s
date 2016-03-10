  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  callq .move_64_128_xmm10_xmm11_xmm1  #  2     0x5   5      OPC=callq_label      
  vsqrtpd %xmm1, %xmm8                 #  3     0xa   4      OPC=vsqrtpd_xmm_xmm  
  movdqa %xmm8, %xmm1                  #  4     0xe   5      OPC=movdqa_xmm_xmm   
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
