  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  cmoveq %rbx, %rcx  #  1     0    4      OPC=cmoveq_r64_r64  
  xaddl %ebx, %ecx   #  2     0x4  3      OPC=xaddl_r32_r32   
  retq               #  3     0x7  1      OPC=retq            
                                                              
.size target, .-target
