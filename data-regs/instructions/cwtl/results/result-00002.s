  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  movzwl %ax, %edx                   #  1     0    3      OPC=movzwl_r32_r16  
  callq .move_032_016_edx_r10w_r11w  #  2     0x3  5      OPC=callq_label     
  movswl %r10w, %eax                 #  3     0x8  4      OPC=movswl_r32_r16  
  retq                               #  4     0xc  1      OPC=retq            
                                                                              
.size target, .-target
