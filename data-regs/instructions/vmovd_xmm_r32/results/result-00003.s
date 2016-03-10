  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_byte_3_of_rbx_to_r9b   #  1     0     5      OPC=callq_label    
  movzbq %bl, %r8                    #  2     0x5   4      OPC=movzbq_r64_r8  
  vzeroall                           #  3     0x9   3      OPC=vzeroall       
  callq .move_r8b_to_byte_0_of_ymm1  #  4     0xc   5      OPC=callq_label    
  callq .move_r9b_to_byte_3_of_ymm1  #  5     0x11  5      OPC=callq_label    
  callq .move_016_008_bx_r8b_r9b     #  6     0x16  5      OPC=callq_label    
  callq .move_r9b_to_byte_1_of_ymm1  #  7     0x1b  5      OPC=callq_label    
  callq .move_032_016_ebx_r8w_r9w    #  8     0x20  5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_ymm1  #  9     0x25  5      OPC=callq_label    
  retq                               #  10    0x2a  1      OPC=retq           
                                                                              
.size target, .-target
