  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  negw %ax         #  1     0    3      OPC=negw_r16      
  sall $0x1, %eax  #  2     0x3  2      OPC=sall_r32_one  
  sbbw %ax, %ax    #  3     0x5  3      OPC=sbbw_r16_r16  
  cwtl             #  4     0x8  1      OPC=cwtl          
  movl %eax, %edx  #  5     0x9  2      OPC=movl_r32_r32  
  retq             #  6     0xb  1      OPC=retq          
                                                          
.size target, .-target
