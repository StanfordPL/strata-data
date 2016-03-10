  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpbroadcastq %xmm3, %xmm9        #  1     0    5      OPC=vpbroadcastq_xmm_xmm     
  vunpckhps %xmm3, %xmm9, %xmm0    #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm0, %xmm2, %xmm1  #  3     0x9  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
