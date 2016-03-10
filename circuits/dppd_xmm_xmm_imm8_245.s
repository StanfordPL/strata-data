  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  cvtpd2dq %xmm2, %xmm13                          #  1     0     5      OPC=cvtpd2dq_xmm_xmm     
  mulpd %xmm2, %xmm1                              #  2     0x5   4      OPC=mulpd_xmm_xmm        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label          
  vmovss %xmm13, %xmm10, %xmm2                    #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm   
  callq .move_128_64_xmm2_xmm10_xmm11             #  5     0x13  5      OPC=callq_label          
  vhsubpd %xmm11, %xmm11, %xmm13                  #  6     0x18  5      OPC=vhsubpd_xmm_xmm_xmm  
  haddpd %xmm13, %xmm1                            #  7     0x1d  5      OPC=haddpd_xmm_xmm       
  retq                                            #  8     0x22  1      OPC=retq                 
                                                                                                 
.size target, .-target
