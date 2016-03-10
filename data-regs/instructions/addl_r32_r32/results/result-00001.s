  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64     
  cmovnzw %bx, %bx  #  2     0x3  4      OPC=cmovnzw_r16_r16  
  xaddl %ecx, %ebx  #  3     0x7  3      OPC=xaddl_r32_r32    
  retq              #  4     0xa  1      OPC=retq             
                                                              
.size target, .-target
