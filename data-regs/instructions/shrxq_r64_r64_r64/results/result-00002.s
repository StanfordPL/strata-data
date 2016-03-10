  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx  #  2     0x5   5      OPC=callq_label    
  xaddw %cx, %dx                     #  3     0xa   4      OPC=xaddw_r16_r16  
  shrq %cl, %rbx                     #  4     0xe   3      OPC=shrq_r64_cl    
  retq                               #  5     0x11  1      OPC=retq           
                                                                              
.size target, .-target
