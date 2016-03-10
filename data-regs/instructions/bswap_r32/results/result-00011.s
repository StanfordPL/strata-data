  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label     
  movswq %r9w, %rdx                 #  2     0x5   4      OPC=movswq_r64_r16  
  callq .move_016_008_dx_r12b_r13b  #  3     0x9   5      OPC=callq_label     
  callq .move_016_008_bx_r8b_r9b    #  4     0xe   5      OPC=callq_label     
  decl %ebx                         #  5     0x13  2      OPC=decl_r32        
  callq .move_016_032_r8w_r9w_ebx   #  6     0x15  5      OPC=callq_label     
  xchgb %r13b, %bl                  #  7     0x1a  3      OPC=xchgb_r8_r8     
  xchgb %dl, %bh                    #  8     0x1d  2      OPC=xchgb_rh_r8     
  callq .move_r8b_to_byte_3_of_rbx  #  9     0x1f  5      OPC=callq_label     
  retq                              #  10    0x24  1      OPC=retq            
                                                                              
.size target, .-target
