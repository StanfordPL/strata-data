  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswl %cx, %r14d  #  1     0    4      OPC=movswl_r32_r16  
  movswq %bx, %r11   #  2     0x4  4      OPC=movswq_r64_r16  
  andl %r11d, %r14d  #  3     0x8  3      OPC=andl_r32_r32    
  retq               #  4     0xb  1      OPC=retq            
                                                              
.size target, .-target
