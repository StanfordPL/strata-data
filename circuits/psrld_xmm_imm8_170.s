  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovzxwq %xmm1, %xmm2          #  1     0     5      OPC=vpmovzxwq_xmm_xmm      
  vunpcklpd %ymm2, %ymm2, %ymm12  #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmovaps %ymm12, %ymm9           #  3     0x9   5      OPC=vmovaps_ymm_ymm        
  vmovshdup %ymm9, %ymm12         #  4     0xe   5      OPC=vmovshdup_ymm_ymm      
  sqrtpd %xmm12, %xmm1            #  5     0x13  5      OPC=sqrtpd_xmm_xmm         
  retq                            #  6     0x18  1      OPC=retq                   
                                                                                   
.size target, .-target
