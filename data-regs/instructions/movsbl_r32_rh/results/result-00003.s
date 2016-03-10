  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movzbl %ah, %ebx                  #  1     0     3      OPC=movzbl_r32_rh  
  callq .move_064_032_rbx_r8d_r9d   #  2     0x3   5      OPC=callq_label    
  callq .move_r8b_to_byte_6_of_rbx  #  3     0x8   5      OPC=callq_label    
  callq .move_016_008_bx_r10b_r11b  #  4     0xd   5      OPC=callq_label    
  movsbl %r10b, %ebx                #  5     0x12  4      OPC=movsbl_r32_r8  
  retq                              #  6     0x16  1      OPC=retq           
                                                                             
.size target, .-target
