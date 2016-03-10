  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  shrq %cl, %rbx                     #  1     0    3      OPC=shrq_r64_cl  
  callq .move_064_032_rbx_r12d_r13d  #  2     0x3  5      OPC=callq_label  
  callq .move_032_064_r12d_r13d_rdx  #  3     0x8  5      OPC=callq_label  
  rorb $0x1, %dl                     #  4     0xd  2      OPC=rorb_r8_one  
  retq                               #  5     0xf  1      OPC=retq         
                                                                           
.size target, .-target
