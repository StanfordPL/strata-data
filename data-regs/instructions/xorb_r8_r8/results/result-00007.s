  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movsbq %bl, %rbp                 #  1     0     4      OPC=movsbq_r64_r8  
  movsbl %cl, %ebx                 #  2     0x4   3      OPC=movsbl_r32_r8  
  callq .move_064_032_rbx_r8d_r9d  #  3     0x7   5      OPC=callq_label    
  addw %r9w, %bx                   #  4     0xc   4      OPC=addw_r16_r16   
  xchgl %r8d, %ebp                 #  5     0x10  3      OPC=xchgl_r32_r32  
  xorl %r8d, %ebx                  #  6     0x13  3      OPC=xorl_r32_r32   
  retq                             #  7     0x16  1      OPC=retq           
                                                                            
.size target, .-target
