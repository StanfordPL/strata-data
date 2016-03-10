  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x40, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d   #  2     0xa   5      OPC=callq_label     
  movsbq %cl, %r8                   #  3     0xf   4      OPC=movsbq_r64_r8   
  callq .move_032_064_r8d_r9d_rbx   #  4     0x13  5      OPC=callq_label     
  callq .move_byte_2_of_rbx_to_r8b  #  5     0x18  5      OPC=callq_label     
  callq .move_r8b_to_byte_2_of_rbx  #  6     0x1d  5      OPC=callq_label     
  retq                              #  7     0x22  1      OPC=retq            
                                                                              
.size target, .-target
