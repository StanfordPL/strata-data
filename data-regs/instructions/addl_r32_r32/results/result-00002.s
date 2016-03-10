  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rax  #  1     0     10     OPC=movq_r64_imm64  
  xaddl %eax, %ecx                #  2     0xa   3      OPC=xaddl_r32_r32   
  xaddl %ebx, %eax                #  3     0xd   3      OPC=xaddl_r32_r32   
  xchgl %ebx, %eax                #  4     0x10  2      OPC=xchgl_r32_r32   
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
