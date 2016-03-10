  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  xorq %rax, %rax                  #  1     0     3      OPC=xorq_r64_r64  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label   
  callq .read_pf_into_rcx          #  3     0x8   5      OPC=callq_label   
  salq %cl, %rbx                   #  4     0xd   3      OPC=salq_r64_cl   
  roll $0x1, %r9d                  #  5     0x10  3      OPC=roll_r32_one  
  retq                             #  6     0x13  1      OPC=retq          
                                                                           
.size target, .-target
