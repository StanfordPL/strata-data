  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %cx, %rsi   #  1     0    4      OPC=movswq_r64_r16  
  movl %esi, %eax    #  2     0x4  2      OPC=movl_r32_r32    
  cmovpl %eax, %ebx  #  3     0x6  3      OPC=cmovpl_r32_r32  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
