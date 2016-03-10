  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm13  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vorpd %xmm13, %xmm13, %xmm3   #  2     0x4  5      OPC=vorpd_xmm_xmm_xmm    
  cvtpd2dq %xmm3, %xmm1         #  3     0x9  4      OPC=cvtpd2dq_xmm_xmm     
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
