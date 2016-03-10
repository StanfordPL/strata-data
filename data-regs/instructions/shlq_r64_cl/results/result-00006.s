  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .move_064_032_rbx_r8d_r9d  #  1     0     5      OPC=callq_label   
  rolw $0x1, %r8w                  #  2     0x5   4      OPC=rolw_r16_one  
  callq .move_032_064_r8d_r9d_rdx  #  3     0x9   5      OPC=callq_label   
  salq %cl, %rdx                   #  4     0xe   3      OPC=salq_r64_cl   
  salq %cl, %rbx                   #  5     0x11  3      OPC=salq_r64_cl   
  retq                             #  6     0x14  1      OPC=retq          
                                                                           
.size target, .-target
