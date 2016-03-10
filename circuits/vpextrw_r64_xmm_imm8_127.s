  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  stc                                 #  1     0     1      OPC=stc          
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x1   5      OPC=callq_label  
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x6   5      OPC=callq_label  
  callq .read_cf_into_rbx             #  4     0xb   5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_bx      #  5     0x10  5      OPC=callq_label  
  retq                                #  6     0x15  1      OPC=retq         
                                                                             
.size target, .-target
