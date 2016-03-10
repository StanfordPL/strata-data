  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswl %cx, %esp   #  1     0    3      OPC=movswl_r32_r16  
  xchgw %bx, %sp     #  2     0x3  3      OPC=xchgw_r16_r16   
  cmoval %esp, %ebx  #  3     0x6  3      OPC=cmoval_r32_r32  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
