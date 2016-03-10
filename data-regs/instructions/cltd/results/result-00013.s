  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  movslq %eax, %rdx                  #  1     0    3      OPC=movslq_r64_r32  
  callq .move_064_032_rdx_r12d_r13d  #  2     0x3  5      OPC=callq_label     
  roll $0x1, %r13d                   #  3     0x8  3      OPC=roll_r32_one    
  xchgl %r13d, %edx                  #  4     0xb  3      OPC=xchgl_r32_r32   
  retq                               #  5     0xe  1      OPC=retq            
                                                                              
.size target, .-target
