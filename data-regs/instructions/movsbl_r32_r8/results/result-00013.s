  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movsbq %cl, %rcx                  #  1     0     4      OPC=movsbq_r64_r8   
  movq $0xfffffffffffffff0, %rbx    #  2     0x4   10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r8d_r9d   #  3     0xe   5      OPC=callq_label     
  callq .move_r8b_to_byte_4_of_rbx  #  4     0x13  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx   #  5     0x18  5      OPC=callq_label     
  retq                              #  6     0x1d  1      OPC=retq            
                                                                              
.size target, .-target
