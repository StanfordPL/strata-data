  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm6   #  1     0    4      OPC=vmovshdup_xmm_xmm  
  vpmovzxwq %xmm6, %xmm10  #  2     0x4  5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm10, %rbx       #  3     0x9  5      OPC=vmovq_r64_xmm      
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
