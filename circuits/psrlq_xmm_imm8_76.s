  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  vandnpd %xmm12, %xmm10, %xmm5        #  3     0xa   5      OPC=vandnpd_xmm_xmm_xmm  
  cvtpd2dq %xmm5, %xmm1                #  4     0xf   4      OPC=cvtpd2dq_xmm_xmm     
  retq                                 #  5     0x13  1      OPC=retq                 
                                                                                      
.size target, .-target
