  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxbq %xmm1, %ymm9      #  1     0    5      OPC=vpmovzxbq_ymm_xmm   
  vpandn %xmm9, %xmm9, %xmm5  #  2     0x5  5      OPC=vpandn_xmm_xmm_xmm  
  cvtdq2pd %xmm5, %xmm1       #  3     0xa  4      OPC=cvtdq2pd_xmm_xmm    
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
