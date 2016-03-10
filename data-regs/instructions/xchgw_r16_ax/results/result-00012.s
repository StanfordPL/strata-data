  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwl %bx, %r15d  #  1     0    4      OPC=movzwl_r32_r16  
  xchgw %bx, %ax     #  2     0x4  3      OPC=xchgw_r16_r16   
  xchgw %r15w, %ax   #  3     0x7  4      OPC=xchgw_r16_r16   
  retq               #  4     0xb  1      OPC=retq            
                                                              
.size target, .-target
