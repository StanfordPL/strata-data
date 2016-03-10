  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                 
.target:                             #        0    0      OPC=<label>            
  paddd %xmm2, %xmm3                 #  1     0    4      OPC=paddd_xmm_xmm      
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4  5      OPC=callq_label        
  vorps %xmm8, %xmm3, %xmm1          #  3     0x9  5      OPC=vorps_xmm_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq               
                                                                                 
.size target, .-target
