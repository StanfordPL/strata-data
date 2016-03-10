  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  movsbq %cl, %rdx                  #  2     0xa   4      OPC=movsbq_r64_r8   
  callq .move_064_032_rbx_r8d_r9d   #  3     0xe   5      OPC=callq_label     
  callq .move_r9b_to_byte_6_of_rbx  #  4     0x13  5      OPC=callq_label     
  callq .move_064_032_rdx_r8d_r9d   #  5     0x18  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx   #  6     0x1d  5      OPC=callq_label     
  callq .move_byte_3_of_rbx_to_r8b  #  7     0x22  5      OPC=callq_label     
  callq .move_r8b_to_byte_3_of_rbx  #  8     0x27  5      OPC=callq_label     
  retq                              #  9     0x2c  1      OPC=retq            
                                                                              
.size target, .-target
