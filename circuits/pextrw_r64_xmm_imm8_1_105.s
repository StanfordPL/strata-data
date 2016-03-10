  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm13  #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  vmovmskpd %xmm13, %rbx   #  2     0x5   5      OPC=vmovmskpd_r64_xmm  
  vmovshdup %xmm13, %xmm5  #  3     0xa   5      OPC=vmovshdup_xmm_xmm  
  movd %xmm5, %edi         #  4     0xf   4      OPC=movd_r32_xmm       
  orq %rdi, %rbx           #  5     0x13  3      OPC=orq_r64_r64        
  retq                     #  6     0x16  1      OPC=retq               
                                                                        
.size target, .-target
