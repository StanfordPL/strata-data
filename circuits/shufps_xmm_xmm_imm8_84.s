  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vpmovzxdq %xmm2, %ymm12          #  1     0    5      OPC=vpmovzxdq_ymm_xmm      
  vunpckhps %ymm12, %ymm12, %ymm3  #  2     0x5  5      OPC=vunpckhps_ymm_ymm_ymm  
  punpcklqdq %xmm3, %xmm1          #  3     0xa  4      OPC=punpcklqdq_xmm_xmm     
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
