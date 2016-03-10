  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode            
.target:                           #        0    0      OPC=<label>       
  sarq %cl, %rbx                   #  1     0    3      OPC=sarq_r64_cl   
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3  5      OPC=callq_label   
  sarw $0x1, %r8w                  #  3     0x8  4      OPC=sarw_r16_one  
  retq                             #  4     0xc  1      OPC=retq          
                                                                          
.size target, .-target
