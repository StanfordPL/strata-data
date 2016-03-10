  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x2, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  xchgb %bl, %bh                    #  2     0xa   2      OPC=xchgb_rh_r8     
  callq .move_byte_3_of_rbx_to_r8b  #  3     0xc   5      OPC=callq_label     
  callq .move_r8b_to_byte_6_of_rbx  #  4     0x11  5      OPC=callq_label     
  movw %cx, %bx                     #  5     0x16  3      OPC=movw_r16_r16    
  retq                              #  6     0x19  1      OPC=retq            
                                                                              
.size target, .-target
