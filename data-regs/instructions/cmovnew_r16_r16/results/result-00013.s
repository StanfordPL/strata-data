  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  movswl %cx, %edx                   #  1     0    3      OPC=movswl_r32_r16   
  callq .move_064_032_rdx_r12d_r13d  #  2     0x3  5      OPC=callq_label      
  cmovnzl %r12d, %ebx                #  3     0x8  4      OPC=cmovnzl_r32_r32  
  retq                               #  4     0xc  1      OPC=retq             
                                                                               
.size target, .-target
