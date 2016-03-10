  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label           
  vzeroall                           #  2     0x5   3      OPC=vzeroall              
  callq .move_r8b_to_byte_0_of_ymm1  #  3     0x8   5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1  #  4     0xd   5      OPC=callq_label           
  callq .move_r8b_to_byte_1_of_ymm1  #  5     0x12  5      OPC=callq_label           
  callq .move_r8b_to_byte_3_of_ymm1  #  6     0x17  5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1          #  7     0x1c  5      OPC=vpbroadcastd_ymm_xmm  
  retq                               #  8     0x21  1      OPC=retq                  
                                                                                     
.size target, .-target
