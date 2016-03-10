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
  rolb $0x1, %bh                     #  3     0x8   2      OPC=rolb_rh_one     
  callq .move_064_128_r10_r11_xmm1   #  4     0xa   5      OPC=callq_label     
  movslq %ebx, %r8                   #  5     0xf   3      OPC=movslq_r64_r32  
  callq .move_r8b_to_byte_1_of_ymm1  #  6     0x12  5      OPC=callq_label     
  retq                               #  7     0x17  1      OPC=retq            
                                                                               
.size target, .-target
