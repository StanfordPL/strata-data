  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  xorq %rax, %rax     #  1     0     3      OPC=xorq_r64_r64     
  incw %ax            #  2     0x3   3      OPC=incw_r16         
  popcntq %rax, %r14  #  3     0x6   5      OPC=popcntq_r64_r64  
  movzwl %ax, %esi    #  4     0xb   3      OPC=movzwl_r32_r16   
  adcl %esi, %ebx     #  5     0xe   2      OPC=adcl_r32_r32     
  retq                #  6     0x10  1      OPC=retq             
                                                                 
.size target, .-target
