  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  negb %bh                           #  1     0     2      OPC=negb_rh      
  callq .move_128_064_xmm2_r10_r11   #  2     0x2   5      OPC=callq_label  
  callq .move_016_008_bx_r8b_r9b     #  3     0x7   5      OPC=callq_label  
  vzeroall                           #  4     0xc   3      OPC=vzeroall     
  callq .move_064_128_r10_r11_xmm1   #  5     0xf   5      OPC=callq_label  
  callq .move_r8b_to_byte_1_of_ymm1  #  6     0x14  5      OPC=callq_label  
  retq                               #  7     0x19  1      OPC=retq         
                                                                            
.size target, .-target
