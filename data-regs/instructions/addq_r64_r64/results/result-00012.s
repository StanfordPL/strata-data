  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label   
  callq .move_032_064_r12d_r13d_rcx  #  2     0x5   5      OPC=callq_label   
  xorq %rax, %rax                    #  3     0xa   3      OPC=xorq_r64_r64  
  adcq %rcx, %rbx                    #  4     0xd   3      OPC=adcq_r64_r64  
  retq                               #  5     0x10  1      OPC=retq          
                                                                             
.size target, .-target
