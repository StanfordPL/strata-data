  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label    
  vzeroall                          #  3     0xa   3      OPC=vzeroall       
  xaddq %r10, %r12                  #  4     0xd   4      OPC=xaddq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  5     0x11  5      OPC=callq_label    
  retq                              #  6     0x16  1      OPC=retq           
                                                                             
.size target, .-target
