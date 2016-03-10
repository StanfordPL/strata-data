  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastw %xmm1, %xmm3   #  1     0    5      OPC=vpbroadcastw_xmm_xmm  
  vxorpd %xmm3, %xmm3, %xmm6  #  2     0x5  4      OPC=vxorpd_xmm_xmm_xmm    
  cvtpd2dq %xmm6, %xmm1       #  3     0x9  4      OPC=cvtpd2dq_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
