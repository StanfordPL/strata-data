  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movsbq %al, %rdx                   #  1     0     4      OPC=movsbq_r64_r8   
  callq .move_032_016_edx_r12w_r13w  #  2     0x4   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_bx   #  3     0x9   5      OPC=callq_label     
  movzwl %bx, %eax                   #  4     0xe   3      OPC=movzwl_r32_r16  
  retq                               #  5     0x11  1      OPC=retq            
                                                                               
.size target, .-target
