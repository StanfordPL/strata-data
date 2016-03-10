  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  orl %ecx, %edx    #  1     0    2      OPC=orl_r32_r32     
  xorl %edx, %ecx   #  2     0x2  2      OPC=xorl_r32_r32    
  movzwq %cx, %rbx  #  3     0x4  4      OPC=movzwq_r64_r16  
  orl %ecx, %ebx    #  4     0x8  2      OPC=orl_r32_r32     
  retq              #  5     0xa  1      OPC=retq            
                                                             
.size target, .-target
