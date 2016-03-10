  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vxorps %xmm1, %xmm1, %xmm8  #  1     0    4      OPC=vxorps_xmm_xmm_xmm    
  vpbroadcastq %xmm8, %xmm15  #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm  
  cvtpd2ps %xmm15, %xmm1      #  3     0x9  5      OPC=cvtpd2ps_xmm_xmm      
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
