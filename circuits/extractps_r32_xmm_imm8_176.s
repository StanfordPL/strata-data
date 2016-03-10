  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovdqu %xmm1, %xmm11    #  1     0    4      OPC=vmovdqu_xmm_xmm    
  vpmovzxdq %xmm11, %ymm2  #  2     0x4  5      OPC=vpmovzxdq_ymm_xmm  
  movd %xmm2, %ebx         #  3     0x9  4      OPC=movd_r32_xmm       
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
