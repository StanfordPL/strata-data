  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label      
  vmovdqu %xmm12, %xmm8                #  2     0x5   5      OPC=vmovdqu_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9       #  3     0xa   5      OPC=callq_label      
  callq .move_064_128_r8_r9_xmm1       #  4     0xf   5      OPC=callq_label      
  vmovdqu %xmm1, %xmm1                 #  5     0x14  4      OPC=vmovdqu_xmm_xmm  
  movlhps %xmm8, %xmm1                 #  6     0x18  4      OPC=movlhps_xmm_xmm  
  retq                                 #  7     0x1c  1      OPC=retq             
                                                                                  
.size target, .-target
