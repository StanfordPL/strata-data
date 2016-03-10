  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  xorl %eax, %eax                 #  1     0     2      OPC=xorl_r32_r32     
  movq $0xffffffffffffffff, %r11  #  2     0x2   10     OPC=movq_r64_imm64   
  popcntq %rax, %rax              #  3     0xc   5      OPC=popcntq_r64_r64  
  adcq %r11, %rbx                 #  4     0x11  3      OPC=adcq_r64_r64     
  retq                            #  5     0x14  1      OPC=retq             
                                                                             
.size target, .-target
