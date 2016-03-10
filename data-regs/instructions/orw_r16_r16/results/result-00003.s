  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rdx  #  1     0    4      OPC=movswq_r64_r16  
  movswl %cx, %ebx  #  2     0x4  3      OPC=movswl_r32_r16  
  orl %ebx, %edx    #  3     0x7  2      OPC=orl_r32_r32     
  movzwl %dx, %ebx  #  4     0x9  3      OPC=movzwl_r32_r16  
  retq              #  5     0xc  1      OPC=retq            
                                                             
.size target, .-target
