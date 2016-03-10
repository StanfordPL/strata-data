  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ebx, %r13  #  1     0    3      OPC=movslq_r64_r32  
  adcl %r13d, %ebx   #  2     0x3  3      OPC=adcl_r32_r32    
  retq               #  3     0x6  1      OPC=retq            
                                                              
.size target, .-target
