  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label  
  vzeroall                           #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r10_r11_xmm1   #  3     0x8   5      OPC=callq_label  
  callq .move_byte_7_of_ymm1_to_r9b  #  4     0xd   5      OPC=callq_label  
  callq .move_r9b_to_byte_3_of_ymm1  #  5     0x12  5      OPC=callq_label  
  callq .move_r9b_to_byte_5_of_ymm1  #  6     0x17  5      OPC=callq_label  
  callq .move_byte_6_of_ymm1_to_r9b  #  7     0x1c  5      OPC=callq_label  
  callq .move_r9b_to_byte_2_of_ymm1  #  8     0x21  5      OPC=callq_label  
  callq .move_r9b_to_byte_4_of_ymm1  #  9     0x26  5      OPC=callq_label  
  retq                               #  10    0x2b  1      OPC=retq         
                                                                            
.size target, .-target
