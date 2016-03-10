  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  xorl %ebx, %ebx         #  1     0     2      OPC=xorl_r32_r32       
  vpmovzxwq %xmm1, %ymm5  #  2     0x2   5      OPC=vpmovzxwq_ymm_xmm  
  vmovq %xmm5, %r8        #  3     0x7   5      OPC=vmovq_r64_xmm      
  movl %r8d, %eax         #  4     0xc   3      OPC=movl_r32_r32       
  cmovngq %rax, %rbx      #  5     0xf   4      OPC=cmovngq_r64_r64    
  retq                    #  6     0x13  1      OPC=retq               
                                                                       
.size target, .-target
