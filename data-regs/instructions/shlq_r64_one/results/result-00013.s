  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  xorl %eax, %eax    #  1     0     2      OPC=xorl_r32_r32   
  movsbq %al, %r8    #  2     0x2   4      OPC=movsbq_r64_r8  
  movzbq %r8b, %rsp  #  3     0x6   4      OPC=movzbq_r64_r8  
  rclw $0x1, %sp     #  4     0xa   3      OPC=rclw_r16_one   
  adcq %rbx, %rbx    #  5     0xd   3      OPC=adcq_r64_r64   
  retq               #  6     0x10  1      OPC=retq           
                                                              
.size target, .-target
