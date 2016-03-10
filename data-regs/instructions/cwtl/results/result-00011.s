  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movswq %ax, %rbx                 #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x4   5      OPC=callq_label     
  movq $0xffffffffffffff80, %rax   #  3     0x9   10     OPC=movq_r64_imm64  
  sall $0x1, %eax                  #  4     0x13  2      OPC=sall_r32_one    
  setnbe %al                       #  5     0x15  3      OPC=setnbe_r8       
  xchgl %eax, %r8d                 #  6     0x18  3      OPC=xchgl_r32_r32   
  retq                             #  7     0x1b  1      OPC=retq            
                                                                             
.size target, .-target
