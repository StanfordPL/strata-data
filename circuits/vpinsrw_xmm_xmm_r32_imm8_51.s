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
  callq .move_016_008_bx_r8b_r9b     #  3     0x8   5      OPC=callq_label         
  vmaxpd %xmm2, %xmm8, %xmm1         #  4     0xd   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1   #  5     0x11  5      OPC=callq_label         
  callq .move_r9b_to_byte_7_of_ymm1  #  6     0x16  5      OPC=callq_label         
  callq .move_r8b_to_byte_6_of_ymm1  #  7     0x1b  5      OPC=callq_label         
  retq                               #  8     0x20  1      OPC=retq                
                                                                                   
.size target, .-target
