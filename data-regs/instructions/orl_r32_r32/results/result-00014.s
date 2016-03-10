  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode            
.target:                          #        0     0      OPC=<label>       
  movl %ecx, %eax                 #  1     0     2      OPC=movl_r32_r32  
  movl %ebx, %ebx                 #  2     0x2   2      OPC=movl_r32_r32  
  callq .move_016_008_bx_r8b_r9b  #  3     0x4   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx  #  4     0x9   5      OPC=callq_label   
  orq %rax, %rbx                  #  5     0xe   3      OPC=orq_r64_r64   
  callq .set_szp_for_ebx          #  6     0x11  5      OPC=callq_label   
  retq                            #  7     0x16  1      OPC=retq          
                                                                          
.size target, .-target
