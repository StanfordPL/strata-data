  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label     
  callq .move_032_016_ebx_r12w_r13w  #  2     0x5   5      OPC=callq_label     
  movzwl %r13w, %edx                 #  3     0xa   4      OPC=movzwl_r32_r16  
  xchgb %dh, %dl                     #  4     0xe   2      OPC=xchgb_r8_rh     
  xaddb %dh, %bl                     #  5     0x10  3      OPC=xaddb_r8_rh     
  xaddw %r12w, %dx                   #  6     0x13  5      OPC=xaddw_r16_r16   
  callq .move_r9b_to_byte_2_of_rbx   #  7     0x18  5      OPC=callq_label     
  callq .move_r8b_to_byte_3_of_rbx   #  8     0x1d  5      OPC=callq_label     
  xchgl %ebx, %ebx                   #  9     0x22  2      OPC=xchgl_r32_r32   
  callq .move_008_016_r12b_r13b_bx   #  10    0x24  5      OPC=callq_label     
  retq                               #  11    0x29  1      OPC=retq            
                                                                               
.size target, .-target
