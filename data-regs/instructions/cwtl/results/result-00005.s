  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %ax, %r13d   #  1     0    4      OPC=movswl_r32_r16   
  popcntq %r13, %rax  #  2     0x4  5      OPC=popcntq_r64_r64  
  cltq                #  3     0x9  2      OPC=cltq             
  xchgl %eax, %r13d   #  4     0xb  3      OPC=xchgl_r32_r32    
  retq                #  5     0xe  1      OPC=retq             
                                                                
.size target, .-target
