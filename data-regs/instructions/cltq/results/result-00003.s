  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  movslq %eax, %rbx                  #  1     0    3      OPC=movslq_r64_r32  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x3  5      OPC=callq_label     
  movslq %r10d, %rax                 #  3     0x8  3      OPC=movslq_r64_r32  
  retq                               #  4     0xb  1      OPC=retq            
                                                                              
.size target, .-target
