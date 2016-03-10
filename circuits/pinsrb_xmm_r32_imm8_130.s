  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  callq .move_032_016_ebx_r8w_r9w    #  1     0    5      OPC=callq_label  
  callq .move_r8b_to_byte_2_of_ymm1  #  2     0x5  5      OPC=callq_label  
  retq                               #  3     0xa  1      OPC=retq         
                                                                           
.size target, .-target
