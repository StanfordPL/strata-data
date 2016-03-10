  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ebx, %rax  #  1     0    3      OPC=movslq_r64_r32  
  cltq               #  2     0x3  2      OPC=cltq            
  sarq $0x1, %rax    #  3     0x5  3      OPC=sarq_r64_one    
  movl %eax, %ebx    #  4     0x8  2      OPC=movl_r32_r32    
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
