  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  subw %bx, %ax      #  1     0    3      OPC=subw_r16_r16    
  movzwl %bx, %r9d   #  2     0x3  4      OPC=movzwl_r32_r16  
  movslq %r9d, %rax  #  3     0x7  3      OPC=movslq_r64_r32  
  cmovzw %cx, %bx    #  4     0xa  4      OPC=cmovzw_r16_r16  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
