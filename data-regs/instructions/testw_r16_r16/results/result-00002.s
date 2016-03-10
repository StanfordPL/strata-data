  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %cx, %rsi   #  1     0    4      OPC=movswq_r64_r16  
  movswq %bx, %r12   #  2     0x4  4      OPC=movswq_r64_r16  
  testl %r12d, %esi  #  3     0x8  3      OPC=testl_r32_r32   
  retq               #  4     0xb  1      OPC=retq            
                                                              
.size target, .-target
