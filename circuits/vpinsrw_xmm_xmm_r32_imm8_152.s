  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm2_r10_r11   #  2     0x5   5      OPC=callq_label    
  vzeroall                           #  3     0xa   3      OPC=vzeroall       
  xaddw %r10w, %r12w                 #  4     0xd   5      OPC=xaddw_r16_r16  
  callq .move_064_128_r10_r11_xmm1   #  5     0x12  5      OPC=callq_label    
  retq                               #  6     0x17  1      OPC=retq           
                                                                              
.size target, .-target
