  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label   
  xorq %rax, %rax                    #  2     0x5   3      OPC=xorq_r64_r64  
  callq .move_016_032_r12w_r13w_ebx  #  3     0x8   5      OPC=callq_label   
  xorq %rbp, %rbp                    #  4     0xd   3      OPC=xorq_r64_r64  
  adcq %rbp, %rax                    #  5     0x10  3      OPC=adcq_r64_r64  
  adcl %ebx, %ebx                    #  6     0x13  2      OPC=adcl_r32_r32  
  retq                               #  7     0x15  1      OPC=retq          
                                                                             
.size target, .-target
