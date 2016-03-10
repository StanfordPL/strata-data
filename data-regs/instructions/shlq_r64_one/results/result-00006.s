  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xorl %eax, %eax    #  1     0    2      OPC=xorl_r32_r32    
  rcll $0x1, %eax    #  2     0x2  2      OPC=rcll_r32_one    
  cwtl               #  3     0x4  1      OPC=cwtl            
  movslq %eax, %rdi  #  4     0x5  3      OPC=movslq_r64_r32  
  addq %rdi, %rdi    #  5     0x8  3      OPC=addq_r64_r64    
  adcq %rbx, %rbx    #  6     0xb  3      OPC=adcq_r64_r64    
  retq               #  7     0xe  1      OPC=retq            
                                                              
.size target, .-target
