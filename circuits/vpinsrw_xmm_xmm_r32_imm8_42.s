  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label  
  callq .move_016_008_bx_r8b_r9b     #  2     0x5   5      OPC=callq_label  
  vzeroall                           #  3     0xa   3      OPC=vzeroall     
  callq .move_064_128_r10_r11_xmm1   #  4     0xd   5      OPC=callq_label  
  callq .move_r8b_to_byte_4_of_ymm1  #  5     0x12  5      OPC=callq_label  
  xaddb %r8b, %r9b                   #  6     0x17  4      OPC=xaddb_r8_r8  
  callq .move_r8b_to_byte_5_of_ymm1  #  7     0x1b  5      OPC=callq_label  
  retq                               #  8     0x20  1      OPC=retq         
                                                                            
.size target, .-target
