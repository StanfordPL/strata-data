  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64    
  movq $0x1, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  adcw %ax, %bx    #  3     0xd   3      OPC=adcw_r16_r16    
  retq             #  4     0x10  1      OPC=retq            
                                                             
.size target, .-target
