  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  maxpd %xmm1, %xmm1     #  1     0    4      OPC=maxpd_xmm_xmm     
  cvtpd2dq %xmm1, %xmm1  #  2     0x4  4      OPC=cvtpd2dq_xmm_xmm  
  unpckhps %xmm1, %xmm1  #  3     0x8  3      OPC=unpckhps_xmm_xmm  
  retq                   #  4     0xb  1      OPC=retq              
                                                                    
.size target, .-target
