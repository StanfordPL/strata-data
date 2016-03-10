  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xorq %rax, %rax    #  1     0    3      OPC=xorq_r64_r64    
  movswq %bx, %r15   #  2     0x3  4      OPC=movswq_r64_r16  
  adcl %r15d, %r15d  #  3     0x7  3      OPC=adcl_r32_r32    
  adcw %bx, %bx      #  4     0xa  3      OPC=adcw_r16_r16    
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
