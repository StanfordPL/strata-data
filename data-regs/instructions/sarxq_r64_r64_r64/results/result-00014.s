  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label      
  xaddb %cl, %dl                     #  2     0x5   3      OPC=xaddb_r8_r8      
  cmovnel %ecx, %ecx                 #  3     0x8   3      OPC=cmovnel_r32_r32  
  callq .move_032_064_r12d_r13d_rbx  #  4     0xb   5      OPC=callq_label      
  sarq %cl, %rbx                     #  5     0x10  3      OPC=sarq_r64_cl      
  retq                               #  6     0x13  1      OPC=retq             
                                                                                
.size target, .-target
