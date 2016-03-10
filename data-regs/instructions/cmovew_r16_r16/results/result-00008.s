  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwl %cx, %r10d  #  1     0    4      OPC=movzwl_r32_r16  
  cmovzq %r10, %rbx  #  2     0x4  4      OPC=cmovzq_r64_r64  
  retq               #  3     0x8  1      OPC=retq            
                                                              
.size target, .-target
