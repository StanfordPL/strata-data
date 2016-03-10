  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  xaddb %bh, %bl                     #  1     0    3      OPC=xaddb_r8_rh  
  rorb $0x1, %bl                     #  2     0x3  2      OPC=rorb_r8_one  
  callq .move_016_008_bx_r8b_r9b     #  3     0x5  5      OPC=callq_label  
  callq .move_r9b_to_byte_0_of_ymm1  #  4     0xa  5      OPC=callq_label  
  retq                               #  5     0xf  1      OPC=retq         
                                                                           
.size target, .-target
