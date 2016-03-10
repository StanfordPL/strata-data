  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ecx, %rbx  #  1     0    3      OPC=movslq_r64_r32  
  orl %ecx, %edx     #  2     0x3  2      OPC=orl_r32_r32     
  xorl %edx, %ecx    #  3     0x5  2      OPC=xorl_r32_r32    
  xchgl %ebx, %ecx   #  4     0x7  2      OPC=xchgl_r32_r32   
  retq               #  5     0x9  1      OPC=retq            
                                                              
.size target, .-target
