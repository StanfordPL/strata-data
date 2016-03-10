  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswq %bx, %rax   #  1     0     4      OPC=movswq_r64_r16  
  movswl %bx, %ebx   #  2     0x4   3      OPC=movswl_r32_r16  
  movswq %ax, %r15   #  3     0x7   4      OPC=movswq_r64_r16  
  sarq $0x1, %r15    #  4     0xb   3      OPC=sarq_r64_one    
  xchgl %r15d, %ebx  #  5     0xe   3      OPC=xchgl_r32_r32   
  retq               #  6     0x11  1      OPC=retq            
                                                               
.size target, .-target
