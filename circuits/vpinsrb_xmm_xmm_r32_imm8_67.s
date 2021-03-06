  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label      
  vzeroall                           #  2     0x5   3      OPC=vzeroall         
  callq .clear_pf                    #  3     0x8   5      OPC=callq_label      
  callq .move_byte_7_of_ymm1_to_r9b  #  4     0xd   5      OPC=callq_label      
  cmovpow %bx, %r9w                  #  5     0x12  5      OPC=cmovpow_r16_r16  
  callq .move_064_128_r10_r11_xmm1   #  6     0x17  5      OPC=callq_label      
  callq .move_r9b_to_byte_3_of_ymm1  #  7     0x1c  5      OPC=callq_label      
  retq                               #  8     0x21  1      OPC=retq             
                                                                                
.size target, .-target
