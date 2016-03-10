  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movswl %bx, %r9d                  #  1     0     4      OPC=movswl_r32_r16  
  callq .move_032_016_ebx_r8w_r9w   #  2     0x4   5      OPC=callq_label     
  rolb $0x1, %bl                    #  3     0x9   2      OPC=rolb_r8_one     
  orb %bh, %bl                      #  4     0xb   2      OPC=orb_r8_rh       
  xchgb %bl, %bh                    #  5     0xd   2      OPC=xchgb_rh_r8     
  xchgl %r9d, %ebx                  #  6     0xf   3      OPC=xchgl_r32_r32   
  callq .move_r8b_to_byte_3_of_rbx  #  7     0x12  5      OPC=callq_label     
  callq .move_r9b_to_byte_2_of_rbx  #  8     0x17  5      OPC=callq_label     
  xchgb %bl, %bh                    #  9     0x1c  2      OPC=xchgb_rh_r8     
  retq                              #  10    0x1e  1      OPC=retq            
                                                                              
.size target, .-target
