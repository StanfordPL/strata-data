  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovzxdq %xmm2, %ymm4          #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vminss %xmm2, %xmm1, %xmm15     #  2     0x5   4      OPC=vminss_xmm_xmm_xmm     
  vunpckhps %xmm4, %xmm2, %xmm12  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  movshdup %xmm15, %xmm1          #  4     0xd   5      OPC=movshdup_xmm_xmm       
  unpcklpd %xmm12, %xmm1          #  5     0x12  5      OPC=unpcklpd_xmm_xmm       
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
