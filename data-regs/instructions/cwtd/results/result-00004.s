  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movswl %ax, %ebx                  #  1     0     3      OPC=movswl_r32_r16  
  callq .move_032_016_ebx_r8w_r9w   #  2     0x3   5      OPC=callq_label     
  callq .move_byte_2_of_rbx_to_r8b  #  3     0x8   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_dx    #  4     0xd   5      OPC=callq_label     
  retq                              #  5     0x12  1      OPC=retq            
                                                                              
.size target, .-target
