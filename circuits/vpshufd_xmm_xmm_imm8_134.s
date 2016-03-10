  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm1       #  2     0x5   5      OPC=callq_label              
  vdivss %xmm2, %xmm2, %xmm2           #  3     0xa   4      OPC=vdivss_xmm_xmm_xmm       
  callq .move_128_64_xmm1_xmm12_xmm13  #  4     0xe   5      OPC=callq_label              
  vpunpckldq %xmm13, %xmm12, %xmm3     #  5     0x13  5      OPC=vpunpckldq_xmm_xmm_xmm   
  vunpckhps %ymm3, %ymm2, %ymm12       #  6     0x18  4      OPC=vunpckhps_ymm_ymm_ymm    
  vmovss %xmm13, %xmm12, %xmm5         #  7     0x1c  5      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm5, %ymm1      #  8     0x21  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  9     0x25  1      OPC=retq                     
                                                                                          
.size target, .-target
