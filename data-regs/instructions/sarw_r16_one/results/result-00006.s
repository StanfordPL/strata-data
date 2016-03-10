  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movswl %bx, %ebx                 #  1     0     3      OPC=movswl_r32_r16  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label     
  movslq %ebx, %rdi                #  3     0x8   3      OPC=movslq_r64_r32  
  xaddl %r8d, %r9d                 #  4     0xb   4      OPC=xaddl_r32_r32   
  sarq $0x1, %r9                   #  5     0xf   3      OPC=sarq_r64_one    
  movw %r9w, %bx                   #  6     0x12  4      OPC=movw_r16_r16    
  sarq $0x1, %rdi                  #  7     0x16  3      OPC=sarq_r64_one    
  retq                             #  8     0x19  1      OPC=retq            
                                                                             
.size target, .-target
