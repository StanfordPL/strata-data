  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %cx, %rax   #  1     0    4      OPC=movswq_r64_r16  
  movswl %bx, %r13d  #  2     0x4  4      OPC=movswl_r32_r16  
  orl %r13d, %eax    #  3     0x8  3      OPC=orl_r32_r32     
  xchgw %bx, %ax     #  4     0xb  3      OPC=xchgw_r16_r16   
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
