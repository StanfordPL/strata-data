  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                
.target:                             #        0    0      OPC=<label>           
  cmovnbeq %rcx, %rbx                #  1     0    4      OPC=cmovnbeq_r64_r64  
  callq .move_064_032_rbx_r12d_r13d  #  2     0x4  5      OPC=callq_label       
  xaddb %bl, %r12b                   #  3     0x9  4      OPC=xaddb_r8_r8       
  retq                               #  4     0xd  1      OPC=retq              
                                                                                
.size target, .-target
