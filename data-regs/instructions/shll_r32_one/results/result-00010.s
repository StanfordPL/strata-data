  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  adcl %ebx, %eax          #  2     0x3   2      OPC=adcl_r32_r32  
  callq .read_of_into_rbx  #  3     0x5   5      OPC=callq_label   
  adcl %eax, %ebx          #  4     0xa   2      OPC=adcl_r32_r32  
  adcl %eax, %ebx          #  5     0xc   2      OPC=adcl_r32_r32  
  callq .set_szp_for_ebx   #  6     0xe   5      OPC=callq_label   
  retq                     #  7     0x13  1      OPC=retq          
                                                                   
.size target, .-target
