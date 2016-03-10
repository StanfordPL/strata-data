  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movsbw %bh, %dx                    #  1     0     4      OPC=movsbw_r16_rh   
  callq .move_byte_9_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label     
  xaddb %r8b, %dl                    #  3     0x9   4      OPC=xaddb_r8_r8     
  movzwq %bx, %r9                    #  4     0xd   4      OPC=movzwq_r64_r16  
  callq .move_r8b_to_byte_5_of_ymm1  #  5     0x11  5      OPC=callq_label     
  callq .move_r9b_to_byte_4_of_ymm1  #  6     0x16  5      OPC=callq_label     
  retq                               #  7     0x1b  1      OPC=retq            
                                                                               
.size target, .-target
