  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpmovzxwq %xmm1, %ymm15        #  1     0     5      OPC=vpmovzxwq_ymm_xmm    
  addsubps %xmm15, %xmm15        #  2     0x5   5      OPC=addsubps_xmm_xmm     
  vsqrtss %xmm1, %xmm15, %xmm14  #  3     0xa   4      OPC=vsqrtss_xmm_xmm_xmm  
  vmovshdup %xmm14, %xmm2        #  4     0xe   5      OPC=vmovshdup_xmm_xmm    
  pmovzxbq %xmm2, %xmm1          #  5     0x13  5      OPC=pmovzxbq_xmm_xmm     
  retq                           #  6     0x18  1      OPC=retq                 
                                                                                
.size target, .-target
