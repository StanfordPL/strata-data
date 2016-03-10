  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpmovzxdq %xmm3, %xmm0           #  1     0    5      OPC=vpmovzxdq_xmm_xmm        
  movhlps %xmm0, %xmm3             #  2     0x5  3      OPC=movhlps_xmm_xmm          
  vpunpcklqdq %xmm3, %xmm2, %xmm1  #  3     0x8  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
