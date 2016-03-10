  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpmovzxwd %xmm2, %ymm1             #  1     0     5      OPC=vpmovzxwd_ymm_xmm         
  vpmovzxdq %xmm1, %ymm11            #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm         
  vpmovzxwq %xmm1, %xmm8             #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm         
  vfnmadd213pd %ymm11, %ymm8, %ymm1  #  4     0xf   5      OPC=vfnmadd213pd_ymm_ymm_ymm  
  retq                               #  5     0x14  1      OPC=retq                      
                                                                                         
.size target, .-target
