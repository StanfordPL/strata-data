  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movsbq %al, %r9    #  1     0    4      OPC=movsbq_r64_r8   
  movzwl %r9w, %ebp  #  2     0x4  4      OPC=movzwl_r32_r16  
  movq %rbp, %rax    #  3     0x8  3      OPC=movq_r64_r64    
  retq               #  4     0xb  1      OPC=retq            
                                                              
.size target, .-target
