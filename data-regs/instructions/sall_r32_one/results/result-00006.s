  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  cltq              #  2     0x3  2      OPC=cltq           
  cltq              #  3     0x5  2      OPC=cltq           
  xchgl %ebx, %eax  #  4     0x7  2      OPC=xchgl_r32_r32  
  xorq %rax, %rbx   #  5     0x9  3      OPC=xorq_r64_r64   
  shll $0x1, %ebx   #  6     0xc  2      OPC=shll_r32_one   
  retq              #  7     0xe  1      OPC=retq           
                                                            
.size target, .-target
