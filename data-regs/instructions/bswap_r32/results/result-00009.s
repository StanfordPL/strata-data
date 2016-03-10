  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %bx, %r11                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_016_008_bx_r8b_r9b     #  2     0x4   5      OPC=callq_label     
  callq .move_032_016_ebx_r10w_r11w  #  3     0x9   5      OPC=callq_label     
  xchgb %r9b, %r8b                   #  4     0xe   3      OPC=xchgb_r8_r8     
  movl %r11d, %ebx                   #  5     0x11  3      OPC=movl_r32_r32    
  callq .move_r8b_to_byte_2_of_rbx   #  6     0x14  5      OPC=callq_label     
  callq .move_r9b_to_byte_3_of_rbx   #  7     0x19  5      OPC=callq_label     
  xchgb %bl, %bh                     #  8     0x1e  2      OPC=xchgb_rh_r8     
  retq                               #  9     0x20  1      OPC=retq            
                                                                               
.size target, .-target
