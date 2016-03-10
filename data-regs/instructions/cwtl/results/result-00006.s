  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movswl %ax, %r12d               #  1     0     4      OPC=movswl_r32_r16   
  movq $0xfffffffffffffffe, %rax  #  2     0x4   10     OPC=movq_r64_imm64   
  popcntq %r12, %rbx              #  3     0xe   5      OPC=popcntq_r64_r64  
  setne %al                       #  4     0x13  3      OPC=setne_r8         
  xchgl %eax, %r12d               #  5     0x16  3      OPC=xchgl_r32_r32    
  retq                            #  6     0x19  1      OPC=retq             
                                                                             
.size target, .-target
