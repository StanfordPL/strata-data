  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_of_into_rbx           #  1     0     5      OPC=callq_label  
  clc                               #  2     0x5   1      OPC=clc          
  setc %bh                          #  3     0x6   3      OPC=setc_rh      
  callq .move_byte_7_of_rbx_to_r8b  #  4     0x9   5      OPC=callq_label  
  callq .move_r8b_to_byte_3_of_rbx  #  5     0xe   5      OPC=callq_label  
  retq                              #  6     0x13  1      OPC=retq         
                                                                           
.size target, .-target
