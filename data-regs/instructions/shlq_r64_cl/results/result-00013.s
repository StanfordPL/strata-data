  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode           
.target:                           #        0     0      OPC=<label>      
  callq .move_064_032_rbx_r8d_r9d  #  1     0     5      OPC=callq_label  
  callq .move_032_064_r8d_r9d_rdx  #  2     0x5   5      OPC=callq_label  
  salq %cl, %rbx                   #  3     0xa   3      OPC=salq_r64_cl  
  salq %cl, %rdx                   #  4     0xd   3      OPC=salq_r64_cl  
  retq                             #  5     0x10  1      OPC=retq         
                                                                          
.size target, .-target
