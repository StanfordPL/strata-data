  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label    
  vzeroall                            #  2     0x5   3      OPC=vzeroall       
  movzbq %r11b, %r8                   #  3     0x8   4      OPC=movzbq_r64_r8  
  callq .move_064_128_r10_r11_xmm1    #  4     0xc   5      OPC=callq_label    
  callq .move_r8b_to_byte_14_of_ymm1  #  5     0x11  5      OPC=callq_label    
  callq .move_r8b_to_byte_10_of_ymm1  #  6     0x16  5      OPC=callq_label    
  callq .move_byte_9_of_ymm1_to_r8b   #  7     0x1b  5      OPC=callq_label    
  callq .move_r8b_to_byte_11_of_ymm1  #  8     0x20  5      OPC=callq_label    
  callq .move_r8b_to_byte_15_of_ymm1  #  9     0x25  5      OPC=callq_label    
  retq                                #  10    0x2a  1      OPC=retq           
                                                                               
.size target, .-target
