  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  shll $0x1, %eax     #  1     0     2      OPC=shll_r32_one     
  sbbw %ax, %ax       #  2     0x2   3      OPC=sbbw_r16_r16     
  popcntl %eax, %edx  #  3     0x5   4      OPC=popcntl_r32_r32  
  roll $0x1, %eax     #  4     0x9   2      OPC=roll_r32_one     
  cwtl                #  5     0xb   1      OPC=cwtl             
  orq %rax, %rdx      #  6     0xc   3      OPC=orq_r64_r64      
  cwtd                #  7     0xf   2      OPC=cwtd             
  retq                #  8     0x11  1      OPC=retq             
                                                                 
.size target, .-target
