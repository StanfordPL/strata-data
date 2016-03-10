  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %bx, %rdx                   #  1     0     4      OPC=movswq_r64_r16  
  movswq %cx, %rbx                   #  2     0x4   4      OPC=movswq_r64_r16  
  callq .move_064_032_rdx_r12d_r13d  #  3     0x8   5      OPC=callq_label     
  callq .move_032_064_r12d_r13d_rcx  #  4     0xd   5      OPC=callq_label     
  retq                               #  5     0x12  1      OPC=retq            
                                                                               
.size target, .-target
