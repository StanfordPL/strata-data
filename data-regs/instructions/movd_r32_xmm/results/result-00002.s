  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm1_r10_r11    #  1     0     5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx   #  2     0x5   5      OPC=callq_label  
  callq .move_032_016_ebx_r10w_r11w   #  3     0xa   5      OPC=callq_label  
  callq .move_byte_15_of_ymm1_to_r8b  #  4     0xf   5      OPC=callq_label  
  callq .move_r8b_to_byte_7_of_rbx    #  5     0x14  5      OPC=callq_label  
  callq .move_016_032_r10w_r11w_ebx   #  6     0x19  5      OPC=callq_label  
  retq                                #  7     0x1e  1      OPC=retq         
                                                                             
.size target, .-target
