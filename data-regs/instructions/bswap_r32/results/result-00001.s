  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label     
  movzwl %r8w, %ecx                 #  2     0x5   4      OPC=movzwl_r32_r16  
  xchgw %bx, %r9w                   #  3     0x9   4      OPC=xchgw_r16_r16   
  xchgb %bl, %bh                    #  4     0xd   2      OPC=xchgb_rh_r8     
  callq .move_r8b_to_byte_3_of_rbx  #  5     0xf   5      OPC=callq_label     
  callq .move_016_008_cx_r8b_r9b    #  6     0x14  5      OPC=callq_label     
  callq .move_r9b_to_byte_2_of_rbx  #  7     0x19  5      OPC=callq_label     
  xchgl %ebx, %ebx                  #  8     0x1e  2      OPC=xchgl_r32_r32   
  retq                              #  9     0x20  1      OPC=retq            
                                                                              
.size target, .-target
