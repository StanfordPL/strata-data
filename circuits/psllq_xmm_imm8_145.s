  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpcklps %xmm1, %xmm1, %xmm2         #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label            
  vpbroadcastb %xmm13, %xmm11           #  3     0x9   5      OPC=vpbroadcastb_xmm_xmm   
  cvtpd2dq %xmm11, %xmm1                #  4     0xe   5      OPC=cvtpd2dq_xmm_xmm       
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
