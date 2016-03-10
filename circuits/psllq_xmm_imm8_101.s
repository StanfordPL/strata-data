  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  sqrtpd %xmm1, %xmm8           #  1     0     5      OPC=sqrtpd_xmm_xmm       
  vandnpd %xmm1, %xmm1, %xmm13  #  2     0x5   4      OPC=vandnpd_xmm_xmm_xmm  
  vmovapd %xmm13, %xmm15        #  3     0x9   5      OPC=vmovapd_xmm_xmm      
  vpmovzxwq %xmm8, %ymm12       #  4     0xe   5      OPC=vpmovzxwq_ymm_xmm    
  pmovzxdq %xmm12, %xmm1        #  5     0x13  6      OPC=pmovzxdq_xmm_xmm     
  mulpd %xmm15, %xmm1           #  6     0x19  5      OPC=mulpd_xmm_xmm        
  cvtss2sd %xmm15, %xmm1        #  7     0x1e  5      OPC=cvtss2sd_xmm_xmm     
  retq                          #  8     0x23  1      OPC=retq                 
                                                                               
.size target, .-target
