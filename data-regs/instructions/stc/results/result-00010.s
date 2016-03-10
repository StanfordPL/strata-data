  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  notw %ax         #  2     0x3  3      OPC=notw_r16      
  rolw $0x1, %ax   #  3     0x6  3      OPC=rolw_r16_one  
  retq             #  4     0x9  1      OPC=retq          
                                                          
.size target, .-target
