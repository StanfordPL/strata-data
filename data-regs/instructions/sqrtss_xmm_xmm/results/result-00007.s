  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label      
  vmovdqu %xmm8, %xmm9               #  2     0x5   5      OPC=vmovdqu_xmm_xmm  
  vsqrtps %ymm9, %ymm13              #  3     0xa   5      OPC=vsqrtps_ymm_ymm  
  movss %xmm13, %xmm1                #  4     0xf   5      OPC=movss_xmm_xmm    
  retq                               #  5     0x14  1      OPC=retq             
                                                                                
.size target, .-target
