  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpmovzxwd %xmm1, %xmm2       #  1     0    5      OPC=vpmovzxwd_xmm_xmm   
  vpandn %ymm2, %ymm2, %ymm11  #  2     0x5  4      OPC=vpandn_ymm_ymm_ymm  
  pmovzxwq %xmm11, %xmm1       #  3     0x9  6      OPC=pmovzxwq_xmm_xmm    
  retq                         #  4     0xf  1      OPC=retq                
                                                                            
.size target, .-target
