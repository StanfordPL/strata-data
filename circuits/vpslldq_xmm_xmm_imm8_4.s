  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpmovzxdq %xmm2, %ymm1           #  1     0     5      OPC=vpmovzxdq_ymm_xmm        
  vunpckhps %xmm2, %xmm1, %xmm3    #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm    
  vunpcklps %xmm2, %xmm2, %xmm11   #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm    
  vxorps %xmm1, %xmm11, %xmm4      #  4     0xd   4      OPC=vxorps_xmm_xmm_xmm       
  vpunpcklqdq %xmm3, %xmm4, %xmm1  #  5     0x11  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
