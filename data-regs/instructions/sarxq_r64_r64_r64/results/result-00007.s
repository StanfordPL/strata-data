  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  movq %rcx, %rbx  #  1     0    3      OPC=movq_r64_r64  
  xchgb %cl, %dl   #  2     0x3  2      OPC=xchgb_r8_r8   
  sarq %cl, %rbx   #  3     0x5  3      OPC=sarq_r64_cl   
  retq             #  4     0x8  1      OPC=retq          
                                                          
.size target, .-target
