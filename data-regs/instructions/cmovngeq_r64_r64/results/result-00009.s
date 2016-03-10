  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  cmovlq %rcx, %rbx  #  1     0    4      OPC=cmovlq_r64_r64  
  cmpl %ebx, %ebx    #  2     0x4  2      OPC=cmpl_r32_r32    
  cmovow %bx, %bx    #  3     0x6  4      OPC=cmovow_r16_r16  
  retq               #  4     0xa  1      OPC=retq            
                                                              
.size target, .-target
