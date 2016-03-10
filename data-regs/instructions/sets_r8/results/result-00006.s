  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x80, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  movswq %bx, %rdx                  #  2     0xa   4      OPC=movswq_r64_r16  
  callq .move_032_016_edx_r8w_r9w   #  3     0xe   5      OPC=callq_label     
  callq .read_sf_into_rbx           #  4     0x13  5      OPC=callq_label     
  callq .move_r8b_to_byte_5_of_rbx  #  5     0x18  5      OPC=callq_label     
  retq                              #  6     0x1d  1      OPC=retq            
                                                                              
.size target, .-target
