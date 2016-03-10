  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  shlq $0x1, %rax  #  2     0x2  3      OPC=shlq_r64_one  
  addb %al, %al    #  3     0x5  2      OPC=addb_r8_r8    
  sbbw %cx, %bx    #  4     0x7  3      OPC=sbbw_r16_r16  
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
