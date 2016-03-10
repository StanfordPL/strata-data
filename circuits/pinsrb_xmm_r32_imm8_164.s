  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  callq .move_032_016_ebx_r8w_r9w    #  1     0    5      OPC=callq_label  
  xchgb %r8b, %r9b                   #  2     0x5  3      OPC=xchgb_r8_r8  
  callq .move_r9b_to_byte_4_of_ymm1  #  3     0x8  5      OPC=callq_label  
  retq                               #  4     0xd  1      OPC=retq         
                                                                           
.size target, .-target
