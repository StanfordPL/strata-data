  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movsbq %al, %rbp                #  1     0     4      OPC=movsbq_r64_r8   
  movq $0xffffffffffffff80, %rax  #  2     0x4   10     OPC=movq_r64_imm64  
  movsbq %bpl, %r14               #  3     0xe   4      OPC=movsbq_r64_r8   
  xchgl %r14d, %eax               #  4     0x12  3      OPC=xchgl_r32_r32   
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
