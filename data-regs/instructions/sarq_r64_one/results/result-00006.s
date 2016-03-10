  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rbp, %rbp          #  1     0     3      OPC=xorq_r64_r64  
  rcll $0x1, %ebp          #  2     0x3   3      OPC=rcll_r32_one  
  callq .read_zf_into_rcx  #  3     0x6   5      OPC=callq_label   
  sarq %cl, %rbx           #  4     0xb   3      OPC=sarq_r64_cl   
  callq .clear_of          #  5     0xe   5      OPC=callq_label   
  retq                     #  6     0x13  1      OPC=retq          
                                                                   
.size target, .-target
