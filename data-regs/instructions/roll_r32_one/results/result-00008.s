  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ebx, %rsi  #  1     0    3      OPC=movslq_r64_r32  
  rolq $0x1, %rsi    #  2     0x3  3      OPC=rolq_r64_one    
  rcll $0x1, %ebx    #  3     0x6  2      OPC=rcll_r32_one    
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
