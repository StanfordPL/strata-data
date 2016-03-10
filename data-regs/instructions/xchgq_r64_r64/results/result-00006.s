  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label  
  callq .move_064_032_rcx_r8d_r9d    #  2     0x5   5      OPC=callq_label  
  callq .move_032_064_r8d_r9d_rbx    #  3     0xa   5      OPC=callq_label  
  callq .move_032_064_r12d_r13d_rcx  #  4     0xf   5      OPC=callq_label  
  retq                               #  5     0x14  1      OPC=retq         
                                                                            
.size target, .-target
