  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_byte_3_of_ymm1_to_r8b         #  2     0x5   5      OPC=callq_label     
  movzwl %ax, %ebx                          #  3     0xa   3      OPC=movzwl_r32_r16  
  callq .move_r8b_to_byte_3_of_rbx          #  4     0xd   5      OPC=callq_label     
  callq .move_byte_2_of_ymm1_to_r8b         #  5     0x12  5      OPC=callq_label     
  callq .move_r8b_to_byte_2_of_rbx          #  6     0x17  5      OPC=callq_label     
  retq                                      #  7     0x1c  1      OPC=retq            
                                                                                      
.size target, .-target
