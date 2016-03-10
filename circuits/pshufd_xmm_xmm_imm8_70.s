  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode               
.target:                               #        0    0      OPC=<label>          
  movddup %xmm2, %xmm1                 #  1     0    4      OPC=movddup_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4  5      OPC=callq_label      
  movss %xmm13, %xmm1                  #  3     0x9  5      OPC=movss_xmm_xmm    
  retq                                 #  4     0xe  1      OPC=retq             
                                                                                 
.size target, .-target
