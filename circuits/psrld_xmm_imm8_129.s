  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vpmovzxbq %xmm1, %ymm0        #  1     0     5      OPC=vpmovzxbq_ymm_xmm     
  vmaxps %xmm0, %xmm0, %xmm7    #  2     0x5   4      OPC=vmaxps_xmm_xmm_xmm    
  vmaxsd %xmm0, %xmm7, %xmm6    #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm    
  cvtdq2pd %xmm6, %xmm1         #  4     0xd   4      OPC=cvtdq2pd_xmm_xmm      
  vmovhlps %xmm1, %xmm6, %xmm7  #  5     0x11  4      OPC=vmovhlps_xmm_xmm_xmm  
  movddup %xmm7, %xmm1          #  6     0x15  4      OPC=movddup_xmm_xmm       
  retq                          #  7     0x19  1      OPC=retq                  
                                                                                
.size target, .-target
