  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label   
  callq .move_032_064_r12d_r13d_rcx  #  2     0x5   5      OPC=callq_label   
  salq $0x1, %rbx                    #  3     0xa   3      OPC=salq_r64_one  
  rolq $0x1, %rcx                    #  4     0xd   3      OPC=rolq_r64_one  
  retq                               #  5     0x10  1      OPC=retq          
                                                                             
.size target, .-target
