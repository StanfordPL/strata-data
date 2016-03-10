  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movl %ebx, %ebx                    #  1     0     2      OPC=movl_r32_r32     
  callq .move_016_008_bx_r8b_r9b     #  2     0x2   5      OPC=callq_label      
  callq .move_r9b_to_byte_2_of_ymm1  #  3     0x7   5      OPC=callq_label      
  callq .move_r9b_to_byte_3_of_ymm1  #  4     0xc   5      OPC=callq_label      
  callq .move_r8b_to_byte_2_of_ymm1  #  5     0x11  5      OPC=callq_label      
  vmovdqa %xmm1, %xmm12              #  6     0x16  4      OPC=vmovdqa_xmm_xmm  
  movss %xmm12, %xmm1                #  7     0x1a  5      OPC=movss_xmm_xmm    
  retq                               #  8     0x1f  1      OPC=retq             
                                                                                
.size target, .-target
