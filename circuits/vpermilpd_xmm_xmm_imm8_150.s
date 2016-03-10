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
  callq .move_064_128_r10_r11_xmm3   #  3     0x8   5      OPC=callq_label  
  callq .move_128_64_xmm3_xmm8_xmm9  #  4     0xd   5      OPC=callq_label  
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label  
  retq                               #  6     0x17  1      OPC=retq         
                                                                            
.size target, .-target
