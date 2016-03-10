  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminss %xmm2, %xmm3, %xmm5  #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  vpmovzxbq %xmm5, %xmm10     #  2     0x4   5      OPC=vpmovzxbq_xmm_xmm   
  vmaxps %ymm3, %ymm3, %ymm1  #  3     0x9   4      OPC=vmaxps_ymm_ymm_ymm  
  movshdup %xmm10, %xmm1      #  4     0xd   5      OPC=movshdup_xmm_xmm    
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
