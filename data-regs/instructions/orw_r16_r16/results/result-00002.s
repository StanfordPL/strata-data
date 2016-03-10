  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %bx, %esp  #  1     0    3      OPC=movswl_r32_r16  
  movswq %cx, %r13  #  2     0x3  4      OPC=movswq_r64_r16  
  movswl %sp, %ebx  #  3     0x7  3      OPC=movswl_r32_r16  
  orl %r13d, %ebx   #  4     0xa  3      OPC=orl_r32_r32     
  retq              #  5     0xd  1      OPC=retq            
                                                             
.size target, .-target
