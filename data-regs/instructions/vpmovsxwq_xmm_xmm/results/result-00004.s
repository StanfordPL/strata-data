  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpmovzxwq %xmm2, %xmm1      #  1     0     5      OPC=vpmovzxwq_xmm_xmm   
  pmovsxwd %xmm2, %xmm3       #  2     0x5   5      OPC=pmovsxwd_xmm_xmm    
  vpmovsxdq %xmm3, %xmm0      #  3     0xa   5      OPC=vpmovsxdq_xmm_xmm   
  vminpd %ymm0, %ymm1, %ymm1  #  4     0xf   4      OPC=vminpd_ymm_ymm_ymm  
  retq                        #  5     0x13  1      OPC=retq                
                                                                            
.size target, .-target
