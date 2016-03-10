  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP  Bytes  Opcode             
.target:                           #        0    0      OPC=<label>        
  movsbq %cl, %rbx                 #  1     0    4      OPC=movsbq_r64_r8  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x4  5      OPC=callq_label    
  callq .move_016_032_r8w_r9w_ebx  #  3     0x9  5      OPC=callq_label    
  retq                             #  4     0xe  1      OPC=retq           
                                                                           
.size target, .-target
