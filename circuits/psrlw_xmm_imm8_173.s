  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxbd %xmm1, %ymm5   #  1     0     5      OPC=vpmovsxbd_ymm_xmm  
  andnpd %xmm5, %xmm5      #  2     0x5   4      OPC=andnpd_xmm_xmm     
  vpmovzxwq %xmm5, %ymm15  #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm  
  movddup %xmm15, %xmm1    #  4     0xe   5      OPC=movddup_xmm_xmm    
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
