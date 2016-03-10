  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbq %cl, %rdx                   #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_064_032_rdx_r8d_r9d    #  2     0x4   5      OPC=callq_label    
  callq .move_016_032_r8w_r9w_edx    #  3     0x9   5      OPC=callq_label    
  callq .move_064_032_rdx_r12d_r13d  #  4     0xe   5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx  #  5     0x13  5      OPC=callq_label    
  retq                               #  6     0x18  1      OPC=retq           
                                                                              
.size target, .-target
