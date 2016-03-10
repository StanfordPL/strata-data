  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpmovzxwq %xmm0, %xmm5           #  2     0x4  5      OPC=vpmovzxwq_xmm_xmm        
  movq %xmm5, %rbx                 #  3     0x9  5      OPC=movq_r64_xmm             
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
