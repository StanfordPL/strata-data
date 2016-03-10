  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorl %eax, %eax     #  1     0    2      OPC=xorl_r32_r32     
  popcntq %rax, %rdx  #  2     0x2  5      OPC=popcntq_r64_r64  
  adcl %ebx, %ecx     #  3     0x7  2      OPC=adcl_r32_r32     
  xchgl %ebx, %ecx    #  4     0x9  2      OPC=xchgl_r32_r32    
  retq                #  5     0xb  1      OPC=retq             
                                                                
.size target, .-target
