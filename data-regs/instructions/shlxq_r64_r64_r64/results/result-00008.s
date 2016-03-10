  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_064_032_rcx_r12d_r13d  #  1     0    5      OPC=callq_label    
  xchgl %ecx, %edx                   #  2     0x5  2      OPC=xchgl_r32_r32  
  callq .move_032_064_r12d_r13d_rbx  #  3     0x7  5      OPC=callq_label    
  salq %cl, %rbx                     #  4     0xc  3      OPC=salq_r64_cl    
  retq                               #  5     0xf  1      OPC=retq           
                                                                             
.size target, .-target
