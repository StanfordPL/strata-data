  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vpmovzxdq %xmm3, %ymm0               #  1     0     5      OPC=vpmovzxdq_ymm_xmm        
  vpunpckhdq %xmm0, %xmm3, %xmm14      #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vmovshdup %xmm11, %xmm1              #  4     0xe   5      OPC=vmovshdup_xmm_xmm        
  vunpcklpd %xmm11, %xmm1, %xmm6       #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpcklqdq %ymm14, %ymm6, %ymm1     #  6     0x18  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  7     0x1d  1      OPC=retq                     
                                                                                          
.size target, .-target
