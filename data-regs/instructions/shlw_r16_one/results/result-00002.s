  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  addw %bx, %ax    #  2     0xa   3      OPC=addw_r16_r16    
  addw %ax, %bx    #  3     0xd   3      OPC=addw_r16_r16    
  retq             #  4     0x10  1      OPC=retq            
                                                             
.size target, .-target
