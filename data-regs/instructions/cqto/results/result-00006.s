  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  addq %rax, %rax    #  1     0    3      OPC=addq_r64_r64    
  sbbl %eax, %eax    #  2     0x3  2      OPC=sbbl_r32_r32    
  movslq %eax, %rdx  #  3     0x5  3      OPC=movslq_r64_r32  
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
