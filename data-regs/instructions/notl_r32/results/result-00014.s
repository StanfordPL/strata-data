  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movsbq %bl, %rdx  #  1     0     4      OPC=movsbq_r64_r8  
  notq %rdx         #  2     0x4   3      OPC=notq_r64       
  movsbl %bl, %r9d  #  3     0x7   4      OPC=movsbl_r32_r8  
  orq %rdx, %r9     #  4     0xb   3      OPC=orq_r64_r64    
  xorl %r9d, %ebx   #  5     0xe   3      OPC=xorl_r32_r32   
  retq              #  6     0x11  1      OPC=retq           
                                                             
.size target, .-target
