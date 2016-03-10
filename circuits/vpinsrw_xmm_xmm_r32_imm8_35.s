  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovdqa %xmm2, %xmm1               #  1     0     4      OPC=vmovdqa_xmm_xmm  
  minps %xmm2, %xmm1                 #  2     0x4   3      OPC=minps_xmm_xmm    
  callq .move_016_008_bx_r8b_r9b     #  3     0x7   5      OPC=callq_label      
  callq .move_r8b_to_byte_7_of_ymm1  #  4     0xc   5      OPC=callq_label      
  callq .move_r8b_to_byte_6_of_ymm1  #  5     0x11  5      OPC=callq_label      
  callq .move_r9b_to_byte_7_of_ymm1  #  6     0x16  5      OPC=callq_label      
  retq                               #  7     0x1b  1      OPC=retq             
                                                                                
.size target, .-target
