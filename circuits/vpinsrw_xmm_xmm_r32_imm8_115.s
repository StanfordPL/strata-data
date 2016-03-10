  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  xchgb %bl, %bh                     #  1     0     2      OPC=xchgb_rh_r8      
  vmovaps %xmm2, %xmm1               #  2     0x2   4      OPC=vmovaps_xmm_xmm  
  callq .move_016_008_bx_r8b_r9b     #  3     0x6   5      OPC=callq_label      
  callq .move_r9b_to_byte_6_of_ymm1  #  4     0xb   5      OPC=callq_label      
  callq .move_r8b_to_byte_7_of_ymm1  #  5     0x10  5      OPC=callq_label      
  retq                               #  6     0x15  1      OPC=retq             
                                                                                
.size target, .-target
