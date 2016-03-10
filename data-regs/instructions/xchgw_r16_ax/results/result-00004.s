  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label     
  movswq %ax, %rbx                  #  2     0x5   4      OPC=movswq_r64_r16  
  callq .move_byte_4_of_rbx_to_r9b  #  3     0x9   5      OPC=callq_label     
  callq .move_r9b_to_byte_2_of_rbx  #  4     0xe   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_cx  #  5     0x13  5      OPC=callq_label     
  movzwl %cx, %eax                  #  6     0x18  3      OPC=movzwl_r32_r16  
  retq                              #  7     0x1b  1      OPC=retq            
                                                                              
.size target, .-target
