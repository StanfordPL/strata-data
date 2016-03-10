  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movl %ebx, %edx                  #  1     0     2      OPC=movl_r32_r32    
  movq $0xfffffffffffffffe, %rbx   #  2     0x2   10     OPC=movq_r64_imm64  
  callq .move_064_032_rdx_r8d_r9d  #  3     0xc   5      OPC=callq_label     
  incw %bx                         #  4     0x11  3      OPC=incw_r16        
  callq .clear_cf                  #  5     0x14  5      OPC=callq_label     
  adcl %r8d, %ebx                  #  6     0x19  3      OPC=adcl_r32_r32    
  retq                             #  7     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
