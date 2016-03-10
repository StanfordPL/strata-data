  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  roll $0x1, %ecx     #  1     0     2      OPC=roll_r32_one     
  popcntq %rcx, %rax  #  2     0x2   5      OPC=popcntq_r64_r64  
  movzbq %al, %r11    #  3     0x7   4      OPC=movzbq_r64_r8    
  movswq %ax, %rbx    #  4     0xb   4      OPC=movswq_r64_r16   
  rolb $0x1, %r11b    #  5     0xf   3      OPC=rolb_r8_one      
  retq                #  6     0x12  1      OPC=retq             
                                                                 
.size target, .-target
