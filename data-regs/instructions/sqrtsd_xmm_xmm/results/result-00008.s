  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  vsqrtpd %xmm2, %xmm7                 #  1     0     4      OPC=vsqrtpd_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label      
  movq %xmm7, %xmm10                   #  3     0x9   5      OPC=movq_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label      
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
