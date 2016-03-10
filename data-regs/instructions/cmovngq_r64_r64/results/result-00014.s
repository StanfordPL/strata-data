  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovleq %rcx, %rbx  #  1     0    4      OPC=cmovleq_r64_r64  
  popcntl %ebx, %eax  #  2     0x4  4      OPC=popcntl_r32_r32  
  cmovpew %cx, %bx    #  3     0x8  4      OPC=cmovpew_r16_r16  
  retq                #  4     0xc  1      OPC=retq             
                                                                
.size target, .-target
