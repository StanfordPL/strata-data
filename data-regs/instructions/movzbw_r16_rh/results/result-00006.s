  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x2, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  movb %ah, %bl                     #  2     0xa   2      OPC=movb_r8_rh      
  callq .move_byte_5_of_rbx_to_r8b  #  3     0xc   5      OPC=callq_label     
  callq .move_byte_3_of_rbx_to_r9b  #  4     0x11  5      OPC=callq_label     
  callq .move_r8b_to_byte_6_of_rbx  #  5     0x16  5      OPC=callq_label     
  callq .move_r9b_to_byte_4_of_rbx  #  6     0x1b  5      OPC=callq_label     
  retq                              #  7     0x20  1      OPC=retq            
                                                                              
.size target, .-target
