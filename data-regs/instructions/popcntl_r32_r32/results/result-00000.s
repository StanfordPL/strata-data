  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  roll $0x1, %ecx          #  1     0    2      OPC=roll_r32_one     
  callq .read_of_into_rbx  #  2     0x2  5      OPC=callq_label      
  popcntq %rcx, %r14       #  3     0x7  5      OPC=popcntq_r64_r64  
  movb %r14b, %bl          #  4     0xc  3      OPC=movb_r8_r8       
  retq                     #  5     0xf  1      OPC=retq             
                                                                     
.size target, .-target
