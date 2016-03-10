  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label     
  salb $0x1, %bh                     #  2     0x5   2      OPC=salb_rh_one     
  cmovsw %bx, %r8w                   #  3     0x7   5      OPC=cmovsw_r16_r16  
  callq .move_r8b_to_byte_9_of_ymm1  #  4     0xc   5      OPC=callq_label     
  retq                               #  5     0x11  1      OPC=retq            
                                                                               
.size target, .-target
