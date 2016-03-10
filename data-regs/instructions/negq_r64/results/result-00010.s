  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movzbq %bl, %rdi  #  1     0     4      OPC=movzbq_r64_r8   
  movzwl %di, %ecx  #  2     0x4   3      OPC=movzwl_r32_r16  
  subq %rcx, %rdi   #  3     0x7   3      OPC=subq_r64_r64    
  subq %rbx, %rdi   #  4     0xa   3      OPC=subq_r64_r64    
  movq %rdi, %rbx   #  5     0xd   3      OPC=movq_r64_r64    
  retq              #  6     0x10  1      OPC=retq            
                                                              
.size target, .-target
