  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vaddpd %xmm6, %xmm4, %xmm0                    #  2     0x5   4      OPC=vaddpd_xmm_xmm_xmm  
  vsubps %ymm0, %ymm0, %ymm15                   #  3     0x9   4      OPC=vsubps_ymm_ymm_ymm  
  cvtpd2ps %xmm15, %xmm1                        #  4     0xd   5      OPC=cvtpd2ps_xmm_xmm    
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
