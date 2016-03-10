  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .set_of            #  2     0x3   5      OPC=callq_label   
  callq .read_of_into_rcx  #  3     0x8   5      OPC=callq_label   
  adcl %eax, %ebx          #  4     0xd   2      OPC=adcl_r32_r32  
  adcl %eax, %ecx          #  5     0xf   2      OPC=adcl_r32_r32  
  adcl %ecx, %ebx          #  6     0x11  2      OPC=adcl_r32_r32  
  retq                     #  7     0x13  1      OPC=retq          
                                                                   
.size target, .-target
