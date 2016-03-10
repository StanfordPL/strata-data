  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxdq %xmm1, %xmm3      #  1     0    5      OPC=vpmovzxdq_xmm_xmm   
  vsubpd %xmm3, %xmm3, %xmm2  #  2     0x5  4      OPC=vsubpd_xmm_xmm_xmm  
  cvtdq2pd %xmm2, %xmm1       #  3     0x9  4      OPC=cvtdq2pd_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
