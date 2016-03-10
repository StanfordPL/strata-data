  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_byte_5_of_rbx_to_r8b   #  1     0     5      OPC=callq_label  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x5   5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx  #  3     0xa   5      OPC=callq_label  
  callq .move_r8b_to_byte_5_of_rbx   #  4     0xf   5      OPC=callq_label  
  salq %cl, %rbx                     #  5     0x14  3      OPC=salq_r64_cl  
  retq                               #  6     0x17  1      OPC=retq         
                                                                            
.size target, .-target
