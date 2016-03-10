  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                
.target:                               #        0    0      OPC=<label>           
  cvtpd2ps %xmm1, %xmm1                #  1     0    4      OPC=cvtpd2ps_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4  5      OPC=callq_label       
  cvtpd2dq %xmm11, %xmm1               #  3     0x9  5      OPC=cvtpd2dq_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq              
                                                                                  
.size target, .-target
