  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  movl %ebx, %edi  #  1     0    2      OPC=movl_r32_r32  
  rcll $0x1, %edi  #  2     0x2  2      OPC=rcll_r32_one  
  salq $0x1, %rbx  #  3     0x4  3      OPC=salq_r64_one  
  movw %di, %bx    #  4     0x7  3      OPC=movw_r16_r16  
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
