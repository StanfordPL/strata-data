  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %cx, %rdx  #  1     0    4      OPC=movswq_r64_r16  
  movswq %dx, %rbx  #  2     0x4  4      OPC=movswq_r64_r16  
  xaddl %ebx, %edx  #  3     0x8  3      OPC=xaddl_r32_r32   
  retq              #  4     0xb  1      OPC=retq            
                                                             
.size target, .-target
