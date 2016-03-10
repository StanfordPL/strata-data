  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  cvtpd2dq %xmm12, %xmm0               #  2     0x5   5      OPC=cvtpd2dq_xmm_xmm    
  vdivsd %xmm0, %xmm3, %xmm1           #  3     0xa   4      OPC=vdivsd_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
