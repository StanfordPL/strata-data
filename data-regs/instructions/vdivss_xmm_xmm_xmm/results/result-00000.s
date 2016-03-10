  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label      
  vmovdqa %xmm3, %xmm7               #  2     0x5   4      OPC=vmovdqa_xmm_xmm  
  vsqrtps %ymm7, %ymm1               #  3     0x9   4      OPC=vsqrtps_ymm_ymm  
  movddup %xmm3, %xmm6               #  4     0xd   4      OPC=movddup_xmm_xmm  
  divss %xmm6, %xmm8                 #  5     0x11  5      OPC=divss_xmm_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x16  5      OPC=callq_label      
  retq                               #  7     0x1b  1      OPC=retq             
                                                                                
.size target, .-target
