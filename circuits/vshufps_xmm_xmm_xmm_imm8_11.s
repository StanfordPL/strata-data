  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vpbroadcastd %xmm3, %xmm10           #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm10, %xmm2, %xmm11      #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm2  #  3     0xa   5      OPC=callq_label            
  vunpckhps %xmm2, %xmm11, %xmm1       #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
