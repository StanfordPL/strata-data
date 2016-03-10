  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovups %xmm2, %xmm1               #  1     0     4      OPC=vmovups_xmm_xmm  
  callq .move_016_008_bx_r8b_r9b     #  2     0x4   5      OPC=callq_label      
  callq .move_r8b_to_byte_6_of_ymm1  #  3     0x9   5      OPC=callq_label      
  xaddb %r8b, %r9b                   #  4     0xe   4      OPC=xaddb_r8_r8      
  callq .move_r8b_to_byte_7_of_ymm1  #  5     0x12  5      OPC=callq_label      
  retq                               #  6     0x17  1      OPC=retq             
                                                                                
.size target, .-target
