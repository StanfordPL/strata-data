  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rax  #  1     0    4      OPC=movswq_r64_r16  
  xaddl %eax, %ebx  #  2     0x4  3      OPC=xaddl_r32_r32   
  notq %rax         #  3     0x7  3      OPC=notq_r64        
  xaddl %ebx, %eax  #  4     0xa  3      OPC=xaddl_r32_r32   
  retq              #  5     0xd  1      OPC=retq            
                                                             
.size target, .-target
