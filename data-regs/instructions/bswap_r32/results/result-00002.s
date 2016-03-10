  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label     
  movsbw %bh, %dx                   #  2     0x5   4      OPC=movsbw_r16_rh   
  movzwq %r9w, %rbx                 #  3     0x9   4      OPC=movzwq_r64_r16  
  xchgb %bh, %bl                    #  4     0xd   2      OPC=xchgb_r8_rh     
  callq .move_r8b_to_byte_3_of_rbx  #  5     0xf   5      OPC=callq_label     
  xaddb %r8b, %dl                   #  6     0x14  4      OPC=xaddb_r8_r8     
  callq .move_r8b_to_byte_2_of_rbx  #  7     0x18  5      OPC=callq_label     
  retq                              #  8     0x1d  1      OPC=retq            
                                                                              
.size target, .-target
