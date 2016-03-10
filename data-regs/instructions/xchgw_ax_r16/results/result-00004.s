  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movzwl %ax, %ebp                  #  1     0     3      OPC=movzwl_r32_r16  
  callq .move_016_008_bx_r12b_r13b  #  2     0x3   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_cx  #  3     0x8   5      OPC=callq_label     
  movswl %cx, %eax                  #  4     0xd   3      OPC=movswl_r32_r16  
  movzwl %bp, %ebx                  #  5     0x10  3      OPC=movzwl_r32_r16  
  retq                              #  6     0x13  1      OPC=retq            
                                                                              
.size target, .-target
