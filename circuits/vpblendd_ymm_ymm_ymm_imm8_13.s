  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovdqu %ymm2, %ymm1               #  1     0     4      OPC=vmovdqu_ymm_ymm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label      
  movss %xmm8, %xmm2                 #  3     0x9   5      OPC=movss_xmm_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label      
  movsd %xmm2, %xmm1                 #  5     0x13  4      OPC=movsd_xmm_xmm    
  retq                               #  6     0x17  1      OPC=retq             
                                                                                
.size target, .-target
