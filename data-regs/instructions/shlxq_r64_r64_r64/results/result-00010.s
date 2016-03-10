  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .move_064_032_rdx_r8d_r9d  #  1     0     5      OPC=callq_label   
  movq %rcx, %rbp                  #  2     0x5   3      OPC=movq_r64_r64  
  callq .move_016_032_r8w_r9w_ecx  #  3     0x8   5      OPC=callq_label   
  salq %cl, %rbp                   #  4     0xd   3      OPC=salq_r64_cl   
  movq %rbp, %rbx                  #  5     0x10  3      OPC=movq_r64_r64  
  retq                             #  6     0x13  1      OPC=retq          
                                                                           
.size target, .-target
