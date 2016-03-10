  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  vzeroall                          #  1     0     3      OPC=vzeroall       
  callq .move_128_064_xmm1_r10_r11  #  2     0x3   5      OPC=callq_label    
  xaddl %r10d, %ebx                 #  3     0x8   4      OPC=xaddl_r32_r32  
  callq .move_064_128_r10_r11_xmm1  #  4     0xc   5      OPC=callq_label    
  retq                              #  5     0x11  1      OPC=retq           
                                                                             
.size target, .-target
