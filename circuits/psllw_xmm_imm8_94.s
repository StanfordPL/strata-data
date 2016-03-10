  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_byte_8_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  xaddb %r9b, %r9b                   #  2     0x5   4      OPC=xaddb_r8_r8    
  callq .move_r9b_to_byte_7_of_ymm1  #  3     0x9   5      OPC=callq_label    
  pandn %xmm1, %xmm1                 #  4     0xe   4      OPC=pandn_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq           
                                                                              
.size target, .-target
