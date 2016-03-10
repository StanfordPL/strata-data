  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm2, %xmm8  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpcklps %xmm8, %xmm2, %xmm0    #  2     0x4  5      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpcklqdq %xmm3, %xmm0, %xmm1  #  3     0x9  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
