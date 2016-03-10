  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movzwq %bx, %r9                   #  1     0     4      OPC=movzwq_r64_r16  
  callq .move_byte_3_of_rbx_to_r8b  #  2     0x4   5      OPC=callq_label     
  rolb $0x1, %bh                    #  3     0x9   2      OPC=rolb_rh_one     
  callq .move_byte_2_of_rbx_to_r9b  #  4     0xb   5      OPC=callq_label     
  xchgl %r9d, %ebx                  #  5     0x10  3      OPC=xchgl_r32_r32   
  callq .move_r9b_to_byte_3_of_rbx  #  6     0x13  5      OPC=callq_label     
  xchgb %bh, %bl                    #  7     0x18  2      OPC=xchgb_r8_rh     
  xchgb %bl, %r8b                   #  8     0x1a  3      OPC=xchgb_r8_r8     
  callq .move_r8b_to_byte_2_of_rbx  #  9     0x1d  5      OPC=callq_label     
  retq                              #  10    0x22  1      OPC=retq            
                                                                              
.size target, .-target
