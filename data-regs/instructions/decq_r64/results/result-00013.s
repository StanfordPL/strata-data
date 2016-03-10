  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  notq %rax        #  2     0x2  3      OPC=notq_r64      
  addq %rbx, %rax  #  3     0x5  3      OPC=addq_r64_r64  
  movq %rax, %rbx  #  4     0x8  3      OPC=movq_r64_r64  
  retq             #  5     0xb  1      OPC=retq          
                                                          
.size target, .-target
