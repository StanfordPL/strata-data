  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xchgb %cl, %cl   #  1     0    2      OPC=xchgb_r8_r8   
  subq %rcx, %rbx  #  2     0x2  3      OPC=subq_r64_r64  
  retq             #  3     0x5  1      OPC=retq          
                                                          
.size target, .-target
