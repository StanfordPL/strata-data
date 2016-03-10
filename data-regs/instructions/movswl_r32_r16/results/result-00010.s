  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbl %cl, %ebx   #  1     0    3      OPC=movzbl_r32_r8   
  movswq %cx, %r13   #  2     0x3  4      OPC=movswq_r64_r16  
  xaddl %ebx, %ebx   #  3     0x7  3      OPC=xaddl_r32_r32   
  rolb $0x1, %bl     #  4     0xa  2      OPC=rolb_r8_one     
  xchgl %ebx, %r13d  #  5     0xc  3      OPC=xchgl_r32_r32   
  retq               #  6     0xf  1      OPC=retq            
                                                              
.size target, .-target
