  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .set_of                       #  1     0     5      OPC=callq_label  
  callq .read_of_into_rbx             #  2     0x5   5      OPC=callq_label  
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0xa   5      OPC=callq_label  
  xchgb %bl, %r8b                     #  4     0xf   3      OPC=xchgb_r8_r8  
  retq                                #  5     0x12  1      OPC=retq         
                                                                             
.size target, .-target
