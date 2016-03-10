  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorw %ax, %ax    #  1     0    3      OPC=xorw_r16_r16   
  xorw %bx, %ax    #  2     0x3  3      OPC=xorw_r16_r16   
  cwtl             #  3     0x6  1      OPC=cwtl           
  movq %rax, %rbx  #  4     0x7  3      OPC=movq_r64_r64   
  xaddw %bx, %bx   #  5     0xa  4      OPC=xaddw_r16_r16  
  retq             #  6     0xe  1      OPC=retq           
                                                           
.size target, .-target
