  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r12_r13     #  1     0     5      OPC=callq_label      
  vsqrtpd %xmm3, %xmm1                 #  2     0x5   4      OPC=vsqrtpd_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label      
  vmovq %r12, %xmm11                   #  4     0xe   5      OPC=vmovq_xmm_r64    
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label      
  retq                                 #  6     0x18  1      OPC=retq             
                                                                                  
.size target, .-target
