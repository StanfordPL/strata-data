  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpbroadcastd %xmm2, %xmm15       #  1     0    5      OPC=vpbroadcastd_xmm_xmm     
  vunpckhps %xmm2, %xmm15, %xmm5   #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm5, %xmm2, %xmm1  #  3     0x9  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
