  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpmovzxdq %xmm2, %xmm1       #  1     0    5      OPC=vpmovzxdq_xmm_xmm   
  vpaddd %xmm1, %xmm1, %xmm15  #  2     0x5  4      OPC=vpaddd_xmm_xmm_xmm  
  vpsubq %xmm1, %xmm15, %xmm1  #  3     0x9  4      OPC=vpsubq_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
