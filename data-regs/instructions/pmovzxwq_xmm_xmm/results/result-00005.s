  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxwd %xmm2, %ymm5   #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  vpmovzxdq %xmm5, %ymm10  #  2     0x5  5      OPC=vpmovzxdq_ymm_xmm  
  movups %xmm10, %xmm1     #  3     0xa  4      OPC=movups_xmm_xmm     
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
