  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_064_032_rdx_r8d_r9d    #  2     0x5   5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx  #  3     0xa   5      OPC=callq_label    
  xchgl %r8d, %ecx                   #  4     0xf   3      OPC=xchgl_r32_r32  
  salq %cl, %rbx                     #  5     0x12  3      OPC=salq_r64_cl    
  retq                               #  6     0x15  1      OPC=retq           
                                                                              
.size target, .-target
