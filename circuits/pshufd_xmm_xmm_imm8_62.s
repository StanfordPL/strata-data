  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  callq .move_64_128_xmm8_xmm9_xmm1  #  2     0x5   5      OPC=callq_label             
  vbroadcastss %xmm1, %ymm3          #  3     0xa   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckldq %xmm3, %xmm9, %xmm7     #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhdq %xmm7, %xmm1             #  5     0x13  4      OPC=punpckhdq_xmm_xmm       
  retq                               #  6     0x17  1      OPC=retq                    
                                                                                       
.size target, .-target
