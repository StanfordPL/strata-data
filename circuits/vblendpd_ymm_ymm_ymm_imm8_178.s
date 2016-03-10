  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  vmovapd %ymm2, %ymm1               #  1     0    4      OPC=vmovapd_ymm_ymm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4  5      OPC=callq_label      
  movlhps %xmm9, %xmm1               #  3     0x9  4      OPC=movlhps_xmm_xmm  
  retq                               #  4     0xd  1      OPC=retq             
                                                                               
.size target, .-target
