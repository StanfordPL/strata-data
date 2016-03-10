  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  cmovzq %rbx, %rcx  #  1     0    4      OPC=cmovzq_r64_r64  
  movl %ecx, %ecx    #  2     0x4  2      OPC=movl_r32_r32    
  xchgl %ecx, %ebx   #  3     0x6  2      OPC=xchgl_r32_r32   
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target