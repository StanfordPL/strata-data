  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  vpmovzxdq %xmm1, %ymm11         #  1     0     5      OPC=vpmovzxdq_ymm_xmm    
  vmovupd %xmm11, %xmm13          #  2     0x5   5      OPC=vmovupd_xmm_xmm      
  vandnpd %ymm11, %ymm13, %ymm12  #  3     0xa   5      OPC=vandnpd_ymm_ymm_ymm  
  sqrtpd %xmm12, %xmm13           #  4     0xf   5      OPC=sqrtpd_xmm_xmm       
  movsldup %xmm13, %xmm1          #  5     0x14  5      OPC=movsldup_xmm_xmm     
  retq                            #  6     0x19  1      OPC=retq                 
                                                                                 
.size target, .-target
