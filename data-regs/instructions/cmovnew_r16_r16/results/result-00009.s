  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  movzwq %cx, %rax  #  1     0    4      OPC=movzwq_r64_r16   
  cwtl              #  2     0x4  1      OPC=cwtl             
  cltq              #  3     0x5  2      OPC=cltq             
  cmovnzw %ax, %bx  #  4     0x7  4      OPC=cmovnzw_r16_r16  
  retq              #  5     0xb  1      OPC=retq             
                                                              
.size target, .-target
