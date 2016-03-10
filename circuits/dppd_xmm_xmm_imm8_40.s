  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpmovzxwq %xmm2, %ymm10        #  1     0     5      OPC=vpmovzxwq_ymm_xmm    
  vandnpd %xmm10, %xmm10, %xmm7  #  2     0x5   5      OPC=vandnpd_xmm_xmm_xmm  
  vpmovzxwd %xmm7, %xmm13        #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm    
  movddup %xmm13, %xmm1          #  4     0xf   5      OPC=movddup_xmm_xmm      
  retq                           #  5     0x14  1      OPC=retq                 
                                                                                
.size target, .-target
