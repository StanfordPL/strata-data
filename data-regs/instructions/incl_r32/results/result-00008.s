  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x1, %rax     #  1     0     10     OPC=movq_r64_imm64   
  popcntq %rax, %rdi  #  2     0xa   5      OPC=popcntq_r64_r64  
  shll $0x1, %edi     #  3     0xf   3      OPC=shll_r32_one     
  xchgl %eax, %ebx    #  4     0x12  2      OPC=xchgl_r32_r32    
  adcl %eax, %ebx     #  5     0x14  2      OPC=adcl_r32_r32     
  retq                #  6     0x16  1      OPC=retq             
                                                                 
.size target, .-target
