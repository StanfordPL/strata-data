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
  rolb $0x1, %al                   #  3     0x8   2      OPC=rolb_r8_one   
  callq .clear_cf                  #  4     0xa   5      OPC=callq_label   
  adcw %ax, %r9w                   #  5     0xf   4      OPC=adcw_r16_r16  
  adcq %rbx, %rbx                  #  6     0x13  3      OPC=adcq_r64_r64  
  retq                             #  7     0x16  1      OPC=retq          
                                                                           
.size target, .-target
