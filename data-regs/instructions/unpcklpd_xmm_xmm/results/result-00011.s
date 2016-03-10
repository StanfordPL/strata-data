  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovdqu %xmm10, %xmm11               #  2     0x5   5      OPC=vmovdqu_xmm_xmm  
  vmovdqu %xmm1, %xmm10                #  3     0xa   4      OPC=vmovdqu_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label      
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
